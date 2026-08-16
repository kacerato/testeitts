package com.github.javaparser.ast;

import com.github.javaparser.ast.comments.Comment;
import java.util.List;
import java.util.function.Consumer;

public final class C11727n implements Consumer {

    public final List f59534b;

    public C11727n(List list) {
        this.f59534b = list;
    }

    @Override
    public final void accept(Object obj) {
        this.f59534b.add((Comment) obj);
    }
}
