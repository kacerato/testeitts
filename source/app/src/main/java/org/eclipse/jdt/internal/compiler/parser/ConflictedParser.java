package org.eclipse.jdt.internal.compiler.parser;

public interface ConflictedParser {
    boolean atConflictScenario(int i10);

    boolean isParsingModuleDeclaration();
}
