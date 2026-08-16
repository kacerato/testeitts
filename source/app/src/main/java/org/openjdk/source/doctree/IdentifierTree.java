package org.openjdk.source.doctree;

import org.openjdk.javax.lang.model.element.Name;

public interface IdentifierTree extends DocTree {
    Name getName();
}
