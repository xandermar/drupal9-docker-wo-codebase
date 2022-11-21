<?php

$databases['default']['default'] = array (
  'database' => 'drupal',
  'username' => 'admin',
  'password' => 'admin',
  'prefix' => '',
  'host' => 'db',
  'port' => '3306',
  'namespace' => 'Drupal\\mysql\\Driver\\Database\\mysql',
  'driver' => 'mysql',
  'autoload' => 'core/modules/mysql/src/Driver/Database/mysql/',
);
$settings['config_sync_directory'] = '../config';