package org.openjdk.source.doctree;

import java.util.List;

public interface SeeTree extends BlockTagTree {
    List<? extends DocTree> getReference();
}
