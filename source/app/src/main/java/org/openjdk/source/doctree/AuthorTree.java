package org.openjdk.source.doctree;

import java.util.List;

public interface AuthorTree extends BlockTagTree {
    List<? extends DocTree> getName();
}
