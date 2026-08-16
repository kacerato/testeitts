package org.openjdk.source.doctree;

import java.util.List;

public interface ReturnTree extends BlockTagTree {
    List<? extends DocTree> getDescription();
}
