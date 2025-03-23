<?php

namespace Config;

use CodeIgniter\Config\AutoloadConfig;

/**
 * -------------------------------------------------------------------
 * AUTOLOADER CONFIGURATION
 * -------------------------------------------------------------------
 *
 * This file defines the namespaces and class maps so the Autoloader
 * can find the files as needed.
 */
class Autoload extends AutoloadConfig
{
    function __construct()
    {
        parent::__construct();
        $this->load_activated_plugins();

        // Manually load IssueTracker Plugin
        if (is_dir(ROOTPATH . 'plugins/IssueTracker')) {
            $this->psr4['IssueTracker'] = ROOTPATH . 'plugins/IssueTracker';
        }
    }

    // Load activated plugins dynamically
    private function load_activated_plugins()
    {
        $pluginConfigFile = APPPATH . "Config/activated_plugins.json";

        if (!file_exists($pluginConfigFile)) {
            return false;
        }

        $plugins = file_get_contents($pluginConfigFile);
        $plugins = @json_decode($plugins, true);

        if (!is_array($plugins) || empty($plugins)) {
            return false;
        }

        foreach ($plugins as $plugin) {
            $this->psr4[$plugin] = ROOTPATH . 'plugins/' . $plugin;
        }
    }

    /**
     * -------------------------------------------------------------------
     * Namespaces
     * -------------------------------------------------------------------
     */
    public $psr4 = [
        APP_NAMESPACE => APPPATH,
    ];

    /**
     * -------------------------------------------------------------------
     * Class Map
     * -------------------------------------------------------------------
     */
    public $classmap = [];

    /**
     * -------------------------------------------------------------------
     * Files
     * -------------------------------------------------------------------
     */
    public $files = [];

    /**
     * -------------------------------------------------------------------
     * Helpers
     * -------------------------------------------------------------------
     */
    public $helpers = [];
}
