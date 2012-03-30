<?php
class Bootstrap extends Zend_Application_Bootstrap_Bootstrap
{
/**
     * Init Zend autoloading for models
     * We store child classes of Zend_Db_Table in their own namespace for
     * future portability
     */
    protected function _initAutoload() {
       // echo "hai.....123";exit;
        // Build the resource autoloader
        $resourceLoader = new Zend_Loader_Autoloader_Resource(
                        array(
                            'basePath' => APPLICATION_PATH."/../library", // Base directory we keep models in
                            'namespace' => 'Hai', // Default Namespace
                            'resourceTypes' => array(
                                'syam' => array(
                                    'path' => 'Syam', // Zend_Db child classes
                                    'namespace' => 'Syam111',
                                ),

                            ),
                        )
        );
    }

}

