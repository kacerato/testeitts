package org.openjdk.source.doctree;

import java.util.List;

public interface LinkTree extends InlineTagTree {
    List<? extends DocTree> getLabel();

    ReferenceTree getReference();
}
