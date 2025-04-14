// Theme Toggle Functionality
document.addEventListener('DOMContentLoaded', function() {
  // Create the theme toggle button
  const themeToggle = document.createElement('button');
  themeToggle.id = 'theme-toggle';
  themeToggle.className = 'theme-toggle';
  themeToggle.setAttribute('aria-label', 'Toggle Dark Mode');
  themeToggle.innerHTML = '<span class="theme-toggle-icon">🌙</span>';
  
  // Find the header to append the toggle to
  const header = document.querySelector('.site-header .wrapper');
  if (header) {
    header.appendChild(themeToggle);
  } else {
    // Fallback if the expected header structure is not found
    const body = document.querySelector('body');
    body.insertBefore(themeToggle, body.firstChild);
  }
  
  // Check for saved theme preference or get from system preference
  const currentTheme = localStorage.getItem('theme') || 
    (window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light');
  
  // Set initial theme
  document.documentElement.setAttribute('data-theme', currentTheme);
  updateToggleIcon(currentTheme);
  
  // Add click event
  themeToggle.addEventListener('click', function() {
    let theme = document.documentElement.getAttribute('data-theme');
    let newTheme = theme === 'dark' ? 'light' : 'dark';
    
    // Save the theme preference
    localStorage.setItem('theme', newTheme);
    document.documentElement.setAttribute('data-theme', newTheme);
    updateToggleIcon(newTheme);
  });
  
  // Update the toggle button's icon based on current theme
  function updateToggleIcon(theme) {
    const toggleIcon = document.querySelector('.theme-toggle-icon');
    if (toggleIcon) {
      toggleIcon.textContent = theme === 'dark' ? '☀️' : '🌙';
    }
    
    // Update the button's aria-label
    themeToggle.setAttribute('aria-label', 
      theme === 'dark' ? 'Switch to Light Mode' : 'Switch to Dark Mode');
  }
});
