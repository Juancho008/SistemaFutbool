if(document.getElementById('dropdownMenuButton'))
  {
    document.getElementById('dropdownMenuButton').addEventListener('click', function() {
    var dropdownMenu = document.getElementById('dropdown-menu');
    dropdownMenu.classList.toggle('show');
  });
}

if(document.getElementById('test')){
  document.getElementById('test').addEventListener('click', function(event) {
    event.stopPropagation();
    var subDropdownMenu = document.getElementById('sub-dropdown-menu');
    subDropdownMenu.classList.toggle('show');
  });
}