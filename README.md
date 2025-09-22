<div align="center">
  <h1>Práctica 1: "Instalación y Funcionamiento de los Entornos Móviles"</h1>
  <p>
    Un proyecto comparativo que explora los elementos fundamentales de la interfaz de usuario, implementado tanto en <strong>Android Nativo (Kotlin)</strong> como en <strong>Flutter</strong>.
  </p>
</div>

<hr>

<h2 id="android-nativo-kotlin">🤖 Android Nativo (Kotlin)</h2>

<p>
  Esta versión de la aplicación fue desarrollada utilizando Kotlin y las últimas librerías de Android Jetpack. El objetivo es demostrar la estructura de un proyecto nativo moderno, la navegación entre fragments y la interacción con componentes de UI clásicos.
</p>

<h3>Características Principales</h3>
<ul>
  <li><strong>Navegación con BottomNavigationView:</strong> Gestión de la navegación entre cinco fragments distintos.</li>
  <li><strong>AppBar Estática:</strong> Una barra de título persistente en toda la aplicación.</li>
  <li><strong>Componentes Interactivos:</strong> Demostraciones funcionales de TextFields, Botones, Elementos de Selección, Listas y Elementos de Información.</li>
  <li><strong>Comunicación entre Fragments:</strong> Envío de datos desde el fragment de TextFields al de Información.</li>
  <li><strong>Diseño con Material Design:</strong> Uso de un tema personalizado con una paleta de colores verdes.</li>
</ul>

<h3>📸 Capturas de Pantalla</h3>
<table align="center">
  <tr>
    <td align="center">
      <strong>TextFields</strong><br>
      <img src="https://github.com/user-attachments/assets/18123456-5d10-43f6-85c4-9c997b3e32da" width="200"><br>
      <em>El texto enviado se muestra en la pantalla de Elementos de información</em>
    </td>
    <td align="center">
      <strong>Botones</strong><br>
      <img src="https://github.com/user-attachments/assets/8fed754e-6009-4929-9838-621ab250c2fc" width="200">
      <em>
        <ul>
          <li>Al pulsar el Botón Estándar aparece un mensaje debajo de él diciendo que se a pulsado el botón.</li>
          <li>Al pulsar el botón Púlsame, se va aumentado el contador.</li>
          <li>Al pulsar el botón Púlsame para desactivar, se desactiva y no puede volverse a pulsar.</li>
          <li>El último botón es una estrella, al pulsarla se muestra un mensaje en la parte inferior de la pantalla.</li>
        </ul>
      </em><br>
    </td>
    <td align="center">
      <strong>Selección</strong><br>
      <img src="https://github.com/user-attachments/assets/2ef00bd9-3e77-40be-b2c3-7d7566a04dd6" width="200"><br>
      <em>Al interactuar con cada elemento de la pantalla se muestra un mensaje en el fragment avisando el elemento que se presionó</em><br>
    </td>
  </tr>
    <tr>
    <td align="center">
      <strong>Listas</strong><br>
      <img src="https://github.com/user-attachments/assets/fa312fcb-5ec3-40b5-89ef-166c698cb0d5" width="200"><br>
      <em>Se puede desplazar por la lista de elementos y al presionar cualquier elemento de la lista aparece un mensaje en la parte inferior de la pantalla mostrando el elemento que se presionó</em><br>
    </td>
    <td align="center">
      <strong>Info</strong><br>
      <img src="https://github.com/user-attachments/assets/668376ce-9d60-4fe0-93e6-3e5a09105a4f" width="200"><br>
      <em>
        <ul>
          <li>Se muestra el texto que fue enviado del fragment de TextFields</li>
          <li>Se tiene una barra de progreso, al darle al botón Iniciar, se inicia el llenado de la barra, y el botón de Reiniciar quita el progreso.</li>
          <li>Al final se tiene una barra de estrella, que al seleccionar cualquier estrella, se rellena de color hasta la estrella que fue seleccionada.</li>
        </ul>
      </em><br>
    </td>
  </tr>
</table>

<h3>🛠️ Tecnologías Utilizadas</h3>
<ul>
  <li><strong>Lenguaje:</strong> Kotlin</li>
  <li><strong>Arquitectura:</strong> Single-Activity, Múltiples Fragments</li>
  <li><strong>Librerías Principales:</strong>
    <ul>
      <li>Android Jetpack</li>
      <li>View Binding</li>
      <li>Navigation Component</li>
      <li>Material Design Components</li>
    </ul>
  </li>
  <li><strong>IDE:</strong> Android Studio</li>
</ul>

