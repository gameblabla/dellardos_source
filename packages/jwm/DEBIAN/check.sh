if [ -L "/usr/bin/x-window-manager" ] ; then
   if [ -e "/usr/bin/x-window-manager" ] ; then
      echo "Good link"
   else
      echo "Broken link"
   fi
elif [ -e "/usr/bin/x-window-manager" ] ; then
   echo "Not a link"
else
   echo "Missing"
fi
