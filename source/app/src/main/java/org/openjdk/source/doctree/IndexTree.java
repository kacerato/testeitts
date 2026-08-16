package org.openjdk.source.doctree;

import java.util.List;

public interface IndexTree extends InlineTagTree {
    List<? extends DocTree> getDescription();

    DocTree getSearchTerm();
}
