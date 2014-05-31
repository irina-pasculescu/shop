<?php
/**
 * Class IndexController
 */
class IndexController extends Zend_Controller_Action
{

    public function indexAction()
    {
        Zend_Session::start();

        $books      = new Application_Model_DbTable_Books();
        $books      = $books->fetchAll();
        $userBasket = array();

        $basket = new Application_Model_DbTable_Basket();
        if ($books->count()) {
            foreach ($books as $book) {

                // basket is per user if looging is needed [and should be a view, index or a partitionate table"]
                $bookInBasket          = $basket->fetchAll($basket->select()->where('bookId = ?', $book->id));
                $userBasket[$book->id] = count($bookInBasket);
            }
        }

        $this->view->books         = $books;
        $this->view->booksInBasket = $userBasket;
    }

    public function addAction()
    {
        Zend_Session::start();

        $sessionId = Zend_Session::getId();
        $added     = time();
        $bookId    = $this->_getParam('id');

        if ((int)$bookId) {
            try {
                $books = new Application_Model_DbTable_Basket();
                $books->addInBasket($sessionId, $bookId, $added);

            } catch (Exception $error) {

                // do some logging, handle this
            }
        }

        $this->_helper->redirector('index');
    }

    public function deleteAction()
    {
        $id = $this->_getParam('id');

        if ((int)$id) {
            $books = new Application_Model_DbTable_Basket();
            $books->deleteFromBasket($id);
        }

        $this->_helper->redirector('basket');

    }

    public function viewAction()
    {
        $id = $this->_getParam('id');

        if ((int)$id) {
            $books            = new Application_Model_DbTable_Books();
            $this->view->book = $books->getBook($id);
        }
    }

    public function basketAction()
    {
        Zend_Session::start();
        $sessionId = Zend_Session::getId();

        $db     = Zend_Db_Table::getDefaultAdapter();
        $select = new Zend_Db_Select($db);

        $select->from('books', array('title', 'author', 'details'))
            ->join(
                array('b' => 'basket'),
                'books.id = b.bookId',
                array('id as basketId', 'bookId', 'added', 'sessionId')
            )
            ->where("b.sessionId='" . $sessionId . "'");

        $result             = $select->query();
        $basket = $result->fetchAll();


        if(!empty($basket)){

            foreach($basket as $key => $b){
                $date = new Zend_Date($basket[$key]['added']);
                $basket[$key]['added']= $date->get('YYYY-MM-dd HH:mm:ss');
            }
        }

        $this->view->basket = $basket;
    }

}













