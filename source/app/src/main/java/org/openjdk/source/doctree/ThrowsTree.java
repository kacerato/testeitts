package org.openjdk.source.doctree;

import java.util.List;

public interface ThrowsTree extends BlockTagTree {
    List<? extends DocTree> getDescription();

    ReferenceTree getExceptionName();
}
