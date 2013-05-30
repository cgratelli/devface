devface
=======

Trabajo de Desarrollo Web

Bitacora: https://docs.google.com/spreadsheet/ccc?key=0AkCIIOnGg4XEdEFtM21kNTU2T0FEWmdRYU9NYy1mbkE#gid=0

Trello: https://trello.com/board/devface/518e918985037c68200013fc


The Ruby Way! (Fun)
===================

This assumes your have already installed the Rails Installer for Windows.

Download the ruby script to your Desktop folder from https://gist.github.com/raw/867550/win_fetch_cacerts.rb. Then in your command prompt, execute the ruby script:

ruby "%USERPROFILE%\Desktop\win_fetch_cacerts.rb"
Now make ruby aware of your certificate authority bundle by setting SSL_CERT_FILE. To set this in your current command prompt session, type:

set SSL_CERT_FILE=C:\RailsInstaller\cacert.pem
To make this a permanent setting, add this in your control panel.

Wiki: https://gist.github.com/fnichol/867550