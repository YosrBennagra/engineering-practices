# Migration plan

## Invariant
What must remain true throughout migration?

## Current and target state
Describe authority, data shape and consumers.

## Consumer inventory
Known callers/readers/writers plus discovery method for unknown usage.

## Expand
Add compatible schema/path/adapter.

## Migrate
Backfill or move consumers in bounded/restartable steps.

## Verify
Parity checks, reconciliation, usage telemetry and failure handling.

## Cutover
How authority moves to the new path.

## Rollback limits
What can be reversed, until when, and what data may prevent rollback?

## Contract
Removal criteria for old schema/path/flag.

## Cleanup owner
Named responsibility and trigger/window.