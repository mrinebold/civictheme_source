#!/usr/bin/env bash
##
# Update default content from the current site.
#
# Usage:
# ./scripts/update-theme-config.sh
#

set -e
[ -n "${DREVOPS_DEBUG}" ] && set -x

CIVICTHEME_CONTENT_TYPES="${CIVICTHEME_CONTENT_TYPES:-default}"

#-------------------------------------------------------------------------------

echo "==> Started updating content in ${CIVICTHEME_CONTENT_TYPES} content profile."

echo "  > Removing generated content."
drush pm-uninstall -y generated_content || true

echo "  > Removing users."
drush entity:delete user

echo "  > Exporting content."
drush dcer --folder="modules/custom/civictheme_content/modules/civictheme_content_${CIVICTHEME_CONTENT_TYPES}/content" taxonomy_term
drush dcer --folder="modules/custom/civictheme_content/modules/civictheme_content_${CIVICTHEME_CONTENT_TYPES}/content" node
drush dcer --folder="modules/custom/civictheme_content/modules/civictheme_content_${CIVICTHEME_CONTENT_TYPES}/content" block_content
drush dcer --folder="modules/custom/civictheme_content/modules/civictheme_content_${CIVICTHEME_CONTENT_TYPES}/content" menu_link_content

echo "==> Finished updating content in ${CIVICTHEME_CONTENT_TYPES} content profile."