package org.openjdk.source.doctree;

import java.util.List;

public interface HiddenTree extends BlockTagTree {
    List<? extends DocTree> getBody();
}
