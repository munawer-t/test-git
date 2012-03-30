<?php

//require_once dirname(__FILE__) . DIRECTORY_SEPARATOR . 'CheckController.php';

class FlickerController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
      //  echo "Its here yaar on init"."<br>";
         $client    =   new Zend_Http_Client('https://graph.facebook.com');
         $client->setParameterPost('access_token','AAAEZCZC65gwUcBAMIg5CStu1e3f7SI5cuiXTzRcG40ZB7pI45Ug8EaX3nxC4erzZAMlXzy2yPUjzBZCyDU93ncqCPhUrWN4kZD');
         $client->setParameterPost('batch',$batch);
         try{
            $response   = $client->request(Zend_Http_Client::POST);
            $res        = $response->getBody();
         }  catch (Zend_Exception $e){echo $e->getMessage();}

    }
    /* It can run on first time before action in this controller */
    public function predispatch()
    {
      //  echo "Its here yaar pre"."<br>";
    }

    public function indexAction()
    {
     try {
        $db = Zend_Db::factory('Pdo_Mysql', array(
    'host'     => 'localhost',
    'username' => 'root',
    'password' => 'xminds',
    'dbname'   => 'test_123'
));
        $db->getConnection();
    } catch (Zend_Db_Adapter_Exception $e) {
        // perhaps a failed login credential, or perhaps the RDBMS is not running
        echo "error1";exit;
    } catch (Zend_Exception $e) {
        // perhaps factory() failed to load the specified Adapter class
        echo "error2";exit;
    }
        // echo "Its here yaar on index..."."<br>";
        // action body
       // $this->_helper->redirector('user/index');
       // $this->_helper->redirector('add');

       // $flickr = new Zend_Service_Flickr('fe3b6318369f68af112e600c209f21ee');

       // $results = $flickr->tagSearch("php");
       // $this->view->result=$results;

       /* foreach ($results as $result)
        {
            echo $result->title . '<br />';
        }*/

    }
     public function testfbAction()
    {
       //echo "here";exit;

    }

    public function rssfeedAction()
    {
        $channel = new Zend_Feed_Rss('http://feeds.bbci.co.uk/news/health/rss.xml');
      // print_r($channel);
     // echo $channel->category['domain'];
        //echo "sdfsfsfsd----";
        //foreach ($channel as $item) {
    //echo $item->description ;
     //echo "<br>";
    //}
        echo APPLICATION_PATH."<br>";
      //  exit;
    }
    /* It can run on after every action in this controller */
    public function postdispatch()
    {
       // echo "Its here yaar on post"."<br>";exit;
    }

}

