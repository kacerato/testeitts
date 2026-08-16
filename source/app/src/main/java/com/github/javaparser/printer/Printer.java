package com.github.javaparser.printer;

import com.github.javaparser.ast.Node;

public interface Printer {
    String print(Node node);
}
