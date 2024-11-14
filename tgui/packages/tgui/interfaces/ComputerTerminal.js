import { useBackend } from '../backend';
import { Box, Section } from '../components';
import { Window } from '../layouts';

export const ComputerTerminal = (properties, context) => {
  <Window>
    <Window.Content>
      <Section label="HELLO">
        <Box>HELLO FRIEND!</Box>
      </Section>
    </Window.Content>
  </Window>;
};
