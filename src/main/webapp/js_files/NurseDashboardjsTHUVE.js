        function openAddPatientModal() {
            document.getElementById('addPatientModal').style.display = 'block';
        }

        function closeAddPatientModal() {
            document.getElementById('addPatientModal').style.display = 'none';
        }

        function openPagePopup(patientID) {
            window.location.href = 'EditPatientTHUVE.jsp?patientID=' + patientID;
        }

        function deletePatient(patientID) {
            if (confirm('Are you sure you want to delete this patient?')) {
                window.location.href = 'DeletePatientTHUVE.jsp?patientID=' + patientID;
            }
        }

        
        window.onclick = function(event) {
            if (event.target == document.getElementById('addPatientModal')) {
                closeAddPatientModal();
            }
        }
        function openPagePopup(patientID) {
            
            const popup = window.open('EditPatientTHUVE.jsp?patientID=' + patientID, 'popupWindow', 'width=500,height=650');
            const timer = setInterval(function() {
                if (popup.closed) {
                    clearInterval(timer);
                    
                    location.reload();
                }
            }, 1000); 
        }


		function searchPatients() {
		    const input = document.getElementById("searchInput");
		    const filter = input.value.toLowerCase();
		    const patientCards = document.getElementsByClassName("patient-card");

		    console.log("Searching for:", filter); 

		    for (let i = 0; i < patientCards.length; i++) {
		        
		        const patientName = patientCards[i].getElementsByClassName("patient-name")[0].textContent.toLowerCase();
		        
		        console.log("Patient Name:", patientName); 
		       
		        if (patientName.includes(filter)) {
		            patientCards[i].style.display = "";
		        } else {
		            patientCards[i].style.display = "none"; 
		        }
		    }
		}

		
