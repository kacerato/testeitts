package com.jme3.scene;

import java.util.Iterator;
import java.util.LinkedList;

public class SceneGraphIterator implements Iterable<Spatial>, Iterator<Spatial> {
    private Spatial current;
    private int depth = 0;
    private Spatial main;
    private final LinkedList<PathNode> path;

    public static class PathNode {
        Iterator<Spatial> iterator;
        Node node;

        public PathNode(Node node) {
            this.node = node;
            this.iterator = node.getChildren().iterator();
        }
    }

    public SceneGraphIterator(Spatial spatial) {
        LinkedList<PathNode> linkedList = new LinkedList<>();
        this.path = linkedList;
        if (spatial instanceof Node) {
            linkedList.add(new PathNode((Node) spatial));
            this.depth++;
        }
        this.main = spatial;
    }

    private void trim() {
        if (this.path.isEmpty() || this.path.getLast().iterator.hasNext()) {
            return;
        }
        this.path.removeLast();
        this.depth--;
        trim();
    }

    public Spatial current() {
        return this.current;
    }

    public int getDepth() {
        return (this.path.isEmpty() || this.current != this.path.getLast().node) ? this.depth : this.depth - 1;
    }

    @Override
    public boolean hasNext() {
        if (this.main != null) {
            return true;
        }
        trim();
        return !this.path.isEmpty();
    }

    public void ignoreChildren() {
        if (this.current instanceof Node) {
            this.path.removeLast();
            this.depth--;
        }
    }

    @Override
    public Iterator<Spatial> iterator() {
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Spatial next() {
        Spatial spatial = this.main;
        if (spatial != null) {
            this.current = spatial;
            this.main = null;
        } else {
            Spatial next = this.path.getLast().iterator.next();
            this.current = next;
            if (next instanceof Node) {
                Node node = (Node) next;
                if (!node.getChildren().isEmpty()) {
                    this.path.addLast(new PathNode(node));
                    this.depth++;
                }
            }
        }
        return this.current;
    }
}
