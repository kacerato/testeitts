package com.android.tools.r8.experimental.graphinfo;

import java.util.Objects;

public final class AnnotationGraphNode extends GraphNode {

    private final GraphNode f36101c;

    private final ClassGraphNode f36102d;

    public AnnotationGraphNode(GraphNode graphNode, ClassGraphNode classGraphNode) {
        super(graphNode.isLibraryNode());
        this.f36101c = graphNode;
        this.f36102d = classGraphNode;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AnnotationGraphNode)) {
            return false;
        }
        AnnotationGraphNode annotationGraphNode = (AnnotationGraphNode) obj;
        return this.f36101c.equals(annotationGraphNode.f36101c) && this.f36102d.equals(annotationGraphNode.f36102d);
    }

    public GraphNode getAnnotatedNode() {
        return this.f36101c;
    }

    public ClassGraphNode getAnnotationClassNode() {
        return this.f36102d;
    }

    @Override
    public int hashCode() {
        return Objects.hash(this.f36101c, this.f36102d);
    }

    @Override
    public String toString() {
        return "annotated " + this.f36101c.toString();
    }
}
