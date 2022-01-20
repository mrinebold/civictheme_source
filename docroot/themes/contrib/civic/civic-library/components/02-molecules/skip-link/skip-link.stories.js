import { radios, text } from '@storybook/addon-knobs';

import CivicSkipLink from './skip-link.twig';

export default {
  title: 'Molecules/Skip Link',
  parameters: {
    layout: 'fullscreen',
  },
};

export const SkipLink = (knobTab) => {
  const generalKnobTab = typeof knobTab === 'string' ? knobTab : 'General';

  const generalKnobs = {
    theme: radios(
      'Theme', {
        Light: 'light',
        Dark: 'dark',
      },
      'light',
      generalKnobTab,
    ),
    text: text('Text', 'Skip to main content', generalKnobTab),
    url: text('URL', '#main-content', generalKnobTab),
    modifier_class: text('Additional class', '', generalKnobTab),
  };

  return CivicSkipLink({
    ...generalKnobs,
  });
};