<h3>🚀 Instalación y Ejecución</h3>
<ol>
  <li>Clona el repositorio</li>
  <li>Abre Android Studio.</li>
  <li>Selecciona <strong>"Open an existing Project"</strong> y navega a la carpeta del proyecto de Android. (La carpeta de la versión de Kotlin es <strong>"Practica1K"</strong>)</li>
  <li>Espera a que Gradle sincronice todas las dependencias.</li>
  <li>Selecciona un emulador o un dispositivo físico y presiona el botón "Run".</li>
</ol>

<hr>

<h2 id="flutter">🐦 Flutter</h2>

<p>
  Esta versión demuestra cómo construir la misma interfaz y funcionalidad utilizando el framework multiplataforma de Flutter. El código está estructurado en widgets reutilizables y gestiona su estado de forma eficiente.
</p>

<h3>Características Principales</h3>
<ul>
  <li><strong>Navegación con BottomNavigationBar:</strong> Gestión del estado para cambiar entre las diferentes páginas (widgets).</li>
  <li><strong>AppBar Estática:</strong> Un `AppBar` de Material que se mantiene en la parte superior.</li>
  <li><strong>Widgets Interactivos:</strong> Implementación de TextFields, Botones, CheckBox, Radio, Switch, ListView y widgets de información con estado.</li>
  <li><strong>Comunicación entre Widgets:</strong> Paso de datos mediante callbacks y constructores de widgets.</li>
  <li><strong>Diseño con Material 3:</strong> Uso de un `ThemeData` personalizado con la misma paleta de colores verdes.</li>
</ul>

<h3>📸 Capturas de Pantalla</h3>
<table align="center">
  <tr>
    <td align="center">
      <strong>TextFields</strong><br>
      <img src="https://github.com/user-attachments/assets/a326541d-2163-4007-bd7c-1008b50f8886" width="200"><br>
      <em>El funcionamiento es prácticamente igual que en la versión de Kotlin</em>
    </td>
    <td align="center">
      <strong>Botones</strong><br>
      <img src="https://github.com/user-attachments/assets/92e7a263-ce9d-4e45-a3fb-a07e849eac85" width="200"><br>
      <em>El funcionamiento es prácticamente igual que en la versión de Kotlin</em>
    </td>
    <td align="center">
      <strong>Selección</strong><br>
      <img src="https://github.com/user-attachments/assets/aaf0323b-49e6-480f-8bc2-daaca9830ac7" width="200"><br>
      <em>El funcionamiento es prácticamente igual que en la versión de Kotlin</em>
    </td>
  </tr>
  <tr>
    <td align="center">
      <strong>Listas</strong><br>
      <img src="https://github.com/user-attachments/assets/e0cce72a-8ede-43fe-a79f-4d3c0193dcda" width="200"><br>
      <em>El funcionamiento es prácticamente igual que en la versión de Kotlin</em>
    </td>
    <td align="center">
      <strong>Info</strong><br>
      <img src="https://github.com/user-attachments/assets/7605d97d-dc6e-44f9-bce1-c4507951ed6c" width="200"><br>
      <em>El funcionamiento es prácticamente igual que en la versión de Kotlin</em>
    </td>
  </tr>
</table>

<h3>🛠️ Tecnologías Utilizadas</h3>
<ul>
  <li><strong>Lenguaje:</strong> Dart</li>
  <li><strong>Framework:</strong> Flutter</li>
  <li><strong>Librerías Principales:</strong>
    <ul>
      <li>flutter/material.dart</li>
    </ul>
  </li>
  <li><strong>IDE:</strong> Visual Studio Code</li>
</ul>

<h3>🚀 Instalación y Ejecución</h3>
<ol>
  <li>Asegúrate de tener el <a href="https://flutter.dev/docs/get-started/install">SDK de Flutter</a> instalado.</li>
  <li>Clona el repositorio.</li>
  <li>Abre la carpeta del proyecto de Flutter en Visual Studio Code. (La carpeta de la versión de Flutter es <strong>"Practica1F"</strong>)</li>
  <li>Abre una terminal en VS Code y ejecuta <code>flutter pub get</code> para descargar las dependencias.</li>
  <li>Selecciona un emulador o un dispositivo físico y presiona F5 o ejecuta <code>flutter run</code> en la terminal.</li>
</ol>

<hr>

<h2 id="flutter">👦🏻 Autor</h2>
<h3>Toral Alvarez Yael Adair</h3>
<h3>Materia: Desarrollo de aplicaciones móviles nativas</h3>
<h3>Grupo: 7CV2</h3>
