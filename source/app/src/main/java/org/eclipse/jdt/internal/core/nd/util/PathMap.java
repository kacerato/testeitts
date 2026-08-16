package org.eclipse.jdt.internal.core.nd.util;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;

public class PathMap<T> {
    private Node<T> root = new DeviceNode();

    public static class DeviceNode<T> extends Node<T> {
        Node<T> noDevice;

        public DeviceNode() {
            super(-1);
            this.noDevice = new Node<>(0);
        }

        @Override
        public IPath buildChildPath(IPath iPath, String str) {
            IPath append = Path.EMPTY.append(iPath);
            append.setDevice(str);
            return append;
        }

        @Override
        public Node<T> createChild(String str) {
            return str == null ? this.noDevice : super.createChild(str);
        }

        @Override
        public Node<T> getChild(String str) {
            return str == null ? this.noDevice : super.getChild(str);
        }

        @Override
        public String getSegment(IPath iPath) {
            return iPath.getDevice();
        }

        @Override
        public void toString(StringBuilder sb2, IPath iPath) {
            this.noDevice.toString(sb2, iPath);
            super.toString(sb2, iPath);
        }
    }

    public static class Node<T> {
        Map<String, Node<T>> children;
        int depth;
        boolean exists;
        T value;

        public Node(int i10) {
            this.depth = i10;
        }

        public void addAllKeys(Set<IPath> set, IPath iPath) {
            if (this.exists) {
                set.add(iPath);
            }
            Map<String, Node<T>> map = this.children;
            if (map == null) {
                return;
            }
            for (Map.Entry<String, Node<T>> entry : map.entrySet()) {
                entry.getValue().addAllKeys(set, buildChildPath(iPath, entry.getKey()));
            }
        }

        public IPath buildChildPath(IPath iPath, String str) {
            return iPath.append(str);
        }

        public Node<T> createChild(String str) {
            if (this.children == null) {
                this.children = new HashMap();
            }
            Node<T> node = this.children.get(str);
            if (node != null) {
                return node;
            }
            Node<T> node2 = new Node<>(this.depth + 1);
            this.children.put(str, node2);
            return node2;
        }

        public Node<T> createNode(IPath iPath) {
            if (this.depth != iPath.segmentCount()) {
                return createChild(getSegment(iPath)).createNode(iPath);
            }
            this.exists = true;
            return this;
        }

        public Node<T> getChild(String str) {
            Map<String, Node<T>> map = this.children;
            if (map == null) {
                return null;
            }
            return map.get(str);
        }

        public Node<T> getMostSpecificNode(IPath iPath) {
            Node<T> child;
            if (this.depth == iPath.segmentCount() || (child = getChild(getSegment(iPath))) == null) {
                return this;
            }
            Node<T> mostSpecificNode = child.getMostSpecificNode(iPath);
            return mostSpecificNode.exists ? mostSpecificNode : this;
        }

        public String getSegment(IPath iPath) {
            return iPath.segment(this.depth);
        }

        public void toString(StringBuilder sb2, IPath iPath) {
            if (this.exists) {
                sb2.append("[");
                sb2.append((Object) iPath);
                sb2.append("] = ");
                sb2.append((Object) this.value);
                sb2.append("\n");
            }
            Map<String, Node<T>> map = this.children;
            if (map != null) {
                for (Map.Entry<String, Node<T>> entry : map.entrySet()) {
                    entry.getValue().toString(sb2, buildChildPath(iPath, entry.getKey()));
                }
            }
        }
    }

    public boolean containsKeyStartingWith(IPath iPath) {
        return this.root.getMostSpecificNode(iPath).depth == iPath.segmentCount();
    }

    public boolean containsPrefixOf(IPath iPath) {
        return this.root.getMostSpecificNode(iPath).exists;
    }

    public T get(IPath iPath) {
        Node<T> mostSpecificNode = this.root.getMostSpecificNode(iPath);
        if (!mostSpecificNode.exists || mostSpecificNode.depth < iPath.segmentCount()) {
            return null;
        }
        return mostSpecificNode.value;
    }

    public T getMostSpecific(IPath iPath) {
        Node<T> mostSpecificNode = this.root.getMostSpecificNode(iPath);
        if (mostSpecificNode.exists) {
            return mostSpecificNode.value;
        }
        return null;
    }

    public Set<IPath> keySet() {
        HashSet hashSet = new HashSet();
        this.root.addAllKeys(hashSet, Path.EMPTY);
        return hashSet;
    }

    public T put(IPath iPath, T t10) {
        Node<T> createNode = this.root.createNode(iPath);
        T t11 = createNode.value;
        createNode.value = t10;
        return t11;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        this.root.toString(sb2, Path.EMPTY);
        return sb2.toString();
    }
}
