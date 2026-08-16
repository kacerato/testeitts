package com.android.tools.r8.shaking;

import com.android.tools.r8.experimental.graphinfo.GraphConsumer;
import com.android.tools.r8.experimental.graphinfo.GraphNode;
import com.android.tools.r8.internal.C5076Dz;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;

public class C11430t implements GraphConsumer {

    public final GraphConsumer f57826a;

    public final HashMap f57827b = new HashMap();

    public C11430t(GraphConsumer graphConsumer) {
        this.f57826a = graphConsumer;
    }

    public static Map b(GraphNode graphNode) {
        return new HashMap();
    }

    public static Set c(GraphNode graphNode) {
        return new HashSet();
    }

    public Set<GraphNode> a() {
        return this.f57827b.o();
    }

    @Override
    public final void acceptEdge(GraphNode graphNode, GraphNode graphNode2, C5076Dz c5076Dz) {
        ((Set) ((Map) this.f57827b.computeIfAbsent(graphNode2, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C11430t.b((GraphNode) obj);
            }
        })).computeIfAbsent(graphNode, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C11430t.c((GraphNode) obj);
            }
        })).add(c5076Dz);
        GraphConsumer graphConsumer = this.f57826a;
        if (graphConsumer != null) {
            graphConsumer.acceptEdge(graphNode, graphNode2, c5076Dz);
        }
    }

    public Map<GraphNode, Set<C5076Dz>> a(GraphNode graphNode) {
        return (Map) this.f57827b.get(graphNode);
    }
}
