package com.github.javaparser.printer.lexicalpreservation;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.observer.AstObserver;
import com.github.javaparser.ast.observer.AstObserverAdapter;
import com.github.javaparser.ast.type.UnknownType;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Map;

@Deprecated
public class PhantomNodeLogic {
    private static final int LEVELS_TO_EXPLORE = 3;
    private static final Map<Node, Boolean> isPhantomNodeCache = Collections.synchronizedMap(new IdentityHashMap());
    private static final AstObserver cacheCleaner = new AstObserverAdapter() {
        @Override
        public void parentChange(Node observedNode, Node previousParent, Node newParent) {
            PhantomNodeLogic.isPhantomNodeCache.remove(observedNode);
        }
    };

    public static void cleanUpCache() {
        isPhantomNodeCache.clear();
    }

    private static boolean inPhantomNode(Node node, int levels) {
        return node.getParentNode().isPresent() && (isPhantomNode(node.getParentNode().get()) || inPhantomNode(node.getParentNode().get(), levels - 1));
    }

    public static boolean isPhantomNode(Node node) {
        Map<Node, Boolean> map = isPhantomNodeCache;
        if (map.containsKey(node)) {
            return map.get(node).booleanValue();
        }
        boolean z10 = true;
        if (node instanceof UnknownType) {
            return true;
        }
        if ((!node.getParentNode().isPresent() || !node.getParentNode().get().hasRange() || !node.hasRange() || node.getParentNode().get().getRange().get().contains(node.getRange().get())) && !inPhantomNode(node, 3)) {
            z10 = false;
        }
        map.put(node, Boolean.valueOf(z10));
        node.register(cacheCleaner);
        return z10;
    }
}
