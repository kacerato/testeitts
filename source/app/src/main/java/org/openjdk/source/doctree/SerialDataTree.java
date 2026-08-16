package org.openjdk.source.doctree;

import java.util.List;

public interface SerialDataTree extends BlockTagTree {
    List<? extends DocTree> getDescription();
}
