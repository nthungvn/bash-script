#! /bin/sh

GEDIT_PLUGINS=$HOME/.gnome2/gedit/plugins

cd $GEDIT_PLUGINS

if [ -d clickconfig ]; then
  rm -fr clickconfig
fi

if [ -f click_config.gedit-plugin ]; then
  rm -f click_config.gedit-plugin
fi


if [ -f gemini.gedit-plugin ]; then
  rm -f gemini.gedit-plugin
fi

if [ -f gemini.py ]; then
  rm -f gemini.py
fi

if [ -f gemini.pyc ]; then
  rm -f gemini.pyc
fi


if [ -f lastdocs.gedit-plugin ]; then
  rm -f lastdocs.gedit-plugin
fi

if [ -f lastdocs.py ]; then
  rm -f lastdocs.py
fi

if [ -f lastdocs.pyc ]; then
  rm -f lastdocs.pyc
fi

if [ -f tm_autocomplete.gedit-plugin ]; then
  rm -f tm_autocomplete.gedit-plugin
fi

if [ -f tm_autocomplete.py ]; then
  rm -f tm_autocomplete.py
fi

if [ -f tm_autocomplete.pyc ]; then
  rm -f tm_autocomplete.pyc
fi

if [ -f project-manager.gedit-plugin ]; then
  rm -f project-manager.gedit-plugin
fi

if [ -f project-manager.py ]; then
  rm -f project-manager.py
fi

if [ -f project-manager.pyc ]; then
  rm -f project-manager.pyc
fi

#if [ -f  ]; then
#  rm -f
#fi
#

