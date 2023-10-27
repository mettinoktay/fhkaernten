$begin 'Profile'
	$begin 'ProfileGroup'
		MajorVer=2023
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '10/25/2023 21:11:48')
			I(1, 'Host', 'METTINOKTAY')
			I(1, 'Processor', '12')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2023.2.0')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:01:29')
			I(1, 'ComEngine Memory', '89.7 M')
		$end 'TotalInfo'
		GroupOptions=8
		TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Executing From\', \'D:\\\\AnsysEM\\\\Ansys Student\\\\v232\\\\Win64\\\\HFSSCOMENGINE.exe\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
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
			ProfileItem('Machine', 0, 0, 0, 0, 0, 'I(5, 1, \'Name\', \'mettinoktay\', 1, \'Memory\', \'15.9 GB\', 3, \'RAM Limit\', 90, \'%f%%\', 2, \'Cores\', 4, false, 1, \'Free Disk Space\', \'125 GB\')', false, true)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Allow off core\', \'True\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Solution Basis Order\', \'1\')', false, true)
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 87.4 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Initial Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '10/25/2023 21:11:48')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:01:07')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Mesh', 0, 0, 0, 0, 27492, 'I(2, 1, \'Type\', \'Phi\', 2, \'Tetrahedra\', 30, false)', true, true)
			ProfileItem('Post', 0, 0, 0, 0, 28680, 'I(2, 2, \'Tetrahedra\', 30, false, 2, \'Cores\', 1, false)', true, true)
			ProfileItem('Lambda Refine', 0, 0, 0, 0, 19600, 'I(2, 2, \'Tetrahedra\', 475, false, 2, \'Cores\', 1, false)', true, true)
			ProfileItem('Simulation Setup', 0, 0, 0, 0, 42116, 'I(1, 1, \'Disk\', \'0 Bytes\')', true, true)
			ProfileItem('Port Adapt', 65, 0, 62, 0, 142328, 'I(2, 2, \'Tetrahedra\', 475, false, 1, \'Disk\', \'122 KB\')', true, true)
			ProfileItem('Port Refine', 0, 0, 0, 0, 19768, 'I(2, 2, \'Tetrahedra\', 813, false, 2, \'Cores\', 1, false)', true, true)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '10/25/2023 21:12:55')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:22')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
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
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 45076, 'I(2, 2, \'Tetrahedra\', 813, false, 1, \'Disk\', \'3.74 KB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Failed to solve port Port1, solving at too low frequency is a possible cause\')', false, true)
			$end 'ProfileGroup'
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Simulation Summary'
			$begin 'StartInfo'
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(0, ' ')
			$end 'TotalInfo'
			GroupOptions=0
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'87.4 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:01:07\', 1, \'Total Memory\', \'167 MB\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:22\', 1, \'Total Memory\', \'0 Bytes\')', false, true)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'10/25/2023 21:13:18\', 1, \'Status\', \'Engine Detected Error\')', 2)
	$end 'ProfileGroup'
	$begin 'ProfileGroup'
		MajorVer=2023
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '10/25/2023 21:30:20')
			I(1, 'Host', 'METTINOKTAY')
			I(1, 'Processor', '12')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2023.2.0')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:00:16')
			I(1, 'ComEngine Memory', '92.9 M')
		$end 'TotalInfo'
		GroupOptions=8
		TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Executing From\', \'D:\\\\AnsysEM\\\\Ansys Student\\\\v232\\\\Win64\\\\HFSSCOMENGINE.exe\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
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
			ProfileItem('Machine', 0, 0, 0, 0, 0, 'I(5, 1, \'Name\', \'mettinoktay\', 1, \'Memory\', \'15.9 GB\', 3, \'RAM Limit\', 90, \'%f%%\', 2, \'Cores\', 4, false, 1, \'Free Disk Space\', \'125 GB\')', false, true)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Allow off core\', \'True\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Solution Basis Order\', \'1\')', false, true)
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 87.1 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '10/25/2023 21:30:20')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:10')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
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
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 44280, 'I(2, 2, \'Tetrahedra\', 813, false, 1, \'Disk\', \'3.74 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 53820, 'I(5, 2, \'Tetrahedra\', 813, false, 2, \'Port1 Triangles\', 89, false, 2, \'Port2 Triangles\', 93, false, 2, \'Port3 Triangles\', 93, false, 1, \'Disk\', \'103 KB\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 58176, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 3819, false, 3, \'Matrix bandwidth\', 15.3176, \'%5.1f\', 1, \'Disk\', \'1.62 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 58180, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'301 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 91408, 'I(1, 0, \'Adaptive Pass 1\')', true, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 2'
				$begin 'StartInfo'
					I(1, 'Frequency', '10GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 19984, 'I(2, 2, \'Tetrahedra\', 1046, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 45740, 'I(2, 2, \'Tetrahedra\', 1046, false, 1, \'Disk\', \'3.36 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 55356, 'I(5, 2, \'Tetrahedra\', 1046, false, 2, \'Port1 Triangles\', 89, false, 2, \'Port2 Triangles\', 93, false, 2, \'Port3 Triangles\', 93, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 59940, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 5135, false, 3, \'Matrix bandwidth\', 16.2475, \'%5.1f\', 1, \'Disk\', \'4 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 59952, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'298 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 91640, 'I(1, 0, \'Adaptive Pass 2\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0146681, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 3'
				$begin 'StartInfo'
					I(1, 'Frequency', '10GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 20580, 'I(2, 2, \'Tetrahedra\', 1351, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 46524, 'I(2, 2, \'Tetrahedra\', 1351, false, 1, \'Disk\', \'3.74 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 58176, 'I(5, 2, \'Tetrahedra\', 1351, false, 2, \'Port1 Triangles\', 89, false, 2, \'Port2 Triangles\', 93, false, 2, \'Port3 Triangles\', 93, false, 1, \'Disk\', \'8 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 64524, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 6865, false, 3, \'Matrix bandwidth\', 16.9719, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 64524, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'385 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 91644, 'I(1, 0, \'Adaptive Pass 3\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0212641, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 4'
				$begin 'StartInfo'
					I(1, 'Frequency', '10GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 20732, 'I(2, 2, \'Tetrahedra\', 1657, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 46204, 'I(2, 2, \'Tetrahedra\', 1657, false, 1, \'Disk\', \'3.36 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 59412, 'I(5, 2, \'Tetrahedra\', 1657, false, 2, \'Port1 Triangles\', 89, false, 2, \'Port2 Triangles\', 93, false, 2, \'Port3 Triangles\', 93, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 67548, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 8623, false, 3, \'Matrix bandwidth\', 17.4819, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 67548, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'464 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 91700, 'I(1, 0, \'Adaptive Pass 4\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.00674434, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileFootnote('I(1, 0, \'Adaptive Passes converged\')', 0)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Frequency Sweep'
			$begin 'StartInfo'
				I(1, 'Time', '10/25/2023 21:30:30')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:06')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'HPC\', \'Enabled\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Solution - Sweep1'
				$begin 'StartInfo'
					I(0, 'Interpolating HFSS Frequency Sweep, Solving Distributed - up to 4 frequencies in parallel')
					I(1, 'Time', '10/25/2023 21:30:30')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(1, 'Elapsed Time', '00:00:06')
				$end 'TotalInfo'
				GroupOptions=4
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'From 8GHz to 10GHz, 41 Frequencies\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 10GHz has already been solved\')', false, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 8GHz'
					$begin 'StartInfo'
						I(0, 'mettinoktay')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 55824, 'I(2, 2, \'Tetrahedra\', 1657, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 63752, 'I(5, 2, \'Tetrahedra\', 1657, false, 2, \'Port1 Triangles\', 89, false, 2, \'Port2 Triangles\', 93, false, 2, \'Port3 Triangles\', 93, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 73212, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 8623, false, 3, \'Matrix bandwidth\', 17.4819, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 73224, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 9GHz'
					$begin 'StartInfo'
						I(0, 'mettinoktay')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 55328, 'I(2, 2, \'Tetrahedra\', 1657, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 63316, 'I(5, 2, \'Tetrahedra\', 1657, false, 2, \'Port1 Triangles\', 89, false, 2, \'Port2 Triangles\', 93, false, 2, \'Port3 Triangles\', 93, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 72556, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 8623, false, 3, \'Matrix bandwidth\', 17.4819, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 72568, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 8.5GHz'
					$begin 'StartInfo'
						I(0, 'mettinoktay')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 55244, 'I(2, 2, \'Tetrahedra\', 1657, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 63224, 'I(5, 2, \'Tetrahedra\', 1657, false, 2, \'Port1 Triangles\', 89, false, 2, \'Port2 Triangles\', 93, false, 2, \'Port3 Triangles\', 93, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 72820, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 8623, false, 3, \'Matrix bandwidth\', 17.4819, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 72832, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 9.5GHz'
					$begin 'StartInfo'
						I(0, 'mettinoktay')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:00')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 54792, 'I(2, 2, \'Tetrahedra\', 1657, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 63288, 'I(5, 2, \'Tetrahedra\', 1657, false, 2, \'Port1 Triangles\', 89, false, 2, \'Port2 Triangles\', 93, false, 2, \'Port3 Triangles\', 93, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 72268, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 8623, false, 3, \'Matrix bandwidth\', 17.4819, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 72280, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 1, Frequency: 10GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 2, Frequency: 8GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 3, Frequency: 9GHz; S Matrix Error =  72.648%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 4, Frequency: 8.5GHz; S Matrix Error = 142.969%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 5, Frequency: 9.5GHz; S Matrix Error =  18.507%\')', false, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 9.75GHz'
					$begin 'StartInfo'
						I(0, 'mettinoktay')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:00')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 55588, 'I(2, 2, \'Tetrahedra\', 1657, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 63500, 'I(5, 2, \'Tetrahedra\', 1657, false, 2, \'Port1 Triangles\', 89, false, 2, \'Port2 Triangles\', 93, false, 2, \'Port3 Triangles\', 93, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 73044, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 8623, false, 3, \'Matrix bandwidth\', 17.4819, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 73056, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 9.25GHz'
					$begin 'StartInfo'
						I(0, 'mettinoktay')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 55640, 'I(2, 2, \'Tetrahedra\', 1657, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 63576, 'I(5, 2, \'Tetrahedra\', 1657, false, 2, \'Port1 Triangles\', 89, false, 2, \'Port2 Triangles\', 93, false, 2, \'Port3 Triangles\', 93, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 73200, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 8623, false, 3, \'Matrix bandwidth\', 17.4819, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 73212, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 8.75GHz'
					$begin 'StartInfo'
						I(0, 'mettinoktay')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 55356, 'I(2, 2, \'Tetrahedra\', 1657, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 63260, 'I(5, 2, \'Tetrahedra\', 1657, false, 2, \'Port1 Triangles\', 89, false, 2, \'Port2 Triangles\', 93, false, 2, \'Port3 Triangles\', 93, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 72520, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 8623, false, 3, \'Matrix bandwidth\', 17.4819, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 72532, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 8.25GHz'
					$begin 'StartInfo'
						I(0, 'mettinoktay')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:00')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 55340, 'I(2, 2, \'Tetrahedra\', 1657, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 63412, 'I(5, 2, \'Tetrahedra\', 1657, false, 2, \'Port1 Triangles\', 89, false, 2, \'Port2 Triangles\', 93, false, 2, \'Port3 Triangles\', 93, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 72164, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 8623, false, 3, \'Matrix bandwidth\', 17.4819, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 72176, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 6, Frequency: 9.75GHz; S Matrix Error =   1.337%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 7, Frequency: 9.25GHz; S Matrix Error =   0.410%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 8, Frequency: 8.75GHz; S Matrix Error =   0.068%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 9, Frequency: 8.25GHz; Scattering matrix quantities converged; Passive within tolerance\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 94636, 'I(1, 0, \'Frequency Group #2; Interpolating frequency sweep\')', true, true)
				ProfileFootnote('I(1, 0, \'Interpolating sweep converged and is passive\')', 0)
				ProfileFootnote('I(1, 0, \'HFSS: Distributed Interpolating sweep\')', 0)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Solution - Sweep'
				$begin 'StartInfo'
					I(0, 'Interpolating HFSS Frequency Sweep, Solving Distributed - up to 4 frequencies in parallel')
					I(1, 'Time', '10/25/2023 21:30:36')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(1, 'Elapsed Time', '00:00:00')
				$end 'TotalInfo'
				GroupOptions=4
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'From 8GHz to 10GHz, 41 Frequencies\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 10GHz has already been solved\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 8GHz has already been solved\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 9GHz has already been solved\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 8.5GHz has already been solved\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 1, Frequency: 10GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 2, Frequency: 8GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 3, Frequency: 9GHz; S Matrix Error =  72.648%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 4, Frequency: 8.5GHz; S Matrix Error = 142.969%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 9.5GHz has already been solved\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 8.75GHz has already been solved\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 8.25GHz has already been solved\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 9.25GHz has already been solved\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 5, Frequency: 9.5GHz; S Matrix Error =  18.507%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 6, Frequency: 8.75GHz; S Matrix Error =   1.577%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 7, Frequency: 8.25GHz; S Matrix Error =   0.306%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 8, Frequency: 9.25GHz; S Matrix Error =   0.059%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 9.75GHz has already been solved\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 9, Frequency: 9.75GHz; Scattering matrix quantities converged; Passive within tolerance\')', false, true)
				ProfileFootnote('I(1, 0, \'Interpolating sweep converged and is passive\')', 0)
				ProfileFootnote('I(1, 0, \'HFSS: Distributed Interpolating sweep\')', 0)
			$end 'ProfileGroup'
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Simulation Summary'
			$begin 'StartInfo'
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(0, ' ')
			$end 'TotalInfo'
			GroupOptions=0
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'87.1 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'0 Bytes\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:10\', 1, \'Average memory/process\', \'66 MB\', 1, \'Max memory/process\', \'66 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileItem('Frequency Sweep', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:06\', 1, \'Average memory/process\', \'71 MB\', 1, \'Max memory/process\', \'71.5 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 1657, false, 2, \'Max matrix size\', 8623, false, 1, \'Matrix bandwidth\', \'17.5\')', 0)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'10/25/2023 21:30:36\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
$end 'Profile'
