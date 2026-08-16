package org.openjdk.source.doctree;

import java.util.List;

public interface SerialTree extends BlockTagTree {
    List<? extends DocTree> getDescription();
}
