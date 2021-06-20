module.exports = {
    extends: ['@commitlint/config-conventional'],
    rules: {
        'references-empty': [2, 'never'],
        'type-empty': [0],
        'type-enum': [0]
    },
    parserPreset: {
        parserOpts: {
            headerCorrespondence: ['subject'],
            headerPattern: /^[[A-Z]{1,5}-[0-9]{1,4}]: (\w+\s)*\w+$/,
            issuePrefixes: ['GP-']
        }
    },
}