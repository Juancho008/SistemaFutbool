<?php
$menu_grupos = array();
$menu_items = array();
if (count($datos) > 0) {
  $menu_grupos = $datos['menu_grupos'];
  $menu_items = $datos['menu_items'];
}
?>
<div id="menu" class="navbar bg-dark" onmouseover="toggleSidebar()" onmouseout="toggleSidebar()">
    <ul class="sidebar-navbar-center sidebar-ul" id="menu-sistema">
    </ul>
</div>

<div id="main">
  <script>
    let menu_items = <?php echo json_encode($menu_items) ?>;
    let menu_grupos = <?php echo json_encode($menu_grupos) ?>;
    let mini = true;

    function toggleSidebar() {
      if (mini) {
        mini = false;
        document.getElementById("menu").style.width = "250px";
        document.getElementById("main").style.marginLeft = "20vw";
        document.getElementById("menu-sistema").style.width = "250px";
      } else {
        document.getElementById("menu").style.width = "85px";
        document.getElementById("main").style.marginLeft = "10vw";
        document.getElementById("menu-sistema").style.width = "55px";
        mini = true;
      };
    }

    const grupo = (grupo) => {
      if (grupo.img === null)
        grupo.img = '';
      return `<li class="sidebar-text dropright bg-dark ">
              <a class=" bg-dark" href="#submenu` + grupo.id + `" data-toggle="dropdown" data-target="#submenu` + grupo.id + `" aria-haspopup="true" aria-expanded="false">
                <span class='sidebar-decoration' style='overflow-x: hidden;'><b class="sidebar-simbolo">+</b>` + grupo.img + ` ` + grupo.nombre + `</span>
              </a>
              <div class="bg-dark dropdown-menu" id="submenu` + grupo.id + `" aria-expanded="false">
                <ul class=" bg-dark submenu2">
                </ul>
              </div>
            </li>`;
    }

    const item_menu = (item) => {
      if (item.img === null)
        item.img = '';
      return `
    <li class="bg-dark sidebar-text">
      <a class="bg-dark " href="<?php echo RUTA_URL ?>/` + item.url + `">` + item.img + `<span>` + item.nombre + `
    </span></a></li>`;
    }

    const sub_item_menu = (item) => {
      if (item.img === null)
        item.img = '';
      return `
    <li class=" bg-dark">
      <a class="bg-dark " href="<?php echo RUTA_URL ?>/` + item.url + `">` + item.img + `<span>` + item.nombre + `
    </span></a></li>`;
    }

    const crear_menu = () => {
      let menu = document.getElementById('menu-sistema');
      let grupos = []
      let items = []
      menu_grupos.map(x => {
        grupos.push(x)
      })
      menu_items.map(x => {
        if (x.id_grupo == 0) {
          grupos.push(x)
        } else {
          items.push(x)
        }
      })
      grupos.sort((a, b) => parseFloat(a.orden) > parseFloat(b.orden) ? 1 : -1)
      grupos.map(x => {
        if (isNaN(x.id_grupo)) {
          menu.innerHTML += grupo(x)
        } else {
          menu.innerHTML += item_menu(x)
        }
      })
      items.map(x => {
        $('#submenu' + x.id_grupo).find('.submenu2').append(sub_item_menu(x))
      })
    }

    crear_menu();
  </script>