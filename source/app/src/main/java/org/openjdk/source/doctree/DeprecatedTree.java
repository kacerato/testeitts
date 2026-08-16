package org.openjdk.source.doctree;

import java.util.List;

public interface DeprecatedTree extends BlockTagTree {
    List<? extends DocTree> getBody();
}
