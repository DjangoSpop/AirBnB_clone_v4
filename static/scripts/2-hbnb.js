// Function to check the API status
function checkApiStatus() {
  // Make a GET request to the API status endpoint
  fetch('http://0.0.0.0:5001/api/v1/status/')
    .then(response => response.json())
    .then(data => {
      // Get the div#api_status element
      const apiStatusDiv = document.querySelector('#api_status');

      // Check if the status is "OK"
      if (data.status === 'OK') {
        // Add the class "available" to the div#api_status
        apiStatusDiv.classList.add('available');
      } else {
        // Remove the class "available" from the div#api_status
        apiStatusDiv.classList.remove('available');
      }
    })
    .catch(error => {
      console.error('Error:', error);
    });
}

// Call the checkApiStatus function when the page loads
window.addEventListener('load', checkApiStatus);
