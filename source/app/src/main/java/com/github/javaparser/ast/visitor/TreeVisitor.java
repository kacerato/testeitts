package com.github.javaparser.ast.visitor;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.visitor.TreeVisitor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.function.Consumer;

public abstract class TreeVisitor {
    public abstract void process(Node node);

    /* JADX WARN: Multi-variable type inference failed */
    public void visitBreadthFirst(Node node) {
        LinkedList linkedList = new LinkedList();
        linkedList.offer(node);
        while (linkedList.size() > 0) {
            Iterator<Node> it = ((Node) linkedList.peek()).getChildNodes().iterator();
            while (it.hasNext()) {
                linkedList.offer(it.next());
            }
            process((Node) linkedList.poll());
        }
    }

    public void visitDirectChildren(Node node) {
        new ArrayList(node.getChildNodes()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                TreeVisitor.this.process((Node) obj);
            }
        });
    }

    public void visitLeavesFirst(Node node) {
        Iterator<Node> it = node.getChildNodes().iterator();
        while (it.hasNext()) {
            visitLeavesFirst(it.next());
        }
        process(node);
    }

    public void visitPostOrder(Node node) {
        new ArrayList(node.getChildNodes()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                TreeVisitor.this.visitPostOrder((Node) obj);
            }
        });
        process(node);
    }

    public void visitPreOrder(Node node) {
        process(node);
        new ArrayList(node.getChildNodes()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                TreeVisitor.this.visitPreOrder((Node) obj);
            }
        });
    }
}
