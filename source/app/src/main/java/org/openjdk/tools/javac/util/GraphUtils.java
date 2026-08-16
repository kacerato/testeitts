package org.openjdk.tools.javac.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Properties;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.openjdk.tools.doclint.DocLint;

public class GraphUtils {

    public static abstract class AbstractNode<D, N extends AbstractNode<D, N>> implements Node<D, N> {
        public final D data;

        public AbstractNode(D d10) {
            this.data = d10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public <A> void accept(NodeVisitor<D, N, A> nodeVisitor, A a10) {
            nodeVisitor.visitNode(this, a10);
            for (DependencyKind dependencyKind : getSupportedDependencyKinds()) {
                Iterator it = new ArrayList(getDependenciesByKind(dependencyKind)).iterator();
                while (it.hasNext()) {
                    nodeVisitor.visitDependency(dependencyKind, this, (AbstractNode) it.next(), a10);
                }
            }
        }

        public abstract Collection<? extends N> getDependenciesByKind(DependencyKind dependencyKind);

        public abstract DependencyKind[] getSupportedDependencyKinds();

        public String toString() {
            return this.data.toString();
        }
    }

    public interface DependencyKind {
    }

    public static class DotVisitor<D, N extends DottableNode<D, N>> extends NodeVisitor<D, N, StringBuilder> {
        public static String wrap(String str) {
            return (JavadocConstants.ANCHOR_PREFIX_END + str + JavadocConstants.ANCHOR_PREFIX_END).replaceAll("\n", "");
        }

        public String formatProperties(Properties properties) {
            return properties.toString().replaceAll(DocLint.SEPARATOR, " ").replaceAll("\\{", "[").replaceAll("\\}", "]");
        }

        @Override
        public void visitDependency(DependencyKind dependencyKind, N n10, N n11, StringBuilder sb2) {
            sb2.append(String.format("%s -> %s", Integer.valueOf(n10.hashCode()), Integer.valueOf(n11.hashCode())));
            sb2.append(formatProperties(n10.dependencyAttributes(n11, dependencyKind)));
            sb2.append('\n');
        }

        @Override
        public void visitNode(N n10, StringBuilder sb2) {
            sb2.append(String.format("%s ", Integer.valueOf(n10.hashCode())));
            sb2.append(formatProperties(n10.nodeAttributes()));
            sb2.append('\n');
        }
    }

    public interface DottableNode<D, N extends DottableNode<D, N>> extends Node<D, N> {
        Properties dependencyAttributes(N n10, DependencyKind dependencyKind);

        Properties nodeAttributes();
    }

    public interface Node<D, N extends Node<D, N>> {
        <A> void accept(NodeVisitor<D, N, A> nodeVisitor, A a10);
    }

    public static abstract class NodeVisitor<D, N extends Node<D, N>, A> {
        public void visit(Collection<? extends N> collection, A a10) {
            Iterator it = new ArrayList(collection).iterator();
            while (it.hasNext()) {
                ((Node) it.next()).accept(this, a10);
            }
        }

        public abstract void visitDependency(DependencyKind dependencyKind, N n10, N n11, A a10);

        public abstract void visitNode(N n10, A a10);
    }

    public static abstract class TarjanNode<D, N extends TarjanNode<D, N>> extends AbstractNode<D, N> implements Comparable<N> {
        boolean active;
        int index;
        int lowlink;

        public TarjanNode(D d10) {
            super(d10);
            this.index = -1;
        }

        public abstract Iterable<? extends N> getAllDependencies();

        @Override
        public int compareTo(N n10) {
            int i10 = this.index;
            int i11 = n10.index;
            if (i10 < i11) {
                return -1;
            }
            return i10 == i11 ? 0 : 1;
        }
    }

    public static <D, N extends TarjanNode<D, N>> List<? extends List<? extends N>> tarjan(Iterable<? extends N> iterable) {
        return new Tarjan().findSCC(iterable);
    }

    public static <D, N extends DottableNode<D, N>> String toDot(Collection<? extends N> collection, String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(String.format("digraph %s {\n", str));
        sb2.append(String.format("label = %s;\n", DotVisitor.wrap(str2)));
        new DotVisitor().visit(collection, sb2);
        sb2.append("}\n");
        return sb2.toString();
    }

    public static class Tarjan<D, N extends TarjanNode<D, N>> {
        int index;
        ListBuffer<List<N>> sccs;
        ListBuffer<N> stack;

        private Tarjan() {
            this.index = 0;
            this.sccs = new ListBuffer<>();
            this.stack = new ListBuffer<>();
        }

        private void addSCC(N n10) {
            N remove;
            ListBuffer listBuffer = new ListBuffer();
            do {
                remove = this.stack.remove();
                remove.active = false;
                listBuffer.add(remove);
            } while (remove != n10);
            this.sccs.add(listBuffer.toList());
        }

        public List<? extends List<? extends N>> findSCC(Iterable<? extends N> iterable) {
            for (N n10 : iterable) {
                if (n10.index == -1) {
                    findSCC((Tarjan<D, N>) n10);
                }
            }
            return this.sccs.toList();
        }

        private void visitNode(N n10) {
            int i10 = this.index;
            n10.index = i10;
            n10.lowlink = i10;
            this.index = i10 + 1;
            this.stack.prepend(n10);
            n10.active = true;
        }

        private void findSCC(N n10) {
            visitNode(n10);
            for (N n11 : n10.getAllDependencies()) {
                if (n11.index == -1) {
                    findSCC((Tarjan<D, N>) n11);
                    n10.lowlink = Math.min(n10.lowlink, n11.lowlink);
                } else if (this.stack.contains(n11)) {
                    n10.lowlink = Math.min(n10.lowlink, n11.index);
                }
            }
            if (n10.lowlink == n10.index) {
                addSCC(n10);
            }
        }
    }
}
