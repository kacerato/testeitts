package org.openjdk.tools.javac.parser;

import java.util.HashMap;
import java.util.Map;
import org.openjdk.tools.javac.parser.Tokens;
import org.openjdk.tools.javac.tree.DCTree;
import org.openjdk.tools.javac.tree.DocCommentTable;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.DiagnosticSource;

public class LazyDocCommentTable implements DocCommentTable {
    DiagnosticSource diagSource;
    ParserFactory fac;
    Map<JCTree, Entry> table = new HashMap();

    public static class Entry {
        final Tokens.Comment comment;
        DCTree.DCDocComment tree;

        public Entry(Tokens.Comment comment) {
            this.comment = comment;
        }
    }

    public LazyDocCommentTable(ParserFactory parserFactory) {
        this.fac = parserFactory;
        this.diagSource = parserFactory.log.currentSource();
    }

    @Override
    public Tokens.Comment getComment(JCTree jCTree) {
        Entry entry = this.table.get(jCTree);
        if (entry == null) {
            return null;
        }
        return entry.comment;
    }

    @Override
    public String getCommentText(JCTree jCTree) {
        Tokens.Comment comment = getComment(jCTree);
        if (comment == null) {
            return null;
        }
        return comment.getText();
    }

    @Override
    public DCTree.DCDocComment getCommentTree(JCTree jCTree) {
        Entry entry = this.table.get(jCTree);
        if (entry == null) {
            return null;
        }
        if (entry.tree == null) {
            entry.tree = new DocCommentParser(this.fac, this.diagSource, entry.comment).parse();
        }
        return entry.tree;
    }

    @Override
    public boolean hasComment(JCTree jCTree) {
        return this.table.containsKey(jCTree);
    }

    @Override
    public void putComment(JCTree jCTree, Tokens.Comment comment) {
        this.table.put(jCTree, new Entry(comment));
    }
}
