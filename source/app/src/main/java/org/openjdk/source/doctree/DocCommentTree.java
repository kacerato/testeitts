package org.openjdk.source.doctree;

import java.util.ArrayList;
import java.util.List;

public interface DocCommentTree extends DocTree {
    List<? extends DocTree> getBlockTags();

    List<? extends DocTree> getBody();

    List<? extends DocTree> getFirstSentence();

    default List<? extends DocTree> getFullBody() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(getFirstSentence());
        arrayList.addAll(getBody());
        return arrayList;
    }
}
