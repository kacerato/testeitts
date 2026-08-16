package org.openjdk.source.doctree;

import java.util.List;

public interface SinceTree extends BlockTagTree {
    List<? extends DocTree> getBody();
}
