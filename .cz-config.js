'use strict';

module.exports = {
    types: [
      { value: '✨ feat', name: '✨ feat:     A new feature' },
      { value: '🐞 fix', name: '🐞 fix:      A bug fix' },
      {
        value: '🚀 perf',
        name: '🚀 perf:     A code change that improves performance',
      },
      { value: '🧪  test', name: '🧪  test:     Adding missing tests' },
      { value: '🗑 revert', name: '🗑 revert:   Revert to a commit' },
      { value: '📚 docs', name: '📚 docs:     Documentation only changes' },
    ],
  
    scopes: [],
  
    allowTicketNumber: false,
    isTicketNumberRequired: false,
    ticketNumberPrefix: 'TICKET-',
    ticketNumberRegExp: '\\d{1,5}',
    // override the messages, defaults are as follows
    messages: {
      type: "Select the type of change that you're committing:",
      subject: 'Write a SHORT, IMPERATIVE tense description of the change:\n',
    },
    allowCustomScopes: false,
    allowBreakingChanges: ['feat', 'fix'],
    // skip any questions you want
    skipQuestions: ['scope','customScope','body','breaking','footer',''],
    // limit subject length
    subjectLimit: 100,
  };