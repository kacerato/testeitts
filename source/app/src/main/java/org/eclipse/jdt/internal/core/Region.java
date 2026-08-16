package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IRegion;

public class Region implements IRegion {
    static final boolean $assertionsDisabled = false;
    private Node root = new Node();

    public static final class Node {
        private Map<IJavaElement, Node> children = Collections.emptyMap();

        public void clearChildren() {
            this.children = Collections.emptyMap();
        }

        public int countLeafNodes() {
            if (isEmpty()) {
                return 1;
            }
            Iterator<Node> it = this.children.values().iterator();
            int i10 = 0;
            while (it.hasNext()) {
                i10 += it.next().countLeafNodes();
            }
            return i10;
        }

        public Node createChildFor(IJavaElement iJavaElement) {
            if (this.children.isEmpty()) {
                this.children = new HashMap();
            }
            Node node = this.children.get(iJavaElement);
            if (node != null) {
                return node;
            }
            Node node2 = new Node();
            this.children.put(iJavaElement, node2);
            return node2;
        }

        public Node findChildFor(IJavaElement iJavaElement) {
            return this.children.get(iJavaElement);
        }

        public int gatherLeaves(IJavaElement[] iJavaElementArr, int i10) {
            for (Map.Entry<IJavaElement, Node> entry : this.children.entrySet()) {
                Node value = entry.getValue();
                if (value.isEmpty()) {
                    iJavaElementArr[i10] = entry.getKey();
                    i10++;
                } else {
                    i10 = value.gatherLeaves(iJavaElementArr, i10);
                }
            }
            return i10;
        }

        public boolean isEmpty() {
            return this.children.isEmpty();
        }

        public void removeChild(IJavaElement iJavaElement) {
            this.children.remove(iJavaElement);
        }
    }

    private int countLeafNodes() {
        if (this.root.isEmpty()) {
            return 0;
        }
        return this.root.countLeafNodes();
    }

    private Node createNodeFor(IJavaElement iJavaElement) {
        return iJavaElement == null ? this.root : createNodeFor(getParent(iJavaElement)).createChildFor(iJavaElement);
    }

    private Node findExactNode(IJavaElement iJavaElement) {
        if (iJavaElement == null) {
            return this.root;
        }
        Node findExactNode = findExactNode(getParent(iJavaElement));
        if (findExactNode == null) {
            return null;
        }
        return findExactNode.findChildFor(iJavaElement);
    }

    private Node findMostSpecificNodeFor(IJavaElement iJavaElement) {
        if (iJavaElement == null) {
            return this.root;
        }
        Node findMostSpecificNodeFor = findMostSpecificNodeFor(getParent(iJavaElement));
        Node findChildFor = findMostSpecificNodeFor.findChildFor(iJavaElement);
        return findChildFor == null ? findMostSpecificNodeFor : findChildFor;
    }

    private void findPath(List<Node> list, IJavaElement iJavaElement) {
        if (iJavaElement == null) {
            list.add(this.root);
            return;
        }
        findPath(list, getParent(iJavaElement));
        Node findChildFor = list.get(list.size() - 1).findChildFor(iJavaElement);
        if (findChildFor != null) {
            list.add(findChildFor);
        }
    }

    @Override
    public void add(IJavaElement iJavaElement) {
        if (contains(iJavaElement)) {
            return;
        }
        createNodeFor(iJavaElement).clearChildren();
    }

    @Override
    public boolean contains(IJavaElement iJavaElement) {
        Node findMostSpecificNodeFor = findMostSpecificNodeFor(iJavaElement);
        if (findMostSpecificNodeFor == this.root) {
            return false;
        }
        return findMostSpecificNodeFor.isEmpty();
    }

    @Override
    public IJavaElement[] getElements() {
        IJavaElement[] iJavaElementArr = new IJavaElement[countLeafNodes()];
        this.root.gatherLeaves(iJavaElementArr, 0);
        return iJavaElementArr;
    }

    public IJavaElement getParent(IJavaElement iJavaElement) {
        return iJavaElement.getParent();
    }

    @Override
    public boolean remove(IJavaElement iJavaElement) {
        Node findExactNode = findExactNode(iJavaElement);
        if (findExactNode == null) {
            return false;
        }
        findExactNode.clearChildren();
        boolean isEmpty = findExactNode.isEmpty();
        ArrayList arrayList = new ArrayList();
        findPath(arrayList, iJavaElement);
        int size = arrayList.size();
        while (true) {
            int i10 = size - 1;
            if (i10 <= 0 || iJavaElement == null) {
                break;
            }
            Node node = arrayList.get(i10);
            Node node2 = arrayList.get(size - 2);
            if (!node.isEmpty()) {
                break;
            }
            node2.removeChild(iJavaElement);
            iJavaElement = getParent(iJavaElement);
            size = i10;
        }
        return isEmpty;
    }
}
