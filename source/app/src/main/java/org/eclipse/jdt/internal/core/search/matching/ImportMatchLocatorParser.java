package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;

public class ImportMatchLocatorParser extends MatchLocatorParser {
    boolean reportImportMatch;

    public ImportMatchLocatorParser(ProblemReporter problemReporter, MatchLocator matchLocator) {
        super(problemReporter, matchLocator);
        int i10 = this.patternFineGrain;
        this.reportImportMatch = i10 == 0 || (i10 & 32768) != 0;
    }

    @Override
    public void consumeSingleStaticImportDeclarationName() {
        super.consumeSingleStaticImportDeclarationName();
        if (this.reportImportMatch) {
            this.patternLocator.match(this.astStack[this.astPtr], this.nodeSet);
        }
    }

    @Override
    public void consumeSingleTypeImportDeclarationName() {
        super.consumeSingleTypeImportDeclarationName();
        if (this.reportImportMatch) {
            this.patternLocator.match(this.astStack[this.astPtr], this.nodeSet);
        }
    }

    @Override
    public void consumeStaticImportOnDemandDeclarationName() {
        super.consumeStaticImportOnDemandDeclarationName();
        if (this.reportImportMatch) {
            this.patternLocator.match(this.astStack[this.astPtr], this.nodeSet);
        }
    }

    @Override
    public void consumeTypeImportOnDemandDeclarationName() {
        super.consumeTypeImportOnDemandDeclarationName();
        if (this.reportImportMatch) {
            this.patternLocator.match(this.astStack[this.astPtr], this.nodeSet);
        }
    }
}
