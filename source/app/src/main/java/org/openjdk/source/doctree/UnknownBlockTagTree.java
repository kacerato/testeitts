package org.openjdk.source.doctree;

import java.util.List;

public interface UnknownBlockTagTree extends BlockTagTree {
    List<? extends DocTree> getContent();
}
