package org.apache.commons.math3.geometry.partitioning.utilities;

import java.lang.Comparable;

@Deprecated
public class AVLTree<T extends Comparable<T>> {
    private AVLTree<T>.Node top = null;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew;

        static {
            int[] iArr = new int[Skew.values().length];
            $SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew = iArr;
            try {
                iArr[Skew.LEFT_HIGH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew[Skew.RIGHT_HIGH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public class Node {
        private T element;
        private AVLTree<T>.Node parent;
        private AVLTree<T>.Node left = null;
        private AVLTree<T>.Node right = null;
        private Skew skew = Skew.BALANCED;

        public Node(T t10, AVLTree<T>.Node node) {
            this.element = t10;
            this.parent = node;
        }

        private boolean rebalanceLeftGrown() {
            int[] iArr = AnonymousClass1.$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew;
            int i10 = iArr[this.skew.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    this.skew = Skew.LEFT_HIGH;
                    return true;
                }
                this.skew = Skew.BALANCED;
                return false;
            }
            AVLTree<T>.Node node = this.left;
            Skew skew = node.skew;
            Skew skew2 = Skew.LEFT_HIGH;
            if (skew == skew2) {
                rotateCW();
                Skew skew3 = Skew.BALANCED;
                this.skew = skew3;
                this.right.skew = skew3;
            } else {
                Skew skew4 = node.right.skew;
                node.rotateCCW();
                rotateCW();
                int i11 = iArr[skew4.ordinal()];
                if (i11 == 1) {
                    this.left.skew = Skew.BALANCED;
                    this.right.skew = Skew.RIGHT_HIGH;
                } else if (i11 != 2) {
                    AVLTree<T>.Node node2 = this.left;
                    Skew skew5 = Skew.BALANCED;
                    node2.skew = skew5;
                    this.right.skew = skew5;
                } else {
                    this.left.skew = skew2;
                    this.right.skew = Skew.BALANCED;
                }
                this.skew = Skew.BALANCED;
            }
            return false;
        }

        private boolean rebalanceLeftShrunk() {
            int[] iArr = AnonymousClass1.$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew;
            int i10 = iArr[this.skew.ordinal()];
            if (i10 == 1) {
                this.skew = Skew.BALANCED;
                return true;
            }
            if (i10 != 2) {
                this.skew = Skew.RIGHT_HIGH;
                return false;
            }
            AVLTree<T>.Node node = this.right;
            Skew skew = node.skew;
            Skew skew2 = Skew.RIGHT_HIGH;
            if (skew == skew2) {
                rotateCCW();
                Skew skew3 = Skew.BALANCED;
                this.skew = skew3;
                this.left.skew = skew3;
                return true;
            }
            Skew skew4 = Skew.BALANCED;
            if (skew == skew4) {
                rotateCCW();
                this.skew = Skew.LEFT_HIGH;
                this.left.skew = skew2;
                return false;
            }
            Skew skew5 = node.left.skew;
            node.rotateCW();
            rotateCCW();
            int i11 = iArr[skew5.ordinal()];
            if (i11 == 1) {
                this.left.skew = skew4;
                this.right.skew = skew2;
            } else if (i11 != 2) {
                this.left.skew = skew4;
                this.right.skew = skew4;
            } else {
                this.left.skew = Skew.LEFT_HIGH;
                this.right.skew = skew4;
            }
            this.skew = skew4;
            return true;
        }

        private boolean rebalanceRightGrown() {
            int[] iArr = AnonymousClass1.$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew;
            int i10 = iArr[this.skew.ordinal()];
            if (i10 == 1) {
                this.skew = Skew.BALANCED;
                return false;
            }
            if (i10 != 2) {
                this.skew = Skew.RIGHT_HIGH;
                return true;
            }
            AVLTree<T>.Node node = this.right;
            Skew skew = node.skew;
            Skew skew2 = Skew.RIGHT_HIGH;
            if (skew == skew2) {
                rotateCCW();
                Skew skew3 = Skew.BALANCED;
                this.skew = skew3;
                this.left.skew = skew3;
            } else {
                Skew skew4 = node.left.skew;
                node.rotateCW();
                rotateCCW();
                int i11 = iArr[skew4.ordinal()];
                if (i11 == 1) {
                    this.left.skew = Skew.BALANCED;
                    this.right.skew = skew2;
                } else if (i11 != 2) {
                    AVLTree<T>.Node node2 = this.left;
                    Skew skew5 = Skew.BALANCED;
                    node2.skew = skew5;
                    this.right.skew = skew5;
                } else {
                    this.left.skew = Skew.LEFT_HIGH;
                    this.right.skew = Skew.BALANCED;
                }
                this.skew = Skew.BALANCED;
            }
            return false;
        }

        private boolean rebalanceRightShrunk() {
            int[] iArr = AnonymousClass1.$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew;
            int i10 = iArr[this.skew.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    this.skew = Skew.LEFT_HIGH;
                    return false;
                }
                this.skew = Skew.BALANCED;
                return true;
            }
            AVLTree<T>.Node node = this.left;
            Skew skew = node.skew;
            Skew skew2 = Skew.LEFT_HIGH;
            if (skew == skew2) {
                rotateCW();
                Skew skew3 = Skew.BALANCED;
                this.skew = skew3;
                this.right.skew = skew3;
                return true;
            }
            Skew skew4 = Skew.BALANCED;
            if (skew == skew4) {
                rotateCW();
                this.skew = Skew.RIGHT_HIGH;
                this.right.skew = skew2;
                return false;
            }
            Skew skew5 = node.right.skew;
            node.rotateCCW();
            rotateCW();
            int i11 = iArr[skew5.ordinal()];
            if (i11 == 1) {
                this.left.skew = skew4;
                this.right.skew = Skew.RIGHT_HIGH;
            } else if (i11 != 2) {
                this.left.skew = skew4;
                this.right.skew = skew4;
            } else {
                this.left.skew = skew2;
                this.right.skew = skew4;
            }
            this.skew = skew4;
            return true;
        }

        private void rotateCCW() {
            T t10 = this.element;
            AVLTree<T>.Node node = this.right;
            this.element = (T) node.element;
            node.element = t10;
            this.right = node.right;
            node.right = node.left;
            node.left = this.left;
            this.left = node;
            AVLTree<T>.Node node2 = this.right;
            if (node2 != null) {
                node2.parent = this;
            }
            AVLTree<T>.Node node3 = node.left;
            if (node3 != null) {
                node3.parent = node;
            }
        }

        private void rotateCW() {
            T t10 = this.element;
            AVLTree<T>.Node node = this.left;
            this.element = (T) node.element;
            node.element = t10;
            this.left = node.left;
            node.left = node.right;
            node.right = this.right;
            this.right = node;
            AVLTree<T>.Node node2 = this.left;
            if (node2 != null) {
                node2.parent = this;
            }
            AVLTree<T>.Node node3 = node.right;
            if (node3 != null) {
                node3.parent = node;
            }
        }

        public void delete() {
            Node largest;
            boolean z10;
            AVLTree<T>.Node node;
            AVLTree<T>.Node node2 = this.parent;
            if (node2 == null && this.left == null && this.right == null) {
                this.element = null;
                AVLTree.this.top = null;
                return;
            }
            AVLTree<T>.Node node3 = this.left;
            if (node3 == null && this.right == null) {
                this.element = null;
                node = null;
                z10 = this == node2.left;
                largest = this;
            } else {
                largest = node3 != null ? node3.getLargest() : this.right.getSmallest();
                this.element = largest.element;
                z10 = largest == largest.parent.left;
                node = largest.left;
                if (node == null) {
                    node = largest.right;
                }
            }
            AVLTree<T>.Node node4 = largest.parent;
            if (z10) {
                node4.left = node;
            } else {
                node4.right = node;
            }
            if (node != null) {
                node.parent = node4;
            }
            while (true) {
                if (z10) {
                    if (!node4.rebalanceLeftShrunk()) {
                        return;
                    }
                } else if (!node4.rebalanceRightShrunk()) {
                    return;
                }
                AVLTree<T>.Node node5 = node4.parent;
                if (node5 == null) {
                    return;
                }
                z10 = node4 == node5.left;
                node4 = node5;
            }
        }

        public T getElement() {
            return this.element;
        }

        public AVLTree<T>.Node getLargest() {
            Node node = this;
            while (true) {
                AVLTree<T>.Node node2 = node.right;
                if (node2 == null) {
                    return node;
                }
                node = node2;
            }
        }

        public AVLTree<T>.Node getNext() {
            AVLTree<T>.Node smallest;
            AVLTree<T>.Node node = this.right;
            if (node != null && (smallest = node.getSmallest()) != null) {
                return smallest;
            }
            Node node2 = this;
            while (true) {
                AVLTree<T>.Node node3 = node2.parent;
                if (node3 == null) {
                    return null;
                }
                if (node2 != node3.right) {
                    return node3;
                }
                node2 = node3;
            }
        }

        public AVLTree<T>.Node getPrevious() {
            AVLTree<T>.Node largest;
            AVLTree<T>.Node node = this.left;
            if (node != null && (largest = node.getLargest()) != null) {
                return largest;
            }
            Node node2 = this;
            while (true) {
                AVLTree<T>.Node node3 = node2.parent;
                if (node3 == null) {
                    return null;
                }
                if (node2 != node3.left) {
                    return node3;
                }
                node2 = node3;
            }
        }

        public AVLTree<T>.Node getSmallest() {
            Node node = this;
            while (true) {
                AVLTree<T>.Node node2 = node.left;
                if (node2 == null) {
                    return node;
                }
                node = node2;
            }
        }

        public boolean insert(T t10) {
            if (t10.compareTo(this.element) < 0) {
                AVLTree<T>.Node node = this.left;
                if (node == null) {
                    this.left = new Node(t10, this);
                    return rebalanceLeftGrown();
                }
                if (node.insert(t10)) {
                    return rebalanceLeftGrown();
                }
                return false;
            }
            AVLTree<T>.Node node2 = this.right;
            if (node2 == null) {
                this.right = new Node(t10, this);
                return rebalanceRightGrown();
            }
            if (node2.insert(t10)) {
                return rebalanceRightGrown();
            }
            return false;
        }

        public int size() {
            AVLTree<T>.Node node = this.left;
            int size = (node == null ? 0 : node.size()) + 1;
            AVLTree<T>.Node node2 = this.right;
            return size + (node2 != null ? node2.size() : 0);
        }
    }

    public enum Skew {
        LEFT_HIGH,
        RIGHT_HIGH,
        BALANCED
    }

    public boolean delete(T t10) {
        if (t10 != null) {
            for (AVLTree<T>.Node notSmaller = getNotSmaller(t10); notSmaller != null; notSmaller = notSmaller.getNext()) {
                if (((Node) notSmaller).element == t10) {
                    notSmaller.delete();
                    return true;
                }
                if (((Node) notSmaller).element.compareTo(t10) > 0) {
                    return false;
                }
            }
        }
        return false;
    }

    public AVLTree<T>.Node getLargest() {
        AVLTree<T>.Node node = this.top;
        if (node == null) {
            return null;
        }
        return node.getLargest();
    }

    public AVLTree<T>.Node getNotLarger(T t10) {
        AVLTree<T>.Node node = this.top;
        AVLTree<T>.Node node2 = null;
        while (node != null) {
            if (((Node) node).element.compareTo(t10) > 0) {
                if (((Node) node).left == null) {
                    return node2;
                }
                node = ((Node) node).left;
            } else {
                if (((Node) node).right == null) {
                    return node;
                }
                node2 = node;
                node = ((Node) node).right;
            }
        }
        return null;
    }

    public AVLTree<T>.Node getNotSmaller(T t10) {
        AVLTree<T>.Node node = this.top;
        AVLTree<T>.Node node2 = null;
        while (node != null) {
            if (((Node) node).element.compareTo(t10) < 0) {
                if (((Node) node).right == null) {
                    return node2;
                }
                node = ((Node) node).right;
            } else {
                if (((Node) node).left == null) {
                    return node;
                }
                node2 = node;
                node = ((Node) node).left;
            }
        }
        return null;
    }

    public AVLTree<T>.Node getSmallest() {
        AVLTree<T>.Node node = this.top;
        if (node == null) {
            return null;
        }
        return node.getSmallest();
    }

    public void insert(T t10) {
        if (t10 != null) {
            AVLTree<T>.Node node = this.top;
            if (node == null) {
                this.top = new Node(t10, null);
            } else {
                node.insert(t10);
            }
        }
    }

    public boolean isEmpty() {
        return this.top == null;
    }

    public int size() {
        AVLTree<T>.Node node = this.top;
        if (node == null) {
            return 0;
        }
        return node.size();
    }
}
