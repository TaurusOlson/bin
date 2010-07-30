#!/bin/bash
# ------------------------------------------------
# @Filename   : phone_booth.sh
# @Date       : 2010-07-30
# @Author     : Taurus Olson
# @Email      : <taurusolson@gmail.com>
# @Last Change: Ven jul 30 05:00  2010 C
# @Revision   : 0.1
# ------------------------------------------------

# Clark Kent (ck) -> Superman (sm)

FILE=$1

# Real identity
R_FIRSTNAME='Clark'
R_SURNAME='Kent'
R_EMAIL='clark.kent@smallville.com'

# Secret identity
S_FIRSTNAME='Super'
S_SURNAME='Man'
S_EMAIL='superman@krypton.ite'

sed "s/$R_FIRSTNAME/$S_FIRSTNAME/g
s/$R_SURNAME/$S_SURNAME/g
s/$R_EMAIL/$S_EMAIL/g" $FILE > $FILE'.sm'
