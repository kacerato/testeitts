package org.openjdk.tools.javac.parser;

import org.openjdk.tools.javac.parser.Tokens;
import org.openjdk.tools.javac.util.Position;

public interface Lexer {
    int errPos();

    void errPos(int i10);

    Position.LineMap getLineMap();

    void nextToken();

    Tokens.Token prevToken();

    Tokens.Token split();

    Tokens.Token token();

    Tokens.Token token(int i10);
}
