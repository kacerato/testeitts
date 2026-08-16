package org.openjdk.source.doctree;

import java.util.List;

public interface VersionTree extends BlockTagTree {
    List<? extends DocTree> getBody();
}
