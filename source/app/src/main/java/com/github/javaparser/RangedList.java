package com.github.javaparser;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;

class RangedList<T extends Node> {
    NodeList<T> list;
    TokenRange range;

    public RangedList(NodeList<T> list) {
        JavaToken javaToken = JavaToken.INVALID;
        this.range = new TokenRange(javaToken, javaToken);
        this.list = list;
    }

    public void add(T t10) {
        if (this.list == null) {
            this.list = new NodeList<>();
        }
        this.list.add((NodeList<T>) t10);
    }

    public void beginAt(JavaToken begin) {
        this.range = this.range.withBegin(begin);
    }

    public void endAt(JavaToken end) {
        this.range = this.range.withEnd(end);
    }
}
