package org.openjdk.source.doctree;

import java.util.List;
import org.openjdk.javax.lang.model.element.Name;

public interface AttributeTree extends DocTree {

    public enum ValueKind {
        EMPTY,
        UNQUOTED,
        SINGLE,
        DOUBLE
    }

    Name getName();

    List<? extends DocTree> getValue();

    ValueKind getValueKind();
}
