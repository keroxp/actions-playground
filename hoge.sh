          CURR=$(git tag | grep "^[0-9]\+\.[0-9]\+\.[0-9]\+$" | sort -V | tail -n 2 | head -n 1)
          BODY=$(git log ${NEXT}...${CURR} --oneline)
          echo "::set-output name=body::${BODY}"

          