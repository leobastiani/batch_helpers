@ECHO OFF

mkdir test && cd test
	rem ./test/
	mkdir test1 && cd test1
		rem ./test/test1
		echo a > a.txt
		cd ..

	rem ./test/
	mkdir test2 && cd test2
		rem ./test/test2
		echo a > a.txt
		echo b > b.txt

		mkdir test1 && cd test1
		rem ./test/test2/test1
		mkdir test1 && cd test1
			rem ./test/test2/test1/test1
			echo a > a.txt
			cd ..
			rem ./test/test2/test1/
		cd ..

	rem ./test/test2/
	echo a > a.txt
	cd ..
	rem ./test/
	mkdir test3
	echo a > a.txt
	echo b > b.txt
	echo c > c.txt

cd ..
rem ./

tree test /f