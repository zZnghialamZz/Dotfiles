import SpacesDisplay from './lib/components/SpacesDisplay.jsx'
import { SpacesDisplayStyles } from './lib/styles/Styles.js'

import { parseJson } from './lib/utils.js'

import { Theme } from './lib/styles/Theme.js'

const refreshFrequency = false

const className = `
  .simple-bar__error,
  .simple-bar__spaces {
    position: fixed;
    top: 0;
    left: 0;
    padding: 4px;
    color: white;
    font-size: 11px;
    font-family: ${Theme.font};
    z-index: 1;
  }
  ${SpacesDisplayStyles}
`

const command = 'bash macbar/lib/scripts/get_spaces.sh'

const render = ({ output, error }) => {
  if (!output || error) return <div className="simple-bar__error">Something went wrong...</div>
  const data = parseJson(output)
  if (!data) return <div className="simple-bar__error">JSON error...</div>
  return (
    <div className="simple-bar__spaces">
      <SpacesDisplay output={data.spaces} displayId={1} />
    </div>
  )
}

export { command, refreshFrequency, className, render }
