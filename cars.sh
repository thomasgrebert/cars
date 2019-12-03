#! /bin/bash
#cars.sh
#Thomas Grebert
i=0
while [ $i -ne 3 ]
do
	echo "1) Enter a new car"
	echo "2) Display the list of cars"
	echo "3) Quit and Exit the Program"
	read i

	case "$i" in
		"1")
			echo "Year"
			read year
			echo "Make"
			read make
			echo "Model"
			read model
			newCar="$year:$make:$model"
			echo "$newCar" >> My_old_cars
			;;
		"2")
			echo "Displaying cars"
			sort My_old_cars
			;;
		"3")
			echo "Goodbye"
			;;
		"*")
			echo "Enter 1, 2, or 3"
			;;
	esac
done
