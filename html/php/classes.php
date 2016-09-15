<?php
	class sample{
		
		var $name;
		var $rollno;
		
		function __construct($name,$rollno){
			$this->name = $name;
			$this->rollno = $rollno;
		}
		function display()
		{
			echo "name".$this->name."  rollno".$this->rollno;
		}
	}


   class BaseClass {
      public function test() {
         echo "BaseClass::test() called<br>";
      }
      
       public function moreTesting() {
         echo "BaseClass::moreTesting() called<br>";
      }
   }
   
   class ChildClass extends BaseClass {
      public function moreTesting() {
         echo "ChildClass::moreTesting() called<br>";
      }
   }

   class Foo {
      public static $my_static = 'foo';
      
      public function staticValue() {
         return self::$my_static;
      }
   }
	
   print Foo::$my_static . "\n";
   $foo = new Foo();
   
   print $foo->staticValue() . "\n";

   $ob1 = new BaseClass();
   $ob2 = new ChildClass();
   $ob2->moreTesting();


	$ob = new sample("kiran","12");
	$ob->display();

	$conn = new mysqli("localhost","root","root","webnotes");
	if($conn->connection_error){
		echo "connection_aborted";
		die;
	}
	$sql = "SELECT id,swords FROM stopwords";
	$result = $conn->query($sql);
	if($result->num_rows > 0 ){
		while($row = $result->fetch_assoc()){
			echo "Id : ".$row["id"]." word : ".$row["swords"]."<br>";
		}
	}

?>