package A2;

@InterfaceC2284t
public final class C {

    public static final int f140a = 2;

    public static final int f141b = 10;

    public static final int f142c = 20;

    public static final float f143d = 1.0f;

    public static final int f144e = 2;

    public static final String f145f = "Node %s is not an element of this graph.";

    public static final String f146g = "Edge %s is not an element of this graph.";

    public static final String f147h = "Edge %s already exists between the following nodes: %s, so it cannot be reused to connect the following nodes: %s.";

    public static final String f148i = "Cannot call edgeConnecting() when parallel edges exist between %s and %s. Consider calling edgesConnecting() instead.";

    public static final String f149j = "Nodes %s and %s are already connected by a different edge. To construct a graph that allows parallel edges, call allowsParallelEdges(true) on the Builder.";

    public static final String f150k = "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder.";

    public static final String f151l = "Cannot call source()/target() on a EndpointPair from an undirected graph. Consider calling adjacentNode(node) if you already have a node, or nodeU()/nodeV() if you don't.";

    public static final String f152m = "Edge %s already exists in the graph.";

    public static final String f153n = "Mismatch: unordered endpoints cannot be used with directed graphs";

    public enum a {
        EDGE_EXISTS
    }
}
