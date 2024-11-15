import { useBackend } from '../backend';
import { Box, Section, Stack, Button, Table } from '../components';
import { Window } from '../layouts';
import { LoginScreen } from './common/LoginScreen';

export const ComputerTerminal = (properties, context) => {
  const { act, data } = useBackend(context);
  const { screen, is_printing, logs } = data;

  return (
    <Window width={400} height={450}>
      <Section fill scrollable>
        <Table>{logs.map(logs)}</Table>
      </Section>
    </Window>
  );
};
