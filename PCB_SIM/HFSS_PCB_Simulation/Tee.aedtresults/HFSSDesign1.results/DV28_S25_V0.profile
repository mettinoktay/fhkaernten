$begin 'Profile'
	$begin 'ProfileGroup'
		MajorVer=2023
		MinorVer=1
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '10/25/2023 11:16:28')
			I(1, 'Host', 'VPC2016')
			I(1, 'Processor', '12')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2023.1.0')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:00:21')
			I(1, 'ComEngine Memory', '249 M')
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
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 247 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=1
			Name='Initial Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '10/25/2023 11:16:28')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:02')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Mesh', 0, 0, 0, 0, 27400, 'I(2, 1, \'Type\', \'Phi\', 2, \'Tetrahedra\', 30, false)', true, true)
			ProfileItem('Post', 0, 0, 0, 0, 28084, 'I(2, 2, \'Tetrahedra\', 30, false, 2, \'Cores\', 1, false)', true, true)
			ProfileItem('Lambda Refine', 0, 0, 0, 0, 19080, 'I(2, 2, \'Tetrahedra\', 475, false, 2, \'Cores\', 1, false)', true, true)
			ProfileItem('Simulation Setup', 0, 0, 0, 0, 43584, 'I(1, 1, \'Disk\', \'0 Bytes\')', true, true)
			ProfileItem('Port Adapt', 0, 0, 0, 0, 54316, 'I(2, 2, \'Tetrahedra\', 475, false, 1, \'Disk\', \'121 KB\')', true, true)
			ProfileItem('Port Refine', 0, 0, 0, 0, 19160, 'I(2, 2, \'Tetrahedra\', 802, false, 2, \'Cores\', 1, false)', true, true)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=1
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '10/25/2023 11:16:30')
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
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 46184, 'I(2, 2, \'Tetrahedra\', 802, false, 1, \'Disk\', \'3.73 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 55004, 'I(5, 2, \'Tetrahedra\', 802, false, 2, \'Port1 Triangles\', 78, false, 2, \'Port2 Triangles\', 88, false, 2, \'Port3 Triangles\', 89, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 59676, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 6, false, 2, \'Matrix size\', 3765, false, 3, \'Matrix bandwidth\', 15.3235, \'%5.1f\', 1, \'Disk\', \'1.53 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 59676, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'670 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 253840, 'I(1, 0, \'Adaptive Pass 1\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 19396, 'I(2, 2, \'Tetrahedra\', 1044, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 46908, 'I(2, 2, \'Tetrahedra\', 1044, false, 1, \'Disk\', \'3.35 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 57012, 'I(5, 2, \'Tetrahedra\', 1044, false, 2, \'Port1 Triangles\', 78, false, 2, \'Port2 Triangles\', 88, false, 2, \'Port3 Triangles\', 89, false, 1, \'Disk\', \'8 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 62972, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 6, false, 2, \'Matrix size\', 5127, false, 3, \'Matrix bandwidth\', 16.2549, \'%5.1f\', 1, \'Disk\', \'4 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 62988, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'552 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 253852, 'I(1, 0, \'Adaptive Pass 2\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0148882, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 19944, 'I(2, 2, \'Tetrahedra\', 1347, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 47824, 'I(2, 2, \'Tetrahedra\', 1347, false, 1, \'Disk\', \'3.35 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 59612, 'I(5, 2, \'Tetrahedra\', 1347, false, 2, \'Port1 Triangles\', 78, false, 2, \'Port2 Triangles\', 88, false, 2, \'Port3 Triangles\', 89, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 67508, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 6, false, 2, \'Matrix size\', 6839, false, 3, \'Matrix bandwidth\', 16.9266, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 67508, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'1.01 MB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 253960, 'I(1, 0, \'Adaptive Pass 3\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0197141, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 20368, 'I(2, 2, \'Tetrahedra\', 1692, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 48200, 'I(2, 2, \'Tetrahedra\', 1692, false, 1, \'Disk\', \'3.73 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 61864, 'I(5, 2, \'Tetrahedra\', 1692, false, 2, \'Port1 Triangles\', 78, false, 2, \'Port2 Triangles\', 88, false, 2, \'Port3 Triangles\', 89, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 71168, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 6, false, 2, \'Matrix size\', 8883, false, 3, \'Matrix bandwidth\', 17.6923, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 71168, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'887 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 253964, 'I(1, 0, \'Adaptive Pass 4\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.00595821, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileFootnote('I(1, 0, \'Adaptive Passes converged\')', 0)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=1
			Name='Frequency Sweep'
			$begin 'StartInfo'
				I(1, 'Time', '10/25/2023 11:16:39')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:09')
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
					I(1, 'Time', '10/25/2023 11:16:40')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(1, 'Elapsed Time', '00:00:09')
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 56340, 'I(2, 2, \'Tetrahedra\', 1692, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 65572, 'I(5, 2, \'Tetrahedra\', 1692, false, 2, \'Port1 Triangles\', 78, false, 2, \'Port2 Triangles\', 88, false, 2, \'Port3 Triangles\', 89, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 75776, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 2, false, 2, \'Matrix size\', 8883, false, 3, \'Matrix bandwidth\', 17.6923, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 75776, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.98 KB\')', true, false)
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 56180, 'I(2, 2, \'Tetrahedra\', 1692, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 65680, 'I(5, 2, \'Tetrahedra\', 1692, false, 2, \'Port1 Triangles\', 78, false, 2, \'Port2 Triangles\', 88, false, 2, \'Port3 Triangles\', 89, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 76020, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 2, false, 2, \'Matrix size\', 8883, false, 3, \'Matrix bandwidth\', 17.6923, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 76020, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 56432, 'I(2, 2, \'Tetrahedra\', 1692, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 65992, 'I(5, 2, \'Tetrahedra\', 1692, false, 2, \'Port1 Triangles\', 78, false, 2, \'Port2 Triangles\', 88, false, 2, \'Port3 Triangles\', 89, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 76024, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 2, false, 2, \'Matrix size\', 8883, false, 3, \'Matrix bandwidth\', 17.6923, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 76024, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 1, Frequency: 10GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 2, Frequency: 8GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 3, Frequency: 9GHz; S Matrix Error =  72.808%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 4, Frequency: 8.5GHz; S Matrix Error = 142.496%\')', false, true)
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 56380, 'I(2, 2, \'Tetrahedra\', 1692, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 65972, 'I(5, 2, \'Tetrahedra\', 1692, false, 2, \'Port1 Triangles\', 78, false, 2, \'Port2 Triangles\', 88, false, 2, \'Port3 Triangles\', 89, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 76532, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 2, false, 2, \'Matrix size\', 8883, false, 3, \'Matrix bandwidth\', 17.6923, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 76532, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=1
					Name='Frequency - 8.75GHz'
					$begin 'StartInfo'
						I(0, 'VPC2016.technikum.local')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 56384, 'I(2, 2, \'Tetrahedra\', 1692, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 65776, 'I(5, 2, \'Tetrahedra\', 1692, false, 2, \'Port1 Triangles\', 78, false, 2, \'Port2 Triangles\', 88, false, 2, \'Port3 Triangles\', 89, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 76328, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 2, false, 2, \'Matrix size\', 8883, false, 3, \'Matrix bandwidth\', 17.6923, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 76328, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 56172, 'I(2, 2, \'Tetrahedra\', 1692, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 65724, 'I(5, 2, \'Tetrahedra\', 1692, false, 2, \'Port1 Triangles\', 78, false, 2, \'Port2 Triangles\', 88, false, 2, \'Port3 Triangles\', 89, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 76468, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 2, false, 2, \'Matrix size\', 8883, false, 3, \'Matrix bandwidth\', 17.6923, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 76468, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 5, Frequency: 9.5GHz; S Matrix Error =  18.468%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 6, Frequency: 8.75GHz; S Matrix Error =   1.569%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 7, Frequency: 8.25GHz; S Matrix Error =   0.305%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 254780, 'I(1, 0, \'Frequency Group #2; Interpolating frequency sweep\')', true, true)
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 56468, 'I(2, 2, \'Tetrahedra\', 1692, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 65708, 'I(5, 2, \'Tetrahedra\', 1692, false, 2, \'Port1 Triangles\', 78, false, 2, \'Port2 Triangles\', 88, false, 2, \'Port3 Triangles\', 89, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 76312, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 2, false, 2, \'Matrix size\', 8883, false, 3, \'Matrix bandwidth\', 17.6923, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 76312, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=1
					Name='Frequency - 8.125GHz'
					$begin 'StartInfo'
						I(0, 'VPC2016.technikum.local')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #3\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 56056, 'I(2, 2, \'Tetrahedra\', 1692, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 65436, 'I(5, 2, \'Tetrahedra\', 1692, false, 2, \'Port1 Triangles\', 78, false, 2, \'Port2 Triangles\', 88, false, 2, \'Port3 Triangles\', 89, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 76192, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 2, false, 2, \'Matrix size\', 8883, false, 3, \'Matrix bandwidth\', 17.6923, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 76192, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.98 KB\')', true, false)
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 56480, 'I(2, 2, \'Tetrahedra\', 1692, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 65996, 'I(5, 2, \'Tetrahedra\', 1692, false, 2, \'Port1 Triangles\', 78, false, 2, \'Port2 Triangles\', 88, false, 2, \'Port3 Triangles\', 89, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 76124, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 2, false, 2, \'Matrix size\', 8883, false, 3, \'Matrix bandwidth\', 17.6923, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 76124, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 8, Frequency: 9.75GHz; S Matrix Error =   0.051%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 9, Frequency: 8.125GHz; Scattering matrix quantities converged; Passive within tolerance\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 254784, 'I(1, 0, \'Frequency Group #3; Interpolating frequency sweep\')', true, true)
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
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'247 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:02\', 1, \'Total Memory\', \'53 MB\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:09\', 1, \'Average memory/process\', \'69.5 MB\', 1, \'Max memory/process\', \'69.5 MB\', 2, \'Total number of processes\', 1, false, 2, \'Total number of cores\', 6, false)', false, true)
			ProfileItem('Frequency Sweep', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:09\', 1, \'Average memory/process\', \'74.7 MB\', 1, \'Max memory/process\', \'74.7 MB\', 2, \'Total number of processes\', 3, false, 2, \'Total number of cores\', 6, false)', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 1692, false, 2, \'Max matrix size\', 8883, false, 1, \'Matrix bandwidth\', \'17.7\')', 0)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'10/25/2023 11:16:49\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
$end 'Profile'
