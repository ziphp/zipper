#!/bin/sh -e


php ../../make_composer_json.php composer.json << EOF
{

    "require": {
        "ziphp/ziphp": "^5.0",
        "cebe/markdown": "~1.0.0"
    },
    "config": {
        "sort-packages": true,
        "allow-plugins": {
            "ziphp/zipper": true
        }
    },
    "repositories": [
        {
            "type": "composer",
            "url": "https://asset-packagist.org"
        }
    ]
}
EOF

$COMPOSER_BINARY update

php ../../make_composer_json.php composer.json << EOF
{

    "require": {
        "ziphp/ziphp": "^5.0",
        "cebe/markdown": "~1.1"
    },
    "config": {
        "sort-packages": true,
        "allow-plugins": {
            "ziphp/zipper": true
        }
    },
    "repositories": [
        {
            "type": "composer",
            "url": "https://asset-packagist.org"
        }
    ]
}
EOF

$COMPOSER_BINARY update
