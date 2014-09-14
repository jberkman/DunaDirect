#!/bin/bash
#	Copyright (c) 2014, jacob berkman
#
#	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
#	documentation files (the "Software"), to deal in the Software without restriction, including without limitation
#	the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to
#	permit persons to whom the Software is furnished to do so, subject to the following conditions:
#
#	The above copyright notice and this permission notice shall be included in all copies or substantial portions of
#	the Software.
#
#	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO
#	THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
#	TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#	SOFTWARE.

set -xe

VERSION="0.1"

INSTALL="install"
INSTALL_D="${INSTALL} -d"
INSTALL_C="${INSTALL} -c"
RM="rm"
RM_F="${RM} -f"
POPDIR="popdir"
PUSHDIR="pushdir"
ZIP="zip"
ZIP_R="${ZIP} -r"

SRCDIR="$(dirname $0)"
OBJDIR="${SRCDIR}/obj"
PACKAGEDIR="DunaDirect-${VERSION}"

DESTDIR="${SRCDIR}/dist/${PACKAGEDIR}"
${INSTALL_D} "${DESTDIR}"
${INSTALL_C} "${SRCDIR}/README.md" "${DESTDIR}"

GAMEDATADIR="${DESTDIR}/GameData"
DUNADIRECTDIR="${GAMEDATADIR}/DunaDirect"

PLUGINSDIR="${DUNADIRECTDIR}/Plugins"
${INSTALL_D} "${PLUGINSDIR}"
${INSTALL_C} "${OBJDIR}/Debug/DunaDirect.dll" "${PLUGINSDIR}"

PARTSDIR="${DUNADIRECTDIR}/Parts"

HYDROGENTANKDIR="${PARTSDIR}/HydrogenTank"
${INSTALL_D} "${HYDROGENTANKDIR}"
${INSTALL_C} "${OBJDIR}/HydrogenTank/model.mu" "${HYDROGENTANKDIR}"
${INSTALL_C} "${SRCDIR}/Parts/Assets/HydrogenTank/HydrogenTank.png" "${HYDROGENTANKDIR}"
${INSTALL_C} "${SRCDIR}/Parts/HydrogenTank/HydrogenTank.cfg" "${HYDROGENTANKDIR}"

SABATIERDIR="${PARTSDIR}/SabatierReactor"
${INSTALL_D} "${SABATIERDIR}"
${INSTALL_C} "${OBJDIR}/SabatierReactor/model.mu" "${SABATIERDIR}"
${INSTALL_C} "${SRCDIR}/Parts/Assets/SabatierReactor/SabatierReactor.png" "${SABATIERDIR}"
${INSTALL_C} "${SRCDIR}/Parts/SabatierReactor/SabatierReactor.cfg" "${SABATIERDIR}"

${RM_F} "${DESTDIR}.zip"
(cd "${SRCDIR}/dist" && ${ZIP_R} "${PACKAGEDIR}.zip" "${PACKAGEDIR}" -x "*.DS_Store")
echo "${DESTDIR}.zip is now ready for distribution."
