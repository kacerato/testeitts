package com.github.javaparser.ast.visitor;

public interface Visitable {
    <R, A> R accept(GenericVisitor<R, A> v10, A arg);

    <A> void accept(VoidVisitor<A> v10, A arg);
}
