$begin 'Profile'
	$begin 'ProfileGroup'
		MajorVer=2023
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '10/25/2023 21:15:13')
			I(1, 'Host', 'METTINOKTAY')
			I(1, 'Processor', '12')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2023.2.0')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:01:35')
			I(1, 'ComEngine Memory', '90 M')
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
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 87.9 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Initial Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '10/25/2023 21:15:13')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:01:12')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Mesh', 0, 0, 0, 0, 27488, 'I(2, 1, \'Type\', \'Phi\', 2, \'Tetrahedra\', 30, false)', true, true)
			ProfileItem('Post', 0, 0, 0, 0, 28692, 'I(2, 2, \'Tetrahedra\', 30, false, 2, \'Cores\', 1, false)', true, true)
			ProfileItem('Lambda Refine', 0, 0, 0, 0, 19612, 'I(2, 2, \'Tetrahedra\', 441, false, 2, \'Cores\', 1, false)', true, true)
			ProfileItem('Simulation Setup', 0, 0, 0, 0, 42224, 'I(1, 1, \'Disk\', \'0 Bytes\')', true, true)
			ProfileItem('Port Adapt', 71, 0, 69, 0, 156168, 'I(2, 2, \'Tetrahedra\', 441, false, 1, \'Disk\', \'122 KB\')', true, true)
			ProfileItem('Port Refine', 0, 0, 0, 0, 19676, 'I(2, 2, \'Tetrahedra\', 777, false, 2, \'Cores\', 1, false)', true, true)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '10/25/2023 21:16:25')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:23')
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
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 44856, 'I(2, 2, \'Tetrahedra\', 777, false, 1, \'Disk\', \'2.98 KB\')', true, true)
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
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'87.9 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:01:12\', 1, \'Total Memory\', \'180 MB\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:23\', 1, \'Total Memory\', \'0 Bytes\')', false, true)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'10/25/2023 21:16:49\', 1, \'Status\', \'Engine Detected Error\')', 2)
	$end 'ProfileGroup'
	$begin 'ProfileGroup'
		MajorVer=2023
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '10/25/2023 21:27:41')
			I(1, 'Host', 'METTINOKTAY')
			I(1, 'Processor', '12')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2023.2.0')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:00:23')
			I(1, 'ComEngine Memory', '89 M')
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
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 87.2 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '10/25/2023 21:27:41')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:23')
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
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 44784, 'I(2, 2, \'Tetrahedra\', 777, false, 1, \'Disk\', \'2.98 KB\')', true, true)
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
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'87.2 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'0 Bytes\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:23\', 1, \'Total Memory\', \'0 Bytes\')', false, true)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'10/25/2023 21:28:05\', 1, \'Status\', \'Engine Detected Error\')', 2)
	$end 'ProfileGroup'
	$begin 'ProfileGroup'
		MajorVer=2023
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '10/25/2023 21:28:24')
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
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 86.9 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '10/25/2023 21:28:24')
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
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 44880, 'I(2, 2, \'Tetrahedra\', 777, false, 1, \'Disk\', \'2.98 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 52536, 'I(5, 2, \'Tetrahedra\', 777, false, 2, \'Port1 Triangles\', 96, false, 2, \'Port2 Triangles\', 97, false, 2, \'Port3 Triangles\', 84, false, 1, \'Disk\', \'103 KB\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 56560, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 3593, false, 3, \'Matrix bandwidth\', 14.9708, \'%5.1f\', 1, \'Disk\', \'1.62 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 56568, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'99.8 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 91468, 'I(1, 0, \'Adaptive Pass 1\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 19992, 'I(2, 2, \'Tetrahedra\', 999, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 45256, 'I(2, 2, \'Tetrahedra\', 999, false, 1, \'Disk\', \'3.36 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 55036, 'I(5, 2, \'Tetrahedra\', 999, false, 2, \'Port1 Triangles\', 96, false, 2, \'Port2 Triangles\', 97, false, 2, \'Port3 Triangles\', 84, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 60300, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 4879, false, 3, \'Matrix bandwidth\', 16.1612, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 60300, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'43.1 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 91716, 'I(1, 0, \'Adaptive Pass 2\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0274186, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 20448, 'I(2, 2, \'Tetrahedra\', 1246, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 46228, 'I(2, 2, \'Tetrahedra\', 1246, false, 1, \'Disk\', \'3.74 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 57156, 'I(5, 2, \'Tetrahedra\', 1246, false, 2, \'Port1 Triangles\', 96, false, 2, \'Port2 Triangles\', 97, false, 2, \'Port3 Triangles\', 84, false, 1, \'Disk\', \'7 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 63824, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 6283, false, 3, \'Matrix bandwidth\', 16.8121, \'%5.1f\', 1, \'Disk\', \'4 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 63824, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'49.7 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 91784, 'I(1, 0, \'Adaptive Pass 3\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0219313, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 20628, 'I(2, 2, \'Tetrahedra\', 1448, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 46280, 'I(2, 2, \'Tetrahedra\', 1448, false, 1, \'Disk\', \'2.98 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 59128, 'I(5, 2, \'Tetrahedra\', 1448, false, 2, \'Port1 Triangles\', 96, false, 2, \'Port2 Triangles\', 97, false, 2, \'Port3 Triangles\', 84, false, 1, \'Disk\', \'9 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 65748, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 7467, false, 3, \'Matrix bandwidth\', 17.2454, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 65748, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'48 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 91824, 'I(1, 0, \'Adaptive Pass 4\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.00742361, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileFootnote('I(1, 0, \'Adaptive Passes converged\')', 0)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Frequency Sweep'
			$begin 'StartInfo'
				I(1, 'Time', '10/25/2023 21:28:34')
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
					I(1, 'Time', '10/25/2023 21:28:34')
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 55496, 'I(2, 2, \'Tetrahedra\', 1448, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 63408, 'I(5, 2, \'Tetrahedra\', 1448, false, 2, \'Port1 Triangles\', 96, false, 2, \'Port2 Triangles\', 97, false, 2, \'Port3 Triangles\', 84, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 70652, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 7467, false, 3, \'Matrix bandwidth\', 17.2454, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 70664, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 55268, 'I(2, 2, \'Tetrahedra\', 1448, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 63408, 'I(5, 2, \'Tetrahedra\', 1448, false, 2, \'Port1 Triangles\', 96, false, 2, \'Port2 Triangles\', 97, false, 2, \'Port3 Triangles\', 84, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 69772, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 7467, false, 3, \'Matrix bandwidth\', 17.2454, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 69772, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 54932, 'I(2, 2, \'Tetrahedra\', 1448, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 62820, 'I(5, 2, \'Tetrahedra\', 1448, false, 2, \'Port1 Triangles\', 96, false, 2, \'Port2 Triangles\', 97, false, 2, \'Port3 Triangles\', 84, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 69552, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 7467, false, 3, \'Matrix bandwidth\', 17.2454, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 69552, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 55140, 'I(2, 2, \'Tetrahedra\', 1448, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 63232, 'I(5, 2, \'Tetrahedra\', 1448, false, 2, \'Port1 Triangles\', 96, false, 2, \'Port2 Triangles\', 97, false, 2, \'Port3 Triangles\', 84, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 70460, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 7467, false, 3, \'Matrix bandwidth\', 17.2454, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 70472, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 1, Frequency: 10GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 2, Frequency: 8GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 3, Frequency: 9GHz; S Matrix Error =  96.587%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 4, Frequency: 8.5GHz; S Matrix Error = 201.577%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 5, Frequency: 9.5GHz; S Matrix Error =  21.635%\')', false, true)
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 55448, 'I(2, 2, \'Tetrahedra\', 1448, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 63864, 'I(5, 2, \'Tetrahedra\', 1448, false, 2, \'Port1 Triangles\', 96, false, 2, \'Port2 Triangles\', 97, false, 2, \'Port3 Triangles\', 84, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 70612, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 7467, false, 3, \'Matrix bandwidth\', 17.2454, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 70624, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.98 KB\')', true, false)
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 55292, 'I(2, 2, \'Tetrahedra\', 1448, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 63188, 'I(5, 2, \'Tetrahedra\', 1448, false, 2, \'Port1 Triangles\', 96, false, 2, \'Port2 Triangles\', 97, false, 2, \'Port3 Triangles\', 84, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 69660, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 7467, false, 3, \'Matrix bandwidth\', 17.2454, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 69660, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 55216, 'I(2, 2, \'Tetrahedra\', 1448, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 63132, 'I(5, 2, \'Tetrahedra\', 1448, false, 2, \'Port1 Triangles\', 96, false, 2, \'Port2 Triangles\', 97, false, 2, \'Port3 Triangles\', 84, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 70220, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 7467, false, 3, \'Matrix bandwidth\', 17.2454, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 70232, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 54860, 'I(2, 2, \'Tetrahedra\', 1448, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 62592, 'I(5, 2, \'Tetrahedra\', 1448, false, 2, \'Port1 Triangles\', 96, false, 2, \'Port2 Triangles\', 97, false, 2, \'Port3 Triangles\', 84, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 69984, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 7467, false, 3, \'Matrix bandwidth\', 17.2454, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 69996, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'4.97 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 6, Frequency: 9.75GHz; S Matrix Error =   1.927%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 7, Frequency: 9.25GHz; S Matrix Error =   0.461%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 8, Frequency: 8.75GHz; S Matrix Error =   0.087%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 9, Frequency: 8.25GHz; Scattering matrix quantities converged; Passive within tolerance\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 94716, 'I(1, 0, \'Frequency Group #2; Interpolating frequency sweep\')', true, true)
				ProfileFootnote('I(1, 0, \'Interpolating sweep converged and is passive\')', 0)
				ProfileFootnote('I(1, 0, \'HFSS: Distributed Interpolating sweep\')', 0)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Solution - Sweep'
				$begin 'StartInfo'
					I(0, 'Interpolating HFSS Frequency Sweep, Solving Distributed - up to 4 frequencies in parallel')
					I(1, 'Time', '10/25/2023 21:28:40')
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
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 3, Frequency: 9GHz; S Matrix Error =  96.587%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 4, Frequency: 8.5GHz; S Matrix Error = 201.577%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 9.5GHz has already been solved\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 8.75GHz has already been solved\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 8.25GHz has already been solved\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 9.25GHz has already been solved\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 5, Frequency: 9.5GHz; S Matrix Error =  21.635%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 6, Frequency: 8.75GHz; S Matrix Error =   2.246%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 7, Frequency: 8.25GHz; S Matrix Error =   0.328%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 8, Frequency: 9.25GHz; S Matrix Error =   0.077%; Secondary solver criterion is not converged\')', false, true)
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
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'86.9 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'0 Bytes\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:10\', 1, \'Average memory/process\', \'64.2 MB\', 1, \'Max memory/process\', \'64.2 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileItem('Frequency Sweep', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:06\', 1, \'Average memory/process\', \'68.5 MB\', 1, \'Max memory/process\', \'69 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 1448, false, 2, \'Max matrix size\', 7467, false, 1, \'Matrix bandwidth\', \'17.2\')', 0)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'10/25/2023 21:28:41\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
$end 'Profile'
