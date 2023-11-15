#!/bin/sh -e


php ../../make_composer_json.php composer.json << EOF
{

    "require": {
        "yiisoft/yii2": "^2.0",
        "cebe/markdown": "~1.0.0"
    },
    "config": {
        "sort-packages": true,
        "allow-plugins": {
            "yiisoft/yii2-composer": true
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
        "yiisoft/yii2": "^2.0",
        "cebe/markdown": "~1.1"
    },
    "config": {
        "sort-packages": true,
        "allow-plugins": {
            "yiisoft/yii2-composer": true
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
