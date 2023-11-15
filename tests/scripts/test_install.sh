#!/bin/sh -e


php ../../make_composer_json.php composer.json << EOF
{
    "require": {
        "ziphp/ziphp": "~5.0.0"
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

$COMPOSER_BINARY install

test -f vendor/autoload.php || (echo "vendor/autoload.php does not exist!"; exit 1)
test -f vendor/ziphp/extensions.php || (echo "vendor/ziphp/extensions.php does not exist!"; exit 1)
test -d vendor/ziphp/ziphp || (echo "vendor/ziphp/ziphp does not exist!"; exit 1)
