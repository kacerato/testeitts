package com.github.javaparser;

import com.github.javaparser.ast.Node;

public class Processor {
    public void postProcess(ParseResult<? extends Node> result, ParserConfiguration configuration) {
    }

    public Provider preProcess(Provider innerProvider) {
        return innerProvider;
    }
}
