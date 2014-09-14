#!/bin/bash

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
#${INSTALL_C} "${SRCDIR}/Parts/SabatierReactor/model000.mbm" "${SABATIERDIR}"
${INSTALL_C} "${SRCDIR}/Parts/SabatierReactor/SabatierReactor.cfg" "${SABATIERDIR}"

${RM_F} "${DESTDIR}.zip"
(cd "${SRCDIR}/dist" && ${ZIP_R} "${PACKAGEDIR}.zip" "${PACKAGEDIR}")
echo "${DESTDIR}.zip is now ready for distribution."
