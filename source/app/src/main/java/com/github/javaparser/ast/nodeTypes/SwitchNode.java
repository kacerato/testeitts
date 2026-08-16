package com.github.javaparser.ast.nodeTypes;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.comments.Comment;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.stmt.SwitchEntry;
import java.util.Optional;

public interface SwitchNode {
    SwitchNode clone();

    Optional<Comment> getComment();

    NodeList<SwitchEntry> getEntries();

    SwitchEntry getEntry(int i10);

    Expression getSelector();

    default boolean isEmpty() {
        return getEntries().isEmpty();
    }

    boolean remove(Node node);

    boolean replace(Node node, Node replacementNode);

    SwitchNode setEntries(NodeList<SwitchEntry> entries);

    SwitchNode setSelector(Expression selector);
}
