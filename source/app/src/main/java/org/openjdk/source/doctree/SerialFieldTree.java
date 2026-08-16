package org.openjdk.source.doctree;

import java.util.List;

public interface SerialFieldTree extends BlockTagTree {
    List<? extends DocTree> getDescription();

    IdentifierTree getName();

    ReferenceTree getType();
}
