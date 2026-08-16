package com.github.javaparser.printer.concretesyntaxmodel;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.comments.Comment;
import com.github.javaparser.printer.SourcePrinter;
import java.util.function.Consumer;

public class CsmComment implements CsmElement {
    public static void process(Comment comment, SourcePrinter printer) {
        String normalizeEolInTextBlock = printer.normalizeEolInTextBlock(comment.getContent());
        printer.print(comment.getHeader());
        printer.print(normalizeEolInTextBlock);
        printer.println(comment.getFooter());
    }

    @Override
    public void prettyPrint(Node node, final SourcePrinter printer) {
        node.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                CsmComment.process((Comment) obj, SourcePrinter.this);
            }
        });
    }
}
