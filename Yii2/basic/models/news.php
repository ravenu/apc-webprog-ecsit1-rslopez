<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "news".
 *
 * @property integer $id
 * @property string $title
 * @property string $slug
 * @property string $text
 * @property string $fullName
 * @property string $nickName
 * @property string $email
 * @property string $address
 * @property string $gender
 * @property string $cellphoneNumber
 * @property string $comments
 */
class News extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'news';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title', 'slug', 'text', 'fullName', 'nickName', 'email', 'address', 'gender', 'cellphoneNumber', 'comments'], 'required'],
            [['text'], 'string'],
            [['cellphoneNumber'], 'integer'],
            [['title', 'slug'], 'string', 'max' => 128],
            [['fullName', 'nickName', 'email', 'address', 'gender', 'comments'], 'string', 'max' => 99],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'slug' => 'Slug',
            'text' => 'Text',
            'fullName' => 'Full Name',
            'nickName' => 'Nick Name',
            'email' => 'Email',
            'address' => 'Address',
            'gender' => 'Gender',
            'cellphoneNumber' => 'Cellphone Number',
            'comments' => 'Comments',
        ];
    }
}
