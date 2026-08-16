package org.openjdk.source.doctree;

import java.util.List;

public interface UsesTree extends BlockTagTree {
    List<? extends DocTree> getDescription();

    ReferenceTree getServiceType();
}
