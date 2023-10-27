$begin 'Profile'
	$begin 'ProfileGroup'
		MajorVer=2023
		MinorVer=1
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '10/25/2023 11:19:27')
			I(1, 'Host', 'VPC2016')
			I(1, 'Processor', '12')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2023.1.0')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:00:19')
			I(1, 'ComEngine Memory', '251 M')
		$end 'TotalInfo'
		GroupOptions=8
		TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Executing From\', \'C:\\\\Program Files\\\\AnsysEM\\\\v231\\\\Win64\\\\HFSSCOMENGINE.exe\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=1
			Name='HPC'
			$begin 'StartInfo'
				I(1, 'Type', 'Auto')
				I(1, 'MPI Vendor', 'Intel')
				I(1, 'MPI Version', '2018')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(0, ' ')
			$end 'TotalInfo'
			GroupOptions=0
			TaskDataOptions(Memory=8)
			ProfileItem('Machine', 0, 0, 0, 0, 0, 'I(5, 1, \'Name\', \'VPC2016.technikum.local\', 1, \'Memory\', \'63.7 GB\', 3, \'RAM Limit\', 50, \'%f%%\', 2, \'Cores\', 6, false, 1, \'Free Disk Space\', \'577 GB\')', false, true)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Allow off core\', \'True\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Solution Basis Order\', \'1\')', false, true)
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 248 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=1
			Name='Initial Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '10/25/2023 11:19:27')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:01')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Mesh', 0, 0, 0, 0, 27392, 'I(2, 1, \'Type\', \'Phi\', 2, \'Tetrahedra\', 30, false)', true, true)
			ProfileItem('Post', 0, 0, 0, 0, 28068, 'I(2, 2, \'Tetrahedra\', 30, false, 2, \'Cores\', 1, false)', true, true)
			ProfileItem('Lambda Refine', 0, 0, 0, 0, 19244, 'I(2, 2, \'Tetrahedra\', 441, false, 2, \'Cores\', 1, false)', true, true)
			ProfileItem('Simulation Setup', 0, 0, 0, 0, 43528, 'I(1, 1, \'Disk\', \'0 Bytes\')', true, true)
			ProfileItem('Port Adapt', 0, 0, 0, 0, 54792, 'I(2, 2, \'Tetrahedra\', 441, false, 1, \'Disk\', \'121 KB\')', true, true)
			ProfileItem('Port Refine', 0, 0, 0, 0, 19052, 'I(2, 2, \'Tetrahedra\', 753, false, 2, \'Cores\', 1, false)', true, true)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=1
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '10/25/2023 11:19:29')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:09')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Adaptive Pass 1'
				$begin 'StartInfo'
					I(1, 'Frequency', '10GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 46200, 'I(2, 2, \'Tetrahedra\', 753, false, 1, \'Disk\', \'2.97 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 55380, 'I(5, 2, \'Tetrahedra\', 753, false, 2, \'Port1 Triangles\', 84, false, 2, \'Port2 Triangles\', 86, false, 2, \'Port3 Triangles\', 88, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 59624, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 6, false, 2, \'Matrix size\', 3469, false, 3, \'Matrix bandwidth\', 14.9103, \'%5.1f\', 1, \'Disk\', \'1.53 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 59636, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'446 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 254996, 'I(1, 0, \'Adaptive Pass 1\')', true, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Adaptive Pass 2'
				$begin 'StartInfo'
					I(1, 'Frequency', '10GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 19396, 'I(2, 2, \'Tetrahedra\', 980, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 46888, 'I(2, 2, \'Tetrahedra\', 980, false, 1, \'Disk\', \'2.97 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 57132, 'I(5, 2, \'Tetrahedra\', 980, false, 2, \'Port1 Triangles\', 84, false, 2, \'Port2 Triangles\', 86, false, 2, \'Port3 Triangles\', 88, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 62824, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 6, false, 2, \'Matrix size\', 4773, false, 3, \'Matrix bandwidth\', 16.0878, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 62824, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'755 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 255148, 'I(1, 0, \'Adaptive Pass 2\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0252708, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Adaptive Pass 3'
				$begin 'StartInfo'
					I(1, 'Frequency', '10GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 19792, 'I(2, 2, \'Tetrahedra\', 1215, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 47492, 'I(2, 2, \'Tetrahedra\', 1215, false, 1, \'Disk\', \'2.97 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 58704, 'I(5, 2, \'Tetrahedra\', 1215, false, 2, \'Port1 Triangles\', 84, false, 2, \'Port2 Triangles\', 86, false, 2, \'Port3 Triangles\', 88, false, 1, \'Disk\', \'4 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 65336, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 6, false, 2, \'Matrix size\', 6087, false, 3, \'Matrix bandwidth\', 16.6591, \'%5.1f\', 1, \'Disk\', \'4 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 65336, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'931 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 255264, 'I(1, 0, \'Adaptive Pass 3\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0219272, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Adaptive Pass 4'
				$begin 'StartInfo'
					I(1, 'Frequency', '10GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 20268, 'I(2, 2, \'Tetrahedra\', 1582, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 47772, 'I(2, 2, \'Tetrahedra\', 1582, false, 1, \'Disk\', \'2.97 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 60680, 'I(5, 2, \'Tetrahedra\', 1582, false, 2, \'Port1 Triangles\', 84, false, 2, \'Port2 Triangles\', 86, false, 2, \'Port3 Triangles\', 88, false, 1, \'Disk\', \'5 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 70088, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 6, false, 2, \'Matrix size\', 8289, false, 3, \'Matrix bandwidth\', 17.6163, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 70088, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'1.19 MB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 255276, 'I(1, 0, \'Adaptive Pass 4\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.00705119, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileFootnote('I(1, 0, \'Adaptive Passes converged\')', 0)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=1
			Name='Frequency Sweep'
			$begin 'StartInfo'
				I(1, 'Time', '10/25/2023 11:19:39')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:08')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'HPC\', \'Enabled\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Solution - Sweep1'
				$begin 'StartInfo'
					I(0, 'Interpolating HFSS Frequency Sweep, Solving Distributed - up to 3 frequencies in parallel')
					I(1, 'Time', '10/25/2023 11:19:39')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(1, 'Elapsed Time', '00:00:08')
				$end 'TotalInfo'
				GroupOptions=4
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'From 8GHz to 10GHz, 41 Frequencies\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 10GHz has already been solved\')', false, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=1
					Name='Frequency - 8GHz'
					$begin 'StartInfo'
						I(0, 'VPC2016.technikum.local')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:00')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 56208, 'I(2, 2, \'Tetrahedra\', 1582, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 66164, 'I(5, 2, \'Tetrahedra\', 1582, false, 2, \'Port1 Triangles\', 84, false, 2, \'Port2 Triangles\', 86, false, 2, \'Port3 Triangles\', 88, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 74480, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 2, false, 2, \'Matrix size\', 8289, false, 3, \'Matrix bandwidth\', 17.6163, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 74480, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=1
					Name='Frequency - 9GHz'
					$begin 'StartInfo'
						I(0, 'VPC2016.technikum.local')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:00')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 56116, 'I(2, 2, \'Tetrahedra\', 1582, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 65524, 'I(5, 2, \'Tetrahedra\', 1582, false, 2, \'Port1 Triangles\', 84, false, 2, \'Port2 Triangles\', 86, false, 2, \'Port3 Triangles\', 88, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 75184, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 2, false, 2, \'Matrix size\', 8289, false, 3, \'Matrix bandwidth\', 17.6163, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 75184, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=1
					Name='Frequency - 8.5GHz'
					$begin 'StartInfo'
						I(0, 'VPC2016.technikum.local')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:00')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 56160, 'I(2, 2, \'Tetrahedra\', 1582, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 65376, 'I(5, 2, \'Tetrahedra\', 1582, false, 2, \'Port1 Triangles\', 84, false, 2, \'Port2 Triangles\', 86, false, 2, \'Port3 Triangles\', 88, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 74472, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 2, false, 2, \'Matrix size\', 8289, false, 3, \'Matrix bandwidth\', 17.6163, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 74472, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 1, Frequency: 10GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 2, Frequency: 8GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 3, Frequency: 9GHz; S Matrix Error =  96.492%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 4, Frequency: 8.5GHz; S Matrix Error = 201.704%\')', false, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=1
					Name='Frequency - 9.5GHz'
					$begin 'StartInfo'
						I(0, 'VPC2016.technikum.local')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:00')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 55828, 'I(2, 2, \'Tetrahedra\', 1582, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 65340, 'I(5, 2, \'Tetrahedra\', 1582, false, 2, \'Port1 Triangles\', 84, false, 2, \'Port2 Triangles\', 86, false, 2, \'Port3 Triangles\', 88, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 74668, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 2, false, 2, \'Matrix size\', 8289, false, 3, \'Matrix bandwidth\', 17.6163, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 74668, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=1
					Name='Frequency - 8.75GHz'
					$begin 'StartInfo'
						I(0, 'VPC2016.technikum.local')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:00')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 56040, 'I(2, 2, \'Tetrahedra\', 1582, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 65952, 'I(5, 2, \'Tetrahedra\', 1582, false, 2, \'Port1 Triangles\', 84, false, 2, \'Port2 Triangles\', 86, false, 2, \'Port3 Triangles\', 88, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 74420, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 2, false, 2, \'Matrix size\', 8289, false, 3, \'Matrix bandwidth\', 17.6163, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 74420, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=1
					Name='Frequency - 8.25GHz'
					$begin 'StartInfo'
						I(0, 'VPC2016.technikum.local')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:00')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 55940, 'I(2, 2, \'Tetrahedra\', 1582, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 65040, 'I(5, 2, \'Tetrahedra\', 1582, false, 2, \'Port1 Triangles\', 84, false, 2, \'Port2 Triangles\', 86, false, 2, \'Port3 Triangles\', 88, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 73944, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 2, false, 2, \'Matrix size\', 8289, false, 3, \'Matrix bandwidth\', 17.6163, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 73944, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 5, Frequency: 9.5GHz; S Matrix Error =  21.676%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 6, Frequency: 8.75GHz; S Matrix Error =   2.247%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 7, Frequency: 8.25GHz; S Matrix Error =   0.329%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 256088, 'I(1, 0, \'Frequency Group #2; Interpolating frequency sweep\')', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=1
					Name='Frequency - 9.75GHz'
					$begin 'StartInfo'
						I(0, 'VPC2016.technikum.local')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:00')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #3\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 55980, 'I(2, 2, \'Tetrahedra\', 1582, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 65632, 'I(5, 2, \'Tetrahedra\', 1582, false, 2, \'Port1 Triangles\', 84, false, 2, \'Port2 Triangles\', 86, false, 2, \'Port3 Triangles\', 88, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 74444, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 2, false, 2, \'Matrix size\', 8289, false, 3, \'Matrix bandwidth\', 17.6163, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 74444, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.98 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=1
					Name='Frequency - 8.125GHz'
					$begin 'StartInfo'
						I(0, 'VPC2016.technikum.local')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:00')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #3\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 56032, 'I(2, 2, \'Tetrahedra\', 1582, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 65472, 'I(5, 2, \'Tetrahedra\', 1582, false, 2, \'Port1 Triangles\', 84, false, 2, \'Port2 Triangles\', 86, false, 2, \'Port3 Triangles\', 88, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 74520, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 2, false, 2, \'Matrix size\', 8289, false, 3, \'Matrix bandwidth\', 17.6163, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 74520, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=1
					Name='Frequency - 8.375GHz'
					$begin 'StartInfo'
						I(0, 'VPC2016.technikum.local')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:00')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #3\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 56124, 'I(2, 2, \'Tetrahedra\', 1582, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 65468, 'I(5, 2, \'Tetrahedra\', 1582, false, 2, \'Port1 Triangles\', 84, false, 2, \'Port2 Triangles\', 86, false, 2, \'Port3 Triangles\', 88, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 75204, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 2, false, 2, \'Matrix size\', 8289, false, 3, \'Matrix bandwidth\', 17.6163, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 75204, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 8, Frequency: 9.75GHz; S Matrix Error =   0.068%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 9, Frequency: 8.125GHz; Scattering matrix quantities converged; Passive within tolerance\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 256172, 'I(1, 0, \'Frequency Group #3; Interpolating frequency sweep\')', true, true)
				ProfileFootnote('I(1, 0, \'Interpolating sweep converged and is passive\')', 0)
				ProfileFootnote('I(1, 0, \'HFSS: Distributed Interpolating sweep\')', 0)
			$end 'ProfileGroup'
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=1
			Name='Simulation Summary'
			$begin 'StartInfo'
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(0, ' ')
			$end 'TotalInfo'
			GroupOptions=0
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'248 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:01\', 1, \'Total Memory\', \'53.5 MB\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:09\', 1, \'Average memory/process\', \'68.4 MB\', 1, \'Max memory/process\', \'68.4 MB\', 2, \'Total number of processes\', 1, false, 2, \'Total number of cores\', 6, false)', false, true)
			ProfileItem('Frequency Sweep', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:08\', 1, \'Average memory/process\', \'73 MB\', 1, \'Max memory/process\', \'73.4 MB\', 2, \'Total number of processes\', 3, false, 2, \'Total number of cores\', 6, false)', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 1582, false, 2, \'Max matrix size\', 8289, false, 1, \'Matrix bandwidth\', \'17.6\')', 0)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'10/25/2023 11:19:47\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
$end 'Profile'
