package com.github.javaparser.printer.concretesyntaxmodel;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.comments.Comment;
import com.github.javaparser.printer.SourcePrinter;
import com.github.javaparser.utils.PositionUtils;
import java.util.LinkedList;

public class CsmOrphanCommentsEnding implements CsmElement {
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void prettyPrint(Node node, SourcePrinter printer) {
        LinkedList linkedList = new LinkedList();
        linkedList.addAll(node.getChildNodes());
        PositionUtils.sortByBeginPosition(linkedList);
        if (linkedList.isEmpty()) {
            return;
        }
        int i10 = 0;
        boolean z10 = true;
        while (z10 && i10 < linkedList.size()) {
            z10 = ((Node) linkedList.get((linkedList.size() - 1) - i10)) instanceof Comment;
            if (z10) {
                i10++;
            }
        }
        for (int i11 = 0; i11 < i10; i11++) {
            CsmComment.process((Comment) linkedList.get((linkedList.size() - i10) + i11), printer);
        }
    }
}
