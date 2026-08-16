package org.openjdk.source.doctree;

import java.util.List;

public interface UnknownInlineTagTree extends InlineTagTree {
    List<? extends DocTree> getContent();
}
