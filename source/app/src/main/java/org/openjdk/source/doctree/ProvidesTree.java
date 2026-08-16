package org.openjdk.source.doctree;

import java.util.List;

public interface ProvidesTree extends BlockTagTree {
    List<? extends DocTree> getDescription();

    ReferenceTree getServiceType();
}
