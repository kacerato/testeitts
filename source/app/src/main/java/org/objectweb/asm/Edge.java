package org.objectweb.asm;

final class Edge {
    static final int EXCEPTION = Integer.MAX_VALUE;
    static final int JUMP = 0;
    final int info;
    Edge nextEdge;
    final Label successor;

    public Edge(int i10, Label label, Edge edge) {
        this.info = i10;
        this.successor = label;
        this.nextEdge = edge;
    }
}
