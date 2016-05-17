@ECHO OFF

puppet apply -v --modulepath c:\puppet\modules;c:\puppet\vendor --hiera_config=c:\puppet\hiera.yaml c:\puppet\manifests\site.pp
