<?php

  class HelloWorldController extends BaseController{

    public static function index(){
      // make-metodi renderöi app/views-kansiossa sijaitsevia tiedostoja
   	  echo 'Tämä on etusivu!';
    }

    public static function sandbox(){
      // Testaa koodiasi täällä
        View::make('helloworld.html');
    }
      
    public static function kirjaudu(){
        View::make('Suunnitelmat/kirjautuminen.html');
    }
  }
