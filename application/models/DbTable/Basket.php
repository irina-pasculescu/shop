<?php

class Application_Model_DbTable_Basket extends Zend_Db_Table_Abstract
{

    protected $_name = 'basket';

    /**
     * @param $id
     *
     * @return array
     * @throws Exception
     */
    public function getFromBasket($id)
    {
        $id  = (int)$id;
        $row = $this->fetchRow('id = ' . $id);

        if (!$row) {
            throw new Exception("Could not find row $id");
        }

        return $row->toArray();
    }

    /**
     * @param $sessionId
     * @param $bookId
     * @param $added
     */
    public function addInBasket($sessionId, $bookId, $added)
    {
        $data = array(
            'sessionId' => $sessionId,
            'bookId'    => $bookId,
            'added'     => $added,
        );

        $this->insert($data);
    }


    /**
     * @param $id
     */
    public function deleteFromBasket($id)
    {
        $this->delete('id =' . (int)$id);
    }
}

