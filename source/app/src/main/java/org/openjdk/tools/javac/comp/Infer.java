package org.openjdk.tools.javac.comp;

import java.io.BufferedWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.BiPredicate;
import java.util.function.Predicate;
import java.util.stream.Stream;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javac.code.Lint;
import org.openjdk.tools.javac.code.Source;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.comp.Attr;
import org.openjdk.tools.javac.comp.Check;
import org.openjdk.tools.javac.comp.DeferredAttr;
import org.openjdk.tools.javac.comp.Infer;
import org.openjdk.tools.javac.comp.Resolve;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Filter;
import org.openjdk.tools.javac.util.GraphUtils;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Options;
import org.openjdk.tools.javac.util.Pair;
import org.openjdk.tools.javac.util.StringUtils;
import org.openjdk.tools.javac.util.Warner;

public class Infer {
    static final int MAX_INCORPORATION_STEPS = 10000;
    boolean allowGraphInference;
    Check chk;
    private final String dependenciesFolder;
    JCDiagnostic.Factory diags;
    final InferenceContext emptyContext;
    protected final InferenceException inferenceException;
    Log log;
    private List<String> pendingGraphs;
    Resolve rs;
    Symtab syms;
    Types types;
    protected static final Context.Key<Infer> inferKey = new Context.Key<>();
    public static final Type anyPoly = new Type.JCNoType();
    Types.TypeMapping<Void> fromTypeVarFun = new Type.StructuralTypeMapping<Void>() {
        @Override
        public Type visitTypeVar(Type.TypeVar typeVar, Void r62) {
            Type.UndetVar undetVar = new Type.UndetVar(typeVar, Infer.this.incorporationEngine(), Infer.this.types);
            if ((typeVar.tsym.flags() & 140737488355328L) != 0) {
                undetVar.setThrow();
            }
            return undetVar;
        }
    };
    AbstractIncorporationEngine legacyEngine = new AbstractIncorporationEngine() {
        @Override
        public List<IncorporationAction> getIncorporationActions(Type.UndetVar undetVar, Type.UndetVar.InferenceBound inferenceBound, Type type, boolean z10) {
            ListBuffer listBuffer = new ListBuffer();
            if (undetVar.getInst() != null) {
                listBuffer.add(new CheckInst(Infer.this, undetVar, inferenceBound, new Type.UndetVar.InferenceBound[0]));
            }
            listBuffer.add(new EqCheckLegacy(undetVar, type, inferenceBound));
            return listBuffer.toList();
        }
    };
    AbstractIncorporationEngine graphEngine = new AbstractIncorporationEngine() {
        @Override
        public List<IncorporationAction> getIncorporationActions(Type.UndetVar undetVar, Type.UndetVar.InferenceBound inferenceBound, Type type, boolean z10) {
            ListBuffer listBuffer = new ListBuffer();
            if (undetVar.getInst() != null) {
                listBuffer.add(new CheckInst(Infer.this, undetVar, inferenceBound, new Type.UndetVar.InferenceBound[0]));
            }
            listBuffer.add(new CheckBounds(Infer.this, undetVar, type, inferenceBound));
            if (z10) {
                return listBuffer.toList();
            }
            if (inferenceBound == Type.UndetVar.InferenceBound.UPPER) {
                listBuffer.add(new CheckUpperBounds(undetVar, type));
            }
            listBuffer.add(new PropagateBounds(undetVar, type, inferenceBound));
            return listBuffer.toList();
        }
    };
    Map<IncorporationBinaryOp, Boolean> incorporationCache = new HashMap();

    public static class AnonymousClass4 {
        static final int[] $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag;

        static {
            int[] iArr = new int[JCTree.Tag.values().length];
            $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag = iArr;
            try {
                iArr[JCTree.Tag.TYPECAST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.EXEC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public abstract class AbstractIncorporationEngine implements Type.UndetVar.UndetVarListener {
        public AbstractIncorporationEngine() {
        }

        public abstract List<IncorporationAction> getIncorporationActions(Type.UndetVar undetVar, Type.UndetVar.InferenceBound inferenceBound, Type type, boolean z10);

        @Override
        public void varBoundChanged(Type.UndetVar undetVar, Type.UndetVar.InferenceBound inferenceBound, Type type, boolean z10) {
            if (undetVar.isCaptured()) {
                return;
            }
            undetVar.incorporationActions.addAll(getIncorporationActions(undetVar, inferenceBound, type, z10));
        }

        @Override
        public void varInstantiated(Type.UndetVar undetVar) {
            undetVar.incorporationActions.addFirst(new SubstBounds(undetVar));
        }
    }

    public abstract class BestLeafSolver extends LeafSolver {
        final Pair<List<GraphSolver.InferenceGraph.Node>, Integer> noPath;
        final Map<GraphSolver.InferenceGraph.Node, Pair<List<GraphSolver.InferenceGraph.Node>, Integer>> treeCache;
        List<Type> varsToSolve;

        public BestLeafSolver(List<Type> list) {
            super();
            this.treeCache = new HashMap();
            this.noPath = new Pair<>(null, Integer.MAX_VALUE);
            this.varsToSolve = list;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Pair<List<GraphSolver.InferenceGraph.Node>, Integer> computeTreeToLeafs(GraphSolver.InferenceGraph.Node node) {
            Pair<List<GraphSolver.InferenceGraph.Node>, Integer> pair = this.treeCache.get(node);
            if (pair == null) {
                if (node.isLeaf()) {
                    pair = new Pair<>(List.of(node), Integer.valueOf(((ListBuffer) node.data).length()));
                } else {
                    pair = new Pair<>(List.of(node), Integer.valueOf(((ListBuffer) node.data).length()));
                    for (GraphSolver.InferenceGraph.Node node2 : node.getAllDependencies()) {
                        if (node2 != node) {
                            Pair<List<GraphSolver.InferenceGraph.Node>, Integer> computeTreeToLeafs = computeTreeToLeafs(node2);
                            pair = new Pair<>(pair.fst.prependList(computeTreeToLeafs.fst), Integer.valueOf(pair.snd.intValue() + computeTreeToLeafs.snd.intValue()));
                        }
                    }
                }
                this.treeCache.put(node, pair);
            }
            return pair;
        }

        @Override
        public GraphSolver.InferenceGraph.Node pickNode(GraphSolver.InferenceGraph inferenceGraph) {
            this.treeCache.clear();
            Pair<List<GraphSolver.InferenceGraph.Node>, Integer> pair = this.noPath;
            Iterator<GraphSolver.InferenceGraph.Node> it = inferenceGraph.nodes.iterator();
            while (it.hasNext()) {
                GraphSolver.InferenceGraph.Node next = it.next();
                if (!Collections.disjoint((Collection) next.data, this.varsToSolve)) {
                    Pair<List<GraphSolver.InferenceGraph.Node>, Integer> computeTreeToLeafs = computeTreeToLeafs(next);
                    if (computeTreeToLeafs.snd.intValue() < pair.snd.intValue()) {
                        pair = computeTreeToLeafs;
                    }
                }
            }
            if (pair != this.noPath) {
                return pair.fst.head;
            }
            throw new GraphStrategy.NodeNotFoundException(inferenceGraph);
        }
    }

    public static class BoundFilter implements Filter<Type> {
        InferenceContext inferenceContext;

        public BoundFilter(InferenceContext inferenceContext) {
            this.inferenceContext = inferenceContext;
        }

        @Override
        public boolean accepts(Type type) {
            return (type.isErroneous() || this.inferenceContext.free(type) || type.hasTag(TypeTag.BOT)) ? false : true;
        }
    }

    public class CheckBounds extends IncorporationAction {
        Type.UndetVar.InferenceBound from;
        BiPredicate<InferenceContext, Type> optFilter;
        BiFunction<InferenceContext, Type, Type> typeFunc;

        public CheckBounds(Infer infer, Type.UndetVar undetVar, Type type, Type.UndetVar.InferenceBound inferenceBound) {
            this(undetVar, type, new BiFunction() {
                @Override
                public final Object apply(Object obj, Object obj2) {
                    return ((InferenceContext) obj).asUndetVar((Type) obj2);
                }
            }, null, inferenceBound);
        }

        @Override
        public void apply(InferenceContext inferenceContext, Warner warner) {
            Type apply = this.typeFunc.apply(inferenceContext, this.f103022t);
            this.f103022t = apply;
            BiPredicate<InferenceContext, Type> biPredicate = this.optFilter;
            if (biPredicate == null || !biPredicate.test(inferenceContext, apply)) {
                Iterator<E> it = boundsToCheck().iterator();
                while (it.hasNext()) {
                    Type.UndetVar.InferenceBound inferenceBound = (Type.UndetVar.InferenceBound) it.next();
                    Iterator<Type> it2 = this.uv.getBounds(inferenceBound).iterator();
                    while (it2.hasNext()) {
                        Type apply2 = this.typeFunc.apply(inferenceContext, it2.next());
                        BiPredicate<InferenceContext, Type> biPredicate2 = this.optFilter;
                        if (biPredicate2 == null || !biPredicate2.test(inferenceContext, apply2)) {
                            if (!checkBound(this.f103022t, apply2, this.from, inferenceBound, warner)) {
                                report(this.from, inferenceBound);
                            }
                        }
                    }
                }
            }
        }

        public EnumSet<Type.UndetVar.InferenceBound> boundsToCheck() {
            Type.UndetVar.InferenceBound inferenceBound = this.from;
            return inferenceBound == Type.UndetVar.InferenceBound.EQ ? EnumSet.allOf(Type.UndetVar.InferenceBound.class) : EnumSet.complementOf(EnumSet.of(inferenceBound));
        }

        public boolean checkBound(Type type, Type type2, Type.UndetVar.InferenceBound inferenceBound, Type.UndetVar.InferenceBound inferenceBound2, Warner warner) {
            return inferenceBound.lessThan(inferenceBound2) ? isSubtype(type, type2, warner) : inferenceBound2.lessThan(inferenceBound) ? isSubtype(type2, type, warner) : isSameType(type, type2);
        }

        @Override
        public IncorporationAction dup(Type.UndetVar undetVar) {
            return new CheckBounds(undetVar, this.f103022t, this.typeFunc, this.optFilter, this.from);
        }

        public void report(Type.UndetVar.InferenceBound inferenceBound, Type.UndetVar.InferenceBound inferenceBound2) {
            if (inferenceBound == inferenceBound2) {
                Infer.this.reportBoundError(this.uv, inferenceBound);
            } else if (inferenceBound == Type.UndetVar.InferenceBound.LOWER || inferenceBound2 == Type.UndetVar.InferenceBound.EQ) {
                Infer.this.reportBoundError(this.uv, inferenceBound2, inferenceBound);
            } else {
                Infer.this.reportBoundError(this.uv, inferenceBound, inferenceBound2);
            }
        }

        @Override
        public String toString() {
            return String.format("%s[undet=%s,t=%s,bound=%s]", getClass().getSimpleName(), this.uv.qtype, this.f103022t, this.from);
        }

        public CheckBounds(Type.UndetVar undetVar, Type type, BiFunction<InferenceContext, Type, Type> biFunction, BiPredicate<InferenceContext, Type> biPredicate, Type.UndetVar.InferenceBound inferenceBound) {
            super(undetVar, type);
            this.from = inferenceBound;
            this.typeFunc = biFunction;
            this.optFilter = biPredicate;
        }
    }

    public class CheckInst extends CheckBounds {
        EnumSet<Type.UndetVar.InferenceBound> to;

        public CheckInst(Infer infer, Type.UndetVar undetVar, Type.UndetVar.InferenceBound inferenceBound, Type.UndetVar.InferenceBound... inferenceBoundArr) {
            this(undetVar, EnumSet.of(inferenceBound, inferenceBoundArr));
        }

        @Override
        public EnumSet<Type.UndetVar.InferenceBound> boundsToCheck() {
            return this.to;
        }

        @Override
        public IncorporationAction dup(Type.UndetVar undetVar) {
            return new CheckInst(undetVar, this.to);
        }

        @Override
        public void report(Type.UndetVar.InferenceBound inferenceBound, Type.UndetVar.InferenceBound inferenceBound2) {
            Infer.this.reportInstError(this.uv, inferenceBound2);
        }

        public CheckInst(Type.UndetVar undetVar, EnumSet<Type.UndetVar.InferenceBound> enumSet) {
            super(Infer.this, undetVar, undetVar.getInst(), Type.UndetVar.InferenceBound.EQ);
            this.to = enumSet;
        }
    }

    public class CheckUpperBounds extends IncorporationAction {
        public CheckUpperBounds(Type.UndetVar undetVar, Type type) {
            super(undetVar, type);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void apply(InferenceContext inferenceContext, Warner warner) {
            Stream<Type> stream = this.uv.getBounds(Type.UndetVar.InferenceBound.UPPER).stream();
            final Types types = Infer.this.types;
            types.getClass();
            Iterator it = ((List) stream.collect(types.closureCollector(true, new BiPredicate() {
                @Override
                public final boolean test(Object obj, Object obj2) {
                    return Types.this.isSameType((Type) obj, (Type) obj2);
                }
            }))).iterator();
            while (it.hasNext()) {
                Type type = (Type) it.next();
                Type type2 = this.f103022t;
                if (type2 != type && type2 != type) {
                    TypeTag typeTag = TypeTag.WILDCARD;
                    if (!type2.hasTag(typeTag) && !type.hasTag(typeTag)) {
                        Iterator it2 = Infer.this.getParameterizedSupers(this.f103022t, type).iterator();
                        while (it2.hasNext()) {
                            Pair pair = (Pair) it2.next();
                            List allparams = ((Type) pair.fst).allparams();
                            List allparams2 = ((Type) pair.snd).allparams();
                            while (allparams.nonEmpty() && allparams2.nonEmpty()) {
                                Type type3 = (Type) allparams.head;
                                TypeTag typeTag2 = TypeTag.WILDCARD;
                                if (!type3.hasTag(typeTag2) && !((Type) allparams2.head).hasTag(typeTag2) && !isSameType(inferenceContext.asUndetVar((Type) allparams.head), inferenceContext.asUndetVar((Type) allparams2.head))) {
                                    Infer.this.reportBoundError(this.uv, Type.UndetVar.InferenceBound.UPPER);
                                }
                                allparams = allparams.tail;
                                allparams2 = allparams2.tail;
                            }
                            Assert.check(allparams.isEmpty() && allparams2.isEmpty());
                        }
                    }
                }
            }
        }

        @Override
        public IncorporationAction dup(Type.UndetVar undetVar) {
            return new CheckUpperBounds(undetVar, this.f103022t);
        }
    }

    public enum DependencyKind implements GraphUtils.DependencyKind {
        BOUND("dotted"),
        STUCK("dashed");

        final String dotSyle;

        DependencyKind(String str) {
            this.dotSyle = str;
        }
    }

    public class EqCheckLegacy extends CheckBounds {
        public EqCheckLegacy(Type.UndetVar undetVar, Type type, Type.UndetVar.InferenceBound inferenceBound) {
            super(undetVar, type, new BiFunction() {
                @Override
                public final Object apply(Object obj, Object obj2) {
                    return ((InferenceContext) obj).asInstType((Type) obj2);
                }
            }, new BiPredicate() {
                @Override
                public final boolean test(Object obj, Object obj2) {
                    return ((InferenceContext) obj).free((Type) obj2);
                }
            }, inferenceBound);
        }

        @Override
        public EnumSet<Type.UndetVar.InferenceBound> boundsToCheck() {
            Type.UndetVar.InferenceBound inferenceBound = this.from;
            Type.UndetVar.InferenceBound inferenceBound2 = Type.UndetVar.InferenceBound.EQ;
            return inferenceBound == inferenceBound2 ? EnumSet.allOf(Type.UndetVar.InferenceBound.class) : EnumSet.of(inferenceBound2);
        }

        @Override
        public IncorporationAction dup(Type.UndetVar undetVar) {
            return new EqCheckLegacy(undetVar, this.f103022t, this.from);
        }
    }

    public interface FreeTypeListener {
        void typesInferred(InferenceContext inferenceContext);
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EQ' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class GraphInferenceSteps {
        private static final GraphInferenceSteps[] $VALUES;
        public static final GraphInferenceSteps EQ;
        public static final GraphInferenceSteps EQ_LOWER;
        public static final GraphInferenceSteps EQ_LOWER_THROWS_UPPER_CAPTURED;
        final EnumSet<InferenceStep> steps;

        static {
            InferenceStep inferenceStep = InferenceStep.EQ;
            GraphInferenceSteps graphInferenceSteps = new GraphInferenceSteps("EQ", 0, EnumSet.of(inferenceStep));
            EQ = graphInferenceSteps;
            InferenceStep inferenceStep2 = InferenceStep.LOWER;
            GraphInferenceSteps graphInferenceSteps2 = new GraphInferenceSteps("EQ_LOWER", 1, EnumSet.of(inferenceStep, inferenceStep2));
            EQ_LOWER = graphInferenceSteps2;
            GraphInferenceSteps graphInferenceSteps3 = new GraphInferenceSteps("EQ_LOWER_THROWS_UPPER_CAPTURED", 2, EnumSet.of(inferenceStep, inferenceStep2, InferenceStep.UPPER, InferenceStep.THROWS, InferenceStep.CAPTURED));
            EQ_LOWER_THROWS_UPPER_CAPTURED = graphInferenceSteps3;
            $VALUES = new GraphInferenceSteps[]{graphInferenceSteps, graphInferenceSteps2, graphInferenceSteps3};
        }

        private GraphInferenceSteps(String str, int i10, EnumSet enumSet) {
            this.steps = enumSet;
        }

        public static GraphInferenceSteps valueOf(String str) {
            return (GraphInferenceSteps) Enum.valueOf(GraphInferenceSteps.class, str);
        }

        public static GraphInferenceSteps[] values() {
            return (GraphInferenceSteps[]) $VALUES.clone();
        }
    }

    public class GraphSolver {
        InferenceContext inferenceContext;
        Warner warn;

        public class InferenceGraph {
            ArrayList<Node> nodes;

            public class Node extends GraphUtils.TarjanNode<ListBuffer<Type>, Node> implements GraphUtils.DottableNode<ListBuffer<Type>, Node> {
                Set<Node> deps;

                public Node(Type type) {
                    super(ListBuffer.of(type));
                    this.deps = new HashSet();
                }

                public void graphChanged(Node node, Node node2) {
                    if (!removeDependency(node) || node2 == null) {
                        return;
                    }
                    addDependency(node2);
                }

                public void addDependencies(Set<Node> set) {
                    Iterator<Node> it = set.iterator();
                    while (it.hasNext()) {
                        addDependency(it.next());
                    }
                }

                public void addDependency(Node node) {
                    this.deps.add(node);
                }

                public Set<Node> closure() {
                    boolean z10;
                    HashSet hashSet = new HashSet();
                    hashSet.add(this);
                    for (boolean z11 = true; z11; z11 = z10) {
                        Iterator it = new HashSet(hashSet).iterator();
                        z10 = false;
                        while (it.hasNext()) {
                            z10 = hashSet.addAll(((Node) it.next()).deps);
                        }
                    }
                    return hashSet;
                }

                @Override
                public Iterable<? extends Node> getAllDependencies() {
                    return this.deps;
                }

                @Override
                public Collection<? extends Node> getDependenciesByKind(GraphUtils.DependencyKind dependencyKind) {
                    if (dependencyKind == DependencyKind.BOUND) {
                        return this.deps;
                    }
                    throw new IllegalStateException();
                }

                @Override
                public GraphUtils.DependencyKind[] getSupportedDependencyKinds() {
                    return new GraphUtils.DependencyKind[]{DependencyKind.BOUND};
                }

                public boolean isLeaf() {
                    if (this.deps.isEmpty()) {
                        return true;
                    }
                    Iterator<Node> it = this.deps.iterator();
                    while (it.hasNext()) {
                        if (it.next() != this) {
                            return false;
                        }
                    }
                    return true;
                }

                /* JADX WARN: Multi-variable type inference failed */
                public void mergeWith(List<? extends Node> list) {
                    Iterator<? extends Node> it = list.iterator();
                    while (it.hasNext()) {
                        Node next = it.next();
                        boolean z10 = true;
                        if (((ListBuffer) next.data).length() != 1) {
                            z10 = false;
                        }
                        Assert.check(z10, "Attempt to merge a compound node!");
                        ((ListBuffer) this.data).appendList((ListBuffer) next.data);
                        addDependencies(next.deps);
                    }
                    HashSet hashSet = new HashSet();
                    for (Node node : this.deps) {
                        if (((ListBuffer) this.data).contains(((ListBuffer) node.data).first())) {
                            hashSet.add(this);
                        } else {
                            hashSet.add(node);
                        }
                    }
                    this.deps = hashSet;
                }

                @Override
                public Properties nodeAttributes() {
                    Properties properties = new Properties();
                    properties.put("label", JavadocConstants.ANCHOR_PREFIX_END + toString() + JavadocConstants.ANCHOR_PREFIX_END);
                    return properties;
                }

                public boolean removeDependency(Node node) {
                    return this.deps.remove(node);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public Properties dependencyAttributes(Node node, GraphUtils.DependencyKind dependencyKind) {
                    Properties properties = new Properties();
                    properties.put("style", ((DependencyKind) dependencyKind).dotSyle);
                    StringBuilder sb2 = new StringBuilder();
                    Iterator it = ((ListBuffer) this.data).iterator();
                    String str = "";
                    while (it.hasNext()) {
                        Iterator<Type> it2 = ((Type.UndetVar) GraphSolver.this.inferenceContext.asUndetVar((Type) it.next())).getBounds(Type.UndetVar.InferenceBound.values()).iterator();
                        while (it2.hasNext()) {
                            Type next = it2.next();
                            if (next.containsAny(List.from((Iterable) node.data))) {
                                sb2.append(str);
                                sb2.append((Object) next);
                                str = DocLint.SEPARATOR;
                            }
                        }
                    }
                    properties.put("label", JavadocConstants.ANCHOR_PREFIX_END + sb2.toString() + JavadocConstants.ANCHOR_PREFIX_END);
                    return properties;
                }
            }

            public InferenceGraph() {
                initNodes();
            }

            public void deleteNode(Node node) {
                Assert.check(this.nodes.contains(node));
                this.nodes.remove(node);
                notifyUpdate(node, null);
            }

            /* JADX WARN: Multi-variable type inference failed */
            public Node findNode(Type type) {
                Iterator<Node> it = this.nodes.iterator();
                while (it.hasNext()) {
                    Node next = it.next();
                    if (((ListBuffer) next.data).contains(type)) {
                        return next;
                    }
                }
                return null;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public void initNodes() {
                this.nodes = new ArrayList<>();
                Iterator<Type> it = GraphSolver.this.inferenceContext.restvars().iterator();
                while (it.hasNext()) {
                    this.nodes.add(new Node(it.next()));
                }
                Iterator<Node> it2 = this.nodes.iterator();
                while (it2.hasNext()) {
                    Node next = it2.next();
                    Type type = (Type) ((ListBuffer) next.data).first();
                    Iterator<Node> it3 = this.nodes.iterator();
                    while (it3.hasNext()) {
                        Node next2 = it3.next();
                        if (Type.containsAny(((Type.UndetVar) GraphSolver.this.inferenceContext.asUndetVar(type)).getBounds(Type.UndetVar.InferenceBound.values()), List.of((Type) ((ListBuffer) next2.data).first()))) {
                            next.addDependency(next2);
                        }
                    }
                }
                ArrayList<Node> arrayList = new ArrayList<>();
                Iterator it4 = GraphUtils.tarjan(this.nodes).iterator();
                while (it4.hasNext()) {
                    List list = (List) it4.next();
                    if (list.length() > 1) {
                        Node node = (Node) list.head;
                        node.mergeWith(list.tail);
                        Iterator it5 = list.iterator();
                        while (it5.hasNext()) {
                            notifyUpdate((Node) it5.next(), node);
                        }
                    }
                    arrayList.add(list.head);
                }
                this.nodes = arrayList;
            }

            public void notifyUpdate(Node node, Node node2) {
                Iterator<Node> it = this.nodes.iterator();
                while (it.hasNext()) {
                    it.next().graphChanged(node, node2);
                }
            }

            public String toDot() {
                StringBuilder sb2 = new StringBuilder();
                Iterator<Type> it = GraphSolver.this.inferenceContext.undetvars.iterator();
                while (it.hasNext()) {
                    Type.UndetVar undetVar = (Type.UndetVar) it.next();
                    sb2.append(String.format("var %s - upper bounds = %s, lower bounds = %s, eq bounds = %s\\n", undetVar.qtype, undetVar.getBounds(Type.UndetVar.InferenceBound.UPPER), undetVar.getBounds(Type.UndetVar.InferenceBound.LOWER), undetVar.getBounds(Type.UndetVar.InferenceBound.EQ)));
                }
                return GraphUtils.toDot(this.nodes, "inferenceGraph" + hashCode(), sb2.toString());
            }
        }

        public GraphSolver(InferenceContext inferenceContext, Warner warner) {
            this.inferenceContext = inferenceContext;
            this.warn = warner;
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0063, code lost:
        
            r9.this$0.doIncorporation(r9.inferenceContext, r9.warn);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void solve(GraphStrategy graphStrategy) {
            Infer.this.doIncorporation(this.inferenceContext, this.warn);
            InferenceGraph inferenceGraph = new InferenceGraph();
            while (!graphStrategy.done()) {
                if (Infer.this.dependenciesFolder != null) {
                    Infer infer = Infer.this;
                    infer.pendingGraphs = infer.pendingGraphs.prepend(inferenceGraph.toDot());
                }
                InferenceGraph.Node pickNode = graphStrategy.pickNode(inferenceGraph);
                List<Type> from = List.from((Iterable) pickNode.data);
                List<Type> save = this.inferenceContext.save();
                while (Type.containsAny(this.inferenceContext.restvars(), from)) {
                    try {
                        for (GraphInferenceSteps graphInferenceSteps : GraphInferenceSteps.values()) {
                            if (this.inferenceContext.solveBasic(from, graphInferenceSteps.steps).nonEmpty()) {
                                break;
                            }
                        }
                        throw Infer.this.inferenceException.setMessage();
                    } catch (InferenceException unused) {
                        this.inferenceContext.rollback(save);
                        Infer.this.instantiateAsUninferredVars(from, this.inferenceContext);
                        Infer.this.doIncorporation(this.inferenceContext, this.warn);
                    }
                }
                inferenceGraph.deleteNode(pickNode);
            }
        }
    }

    public interface GraphStrategy {

        public static class NodeNotFoundException extends RuntimeException {
            private static final long serialVersionUID = 0;
            GraphSolver.InferenceGraph graph;

            public NodeNotFoundException(GraphSolver.InferenceGraph inferenceGraph) {
                this.graph = inferenceGraph;
            }
        }

        boolean done();

        GraphSolver.InferenceGraph.Node pickNode(GraphSolver.InferenceGraph inferenceGraph) throws NodeNotFoundException;
    }

    public abstract class IncorporationAction {

        Type f103022t;
        Type.UndetVar uv;

        public IncorporationAction(Type.UndetVar undetVar, Type type) {
            this.uv = undetVar;
            this.f103022t = type;
        }

        public abstract void apply(InferenceContext inferenceContext, Warner warner);

        public abstract IncorporationAction dup(Type.UndetVar undetVar);

        public boolean isSameType(Type type, Type type2) {
            return Infer.this.doIncorporationOp(IncorporationBinaryOpKind.IS_SAME_TYPE, type, type2, null);
        }

        public boolean isSubtype(Type type, Type type2, Warner warner) {
            return Infer.this.doIncorporationOp(IncorporationBinaryOpKind.IS_SUBTYPE, type, type2, warner);
        }

        public String toString() {
            return String.format("%s[undet=%s,t=%s]", getClass().getSimpleName(), this.uv.qtype, this.f103022t);
        }
    }

    public class IncorporationBinaryOp {
        Type op1;
        Type op2;
        IncorporationBinaryOpKind opKind;

        public IncorporationBinaryOp(IncorporationBinaryOpKind incorporationBinaryOpKind, Type type, Type type2) {
            this.opKind = incorporationBinaryOpKind;
            this.op1 = type;
            this.op2 = type2;
        }

        public boolean apply(Warner warner) {
            return this.opKind.apply(this.op1, this.op2, warner, Infer.this.types);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof IncorporationBinaryOp)) {
                return false;
            }
            IncorporationBinaryOp incorporationBinaryOp = (IncorporationBinaryOp) obj;
            return this.opKind == incorporationBinaryOp.opKind && Infer.this.types.isSameType(this.op1, incorporationBinaryOp.op1, true) && Infer.this.types.isSameType(this.op2, incorporationBinaryOp.op2, true);
        }

        public int hashCode() {
            return (((this.opKind.hashCode() * 127) + Infer.this.types.hashCode(this.op1)) * 127) + Infer.this.types.hashCode(this.op2);
        }
    }

    public enum IncorporationBinaryOpKind {
        IS_SUBTYPE {
            @Override
            public boolean apply(Type type, Type type2, Warner warner, Types types) {
                return types.isSubtypeUnchecked(type, type2, warner);
            }
        },
        IS_SAME_TYPE {
            @Override
            public boolean apply(Type type, Type type2, Warner warner, Types types) {
                return types.isSameType(type, type2);
            }
        };

        public abstract boolean apply(Type type, Type type2, Warner warner, Types types);
    }

    public static class InferenceException extends Resolve.InapplicableMethodException {
        private static final long serialVersionUID = 0;
        List<JCDiagnostic> messages;

        public InferenceException(JCDiagnostic.Factory factory) {
            super(factory);
            this.messages = List.nil();
        }

        public void clear() {
            this.messages = List.nil();
        }

        @Override
        public JCDiagnostic getDiagnostic() {
            return this.messages.head;
        }

        @Override
        public Resolve.InapplicableMethodException setMessage() {
            return this;
        }

        @Override
        public Resolve.InapplicableMethodException setMessage(JCDiagnostic jCDiagnostic) {
            this.messages = this.messages.append(jCDiagnostic);
            return this;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class InferenceStep {
        private static final InferenceStep[] $VALUES;
        public static final InferenceStep CAPTURED;
        public static final InferenceStep EQ;
        public static final InferenceStep LOWER;
        public static final InferenceStep THROWS;
        public static final InferenceStep UPPER;
        public static final InferenceStep UPPER_LEGACY;

        final Type.UndetVar.InferenceBound f103023ib;

        public enum AnonymousClass3 extends InferenceStep {
            public AnonymousClass3(String str, int i10, Type.UndetVar.InferenceBound inferenceBound) {
                super(str, i10, inferenceBound);
            }

            public static boolean lambda$accepts$0(InferenceContext inferenceContext, Type type) {
                return !inferenceContext.free(type);
            }

            public static boolean lambda$accepts$1(Types types, Symtab symtab, Type type) {
                return types.isSubtype(symtab.runtimeExceptionType, type);
            }

            @Override
            public boolean accepts(Type.UndetVar undetVar, final InferenceContext inferenceContext) {
                if (!undetVar.isThrows()) {
                    return false;
                }
                final Types types = inferenceContext.types;
                final Symtab symtab = inferenceContext.infer.syms;
                return undetVar.getBounds(Type.UndetVar.InferenceBound.UPPER).stream().filter(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean lambda$accepts$0;
                        lambda$accepts$0 = Infer.InferenceStep.AnonymousClass3.lambda$accepts$0(InferenceContext.this, (Type) obj);
                        return lambda$accepts$0;
                    }
                }).allMatch(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean lambda$accepts$1;
                        lambda$accepts$1 = Infer.InferenceStep.AnonymousClass3.lambda$accepts$1(Types.this, symtab, (Type) obj);
                        return lambda$accepts$1;
                    }
                });
            }

            @Override
            public Type solve(Type.UndetVar undetVar, InferenceContext inferenceContext) {
                return inferenceContext.infer.syms.runtimeExceptionType;
            }
        }

        static {
            InferenceStep inferenceStep = new InferenceStep("EQ", 0, Type.UndetVar.InferenceBound.EQ) {
                @Override
                public Type solve(Type.UndetVar undetVar, InferenceContext inferenceContext) {
                    return filterBounds(undetVar, inferenceContext).head;
                }
            };
            EQ = inferenceStep;
            InferenceStep inferenceStep2 = new InferenceStep("LOWER", 1, Type.UndetVar.InferenceBound.LOWER) {
                @Override
                public Type solve(Type.UndetVar undetVar, InferenceContext inferenceContext) {
                    Infer infer = inferenceContext.infer;
                    List<Type> filterBounds = filterBounds(undetVar, inferenceContext);
                    Type lub = filterBounds.tail.tail == null ? filterBounds.head : infer.types.lub(filterBounds);
                    if (lub.isPrimitive() || lub.hasTag(TypeTag.ERROR)) {
                        throw infer.inferenceException.setMessage("no.unique.minimal.instance.exists", undetVar.qtype, filterBounds);
                    }
                    return lub;
                }
            };
            LOWER = inferenceStep2;
            Type.UndetVar.InferenceBound inferenceBound = Type.UndetVar.InferenceBound.UPPER;
            AnonymousClass3 anonymousClass3 = new AnonymousClass3("THROWS", 2, inferenceBound);
            THROWS = anonymousClass3;
            InferenceStep inferenceStep3 = new InferenceStep("UPPER", 3, inferenceBound) {
                @Override
                public Type solve(Type.UndetVar undetVar, InferenceContext inferenceContext) {
                    Infer infer = inferenceContext.infer;
                    List<Type> filterBounds = filterBounds(undetVar, inferenceContext);
                    Type glb = filterBounds.tail.tail == null ? filterBounds.head : infer.types.glb(filterBounds);
                    if (glb.isPrimitive() || glb.hasTag(TypeTag.ERROR)) {
                        throw infer.inferenceException.setMessage("no.unique.maximal.instance.exists", undetVar.qtype, filterBounds);
                    }
                    return glb;
                }
            };
            UPPER = inferenceStep3;
            InferenceStep inferenceStep4 = new InferenceStep("UPPER_LEGACY", 4, inferenceBound) {
                @Override
                public boolean accepts(Type.UndetVar undetVar, InferenceContext inferenceContext) {
                    return (inferenceContext.free(undetVar.getBounds(this.f103023ib)) || undetVar.isCaptured()) ? false : true;
                }

                @Override
                public Type solve(Type.UndetVar undetVar, InferenceContext inferenceContext) {
                    return InferenceStep.UPPER.solve(undetVar, inferenceContext);
                }
            };
            UPPER_LEGACY = inferenceStep4;
            InferenceStep inferenceStep5 = new InferenceStep("CAPTURED", 5, inferenceBound) {
                @Override
                public boolean accepts(Type.UndetVar undetVar, InferenceContext inferenceContext) {
                    return undetVar.isCaptured() && !inferenceContext.free(undetVar.getBounds(Type.UndetVar.InferenceBound.UPPER, Type.UndetVar.InferenceBound.LOWER));
                }

                @Override
                public Type solve(Type.UndetVar undetVar, InferenceContext inferenceContext) {
                    Infer infer = inferenceContext.infer;
                    InferenceStep inferenceStep6 = InferenceStep.UPPER;
                    Type solve = inferenceStep6.filterBounds(undetVar, inferenceContext).nonEmpty() ? inferenceStep6.solve(undetVar, inferenceContext) : infer.syms.objectType;
                    InferenceStep inferenceStep7 = InferenceStep.LOWER;
                    Type solve2 = inferenceStep7.filterBounds(undetVar, inferenceContext).nonEmpty() ? inferenceStep7.solve(undetVar, inferenceContext) : infer.syms.botType;
                    Type.CapturedType capturedType = (Type.CapturedType) undetVar.qtype;
                    Symbol.TypeSymbol typeSymbol = capturedType.tsym;
                    return new Type.CapturedType(typeSymbol.name, typeSymbol.owner, solve, solve2, capturedType.wildcard);
                }
            };
            CAPTURED = inferenceStep5;
            $VALUES = new InferenceStep[]{inferenceStep, inferenceStep2, anonymousClass3, inferenceStep3, inferenceStep4, inferenceStep5};
        }

        public static InferenceStep valueOf(String str) {
            return (InferenceStep) Enum.valueOf(InferenceStep.class, str);
        }

        public static InferenceStep[] values() {
            return (InferenceStep[]) $VALUES.clone();
        }

        public boolean accepts(Type.UndetVar undetVar, InferenceContext inferenceContext) {
            return filterBounds(undetVar, inferenceContext).nonEmpty() && !undetVar.isCaptured();
        }

        public List<Type> filterBounds(Type.UndetVar undetVar, InferenceContext inferenceContext) {
            return Type.filter(undetVar.getBounds(this.f103023ib), new BoundFilter(inferenceContext));
        }

        public abstract Type solve(Type.UndetVar undetVar, InferenceContext inferenceContext);

        private InferenceStep(String str, int i10, Type.UndetVar.InferenceBound inferenceBound) {
            this.f103023ib = inferenceBound;
        }
    }

    public abstract class LeafSolver implements GraphStrategy {
        public LeafSolver() {
        }

        @Override
        public GraphSolver.InferenceGraph.Node pickNode(GraphSolver.InferenceGraph inferenceGraph) {
            if (inferenceGraph.nodes.isEmpty()) {
                throw new GraphStrategy.NodeNotFoundException(inferenceGraph);
            }
            return inferenceGraph.nodes.get(0);
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EQ_LOWER' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class LegacyInferenceSteps {
        private static final LegacyInferenceSteps[] $VALUES;
        public static final LegacyInferenceSteps EQ_LOWER;
        public static final LegacyInferenceSteps EQ_UPPER;
        final EnumSet<InferenceStep> steps;

        static {
            InferenceStep inferenceStep = InferenceStep.EQ;
            LegacyInferenceSteps legacyInferenceSteps = new LegacyInferenceSteps("EQ_LOWER", 0, EnumSet.of(inferenceStep, InferenceStep.LOWER));
            EQ_LOWER = legacyInferenceSteps;
            LegacyInferenceSteps legacyInferenceSteps2 = new LegacyInferenceSteps("EQ_UPPER", 1, EnumSet.of(inferenceStep, InferenceStep.UPPER_LEGACY));
            EQ_UPPER = legacyInferenceSteps2;
            $VALUES = new LegacyInferenceSteps[]{legacyInferenceSteps, legacyInferenceSteps2};
        }

        private LegacyInferenceSteps(String str, int i10, EnumSet enumSet) {
            this.steps = enumSet;
        }

        public static LegacyInferenceSteps valueOf(String str) {
            return (LegacyInferenceSteps) Enum.valueOf(LegacyInferenceSteps.class, str);
        }

        public static LegacyInferenceSteps[] values() {
            return (LegacyInferenceSteps[]) $VALUES.clone();
        }
    }

    public class PartiallyInferredMethodType extends Type.MethodType {
        Env<AttrContext> env;
        final InferenceContext inferenceContext;
        final Warner warn;

        public PartiallyInferredMethodType(Type.MethodType methodType, InferenceContext inferenceContext, Env<AttrContext> env, Warner warner) {
            super(methodType.getParameterTypes(), methodType.getReturnType(), methodType.getThrownTypes(), methodType.tsym);
            this.inferenceContext = inferenceContext;
            this.env = env;
            this.warn = warner;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00bb  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Type check(Attr.ResultInfo resultInfo) {
            List<Type> list;
            List<Type> list2 = null;
            Warner warner = new Warner(null);
            InferenceException inferenceException = Infer.this.inferenceException;
            inferenceException.clear();
            try {
                try {
                    list = this.inferenceContext.save();
                    try {
                        boolean hasNonSilentLint = this.warn.hasNonSilentLint(Lint.LintCategory.UNCHECKED);
                        if (!hasNonSilentLint) {
                            boolean shouldPropagate = Infer.this.shouldPropagate(getReturnType(), resultInfo, this.inferenceContext);
                            InferenceContext min = shouldPropagate ? this.inferenceContext.min(Infer.this.roots(asMethodType(), null), false, this.warn) : this.inferenceContext;
                            Type generateReturnConstraints = Infer.this.generateReturnConstraints(this.env.tree, resultInfo, (Type.MethodType) min.update(asMethodType()), min);
                            if (shouldPropagate) {
                                min.dupTo(resultInfo.checkContext.inferenceContext(), resultInfo.checkContext.deferredAttrContext().insideOverloadPhase());
                                if (list != null) {
                                    this.inferenceContext.rollback(list);
                                }
                                return generateReturnConstraints;
                            }
                        }
                        this.inferenceContext.solve(warner);
                        Type returnType = this.inferenceContext.asInstType(this).getReturnType();
                        if (hasNonSilentLint) {
                            returnType = Infer.this.types.erasure(returnType);
                        }
                        Type check = resultInfo.check(this.env.tree, returnType);
                        if (list != null) {
                            this.inferenceContext.rollback(list);
                        }
                        return check;
                    } catch (InferenceException e10) {
                        e = e10;
                        resultInfo.checkContext.report(null, e.getDiagnostic());
                        Assert.error();
                        if (list != null) {
                            this.inferenceContext.rollback(list);
                        }
                        return null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    list2 = inferenceException;
                    if (list2 != null) {
                        this.inferenceContext.rollback(list2);
                    }
                    throw th;
                }
            } catch (InferenceException e11) {
                e = e11;
                list = null;
            } catch (Throwable th3) {
                th = th3;
                if (list2 != null) {
                }
                throw th;
            }
        }

        @Override
        public boolean isPartial() {
            return true;
        }
    }

    public class PropagateBounds extends IncorporationAction {

        Type.UndetVar.InferenceBound f103024ib;

        public PropagateBounds(Type.UndetVar undetVar, Type type, Type.UndetVar.InferenceBound inferenceBound) {
            super(undetVar, type);
            this.f103024ib = inferenceBound;
        }

        @Override
        public void apply(InferenceContext inferenceContext, Warner warner) {
            Type asUndetVar = inferenceContext.asUndetVar(this.f103022t);
            if (asUndetVar.hasTag(TypeTag.UNDETVAR)) {
                Type.UndetVar undetVar = (Type.UndetVar) asUndetVar;
                if (!undetVar.isCaptured()) {
                    undetVar.addBound(this.f103024ib.complement(), this.uv, Infer.this.types);
                    Iterator<E> it = backwards().iterator();
                    while (it.hasNext()) {
                        Type.UndetVar.InferenceBound inferenceBound = (Type.UndetVar.InferenceBound) it.next();
                        Iterator<Type> it2 = undetVar.getBounds(inferenceBound).iterator();
                        while (it2.hasNext()) {
                            this.uv.addBound(inferenceBound, it2.next(), Infer.this.types);
                        }
                    }
                }
            }
            Iterator<E> it3 = forward().iterator();
            while (it3.hasNext()) {
                Iterator<Type> it4 = this.uv.getBounds((Type.UndetVar.InferenceBound) it3.next()).iterator();
                while (it4.hasNext()) {
                    Type asUndetVar2 = inferenceContext.asUndetVar(it4.next());
                    if (asUndetVar2.hasTag(TypeTag.UNDETVAR)) {
                        Type.UndetVar undetVar2 = (Type.UndetVar) asUndetVar2;
                        if (!undetVar2.isCaptured()) {
                            undetVar2.addBound(this.f103024ib, inferenceContext.asInstType(this.f103022t), Infer.this.types);
                        }
                    }
                }
            }
        }

        public EnumSet<Type.UndetVar.InferenceBound> backwards() {
            Type.UndetVar.InferenceBound inferenceBound = this.f103024ib;
            return inferenceBound == Type.UndetVar.InferenceBound.EQ ? EnumSet.allOf(Type.UndetVar.InferenceBound.class) : EnumSet.of(inferenceBound);
        }

        @Override
        public IncorporationAction dup(Type.UndetVar undetVar) {
            return new PropagateBounds(undetVar, this.f103022t, this.f103024ib);
        }

        public EnumSet<Type.UndetVar.InferenceBound> forward() {
            Type.UndetVar.InferenceBound inferenceBound = this.f103024ib;
            Type.UndetVar.InferenceBound inferenceBound2 = Type.UndetVar.InferenceBound.EQ;
            return inferenceBound == inferenceBound2 ? EnumSet.of(inferenceBound2) : EnumSet.complementOf(EnumSet.of(inferenceBound));
        }

        @Override
        public String toString() {
            return String.format("%s[undet=%s,t=%s,bound=%s]", getClass().getSimpleName(), this.uv.qtype, this.f103022t, this.f103024ib);
        }
    }

    public class SubstBounds extends CheckInst {
        public SubstBounds(Type.UndetVar undetVar) {
            super(Infer.this, undetVar, Type.UndetVar.InferenceBound.LOWER, Type.UndetVar.InferenceBound.EQ, Type.UndetVar.InferenceBound.UPPER);
        }

        @Override
        public void apply(InferenceContext inferenceContext, Warner warner) {
            Iterator<Type> it = inferenceContext.undetvars.iterator();
            while (it.hasNext()) {
                Type.UndetVar undetVar = (Type.UndetVar) it.next();
                undetVar.substBounds(List.of(this.uv.qtype), List.of(this.uv.getInst()), Infer.this.types);
                checkCompatibleUpperBounds(undetVar, inferenceContext);
            }
            super.apply(inferenceContext, warner);
        }

        public void checkCompatibleUpperBounds(Type.UndetVar undetVar, InferenceContext inferenceContext) {
            Type.UndetVar.InferenceBound inferenceBound = Type.UndetVar.InferenceBound.UPPER;
            List<Type> filter = Type.filter(undetVar.getBounds(inferenceBound), new BoundFilter(inferenceContext));
            Type glb = filter.isEmpty() ? Infer.this.syms.objectType : filter.tail.isEmpty() ? filter.head : Infer.this.types.glb(filter);
            if (glb == null || glb.isErroneous()) {
                Infer.this.reportBoundError(undetVar, inferenceBound);
            }
        }

        @Override
        public IncorporationAction dup(Type.UndetVar undetVar) {
            return new SubstBounds(undetVar);
        }
    }

    public Infer(Context context) {
        context.put((Context.Key<Context.Key<Infer>>) inferKey, (Context.Key<Infer>) this);
        this.rs = Resolve.instance(context);
        this.chk = Check.instance(context);
        this.syms = Symtab.instance(context);
        this.types = Types.instance(context);
        this.diags = JCDiagnostic.Factory.instance(context);
        this.log = Log.instance(context);
        this.inferenceException = new InferenceException(this.diags);
        Options instance = Options.instance(context);
        this.allowGraphInference = Source.instance(context).allowGraphInference() && instance.isUnset("useLegacyInference");
        this.dependenciesFolder = instance.get("debug.dumpInferenceGraphsTo");
        this.pendingGraphs = List.nil();
        this.emptyContext = new InferenceContext(this, List.nil());
    }

    private Type asSuper(Type type, Type type2) {
        return type2.hasTag(TypeTag.ARRAY) ? new Type.ArrayType(asSuper(this.types.elemtype(type), this.types.elemtype(type2)), this.syms.arrayClass) : this.types.asSuper(type, type2.tsym);
    }

    private boolean commonSuperWithDiffParameterization(Type type, Type type2) {
        Iterator<Pair<Type, Type>> it = getParameterizedSupers(type, type2).iterator();
        while (it.hasNext()) {
            Pair<Type, Type> next = it.next();
            if (!this.types.isSameType(next.fst, next.snd)) {
                return true;
            }
        }
        return false;
    }

    private void dumpGraphsIfNeeded(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Resolve.MethodResolutionContext methodResolutionContext) {
        try {
            try {
                Iterator<String> it = this.pendingGraphs.reverse().iterator();
                int i10 = 0;
                while (it.hasNext()) {
                    String next = it.next();
                    Assert.checkNonNull(this.dependenciesFolder);
                    Name name = symbol.name;
                    if (name == name.table.names.init) {
                        name = symbol.owner.name;
                    }
                    BufferedWriter newBufferedWriter = Files.newBufferedWriter(Paths.get(this.dependenciesFolder, String.format("%s@%s[mode=%s,step=%s]_%d.dot", name, Integer.valueOf(diagnosticPosition.getStartPosition()), methodResolutionContext.attrMode(), methodResolutionContext.step, Integer.valueOf(i10))), new OpenOption[0]);
                    try {
                        newBufferedWriter.append((CharSequence) next);
                        newBufferedWriter.close();
                        i10++;
                    } finally {
                    }
                }
            } catch (IOException e10) {
                Assert.error("Error occurred when dumping inference graph: " + e10.getMessage());
            }
            this.pendingGraphs = List.nil();
        } catch (Throwable th2) {
            this.pendingGraphs = List.nil();
            throw th2;
        }
    }

    private Type generateReferenceToTargetConstraint(JCTree jCTree, Type.UndetVar undetVar, Type type, Attr.ResultInfo resultInfo, InferenceContext inferenceContext) {
        inferenceContext.solve(List.of(undetVar.qtype), new Warner());
        inferenceContext.notifyChange();
        return this.types.isConvertible(resultInfo.checkContext.inferenceContext().cachedCapture(jCTree, undetVar.getInst(), resultInfo.checkMode.updateTreeType() ^ true), resultInfo.checkContext.inferenceContext().asUndetVar(type)) ? this.syms.objectType : type;
    }

    public List<Pair<Type, Type>> getParameterizedSupers(Type type, Type type2) {
        Type lub = this.types.lub(type, type2);
        Symtab symtab = this.syms;
        if (lub == symtab.errType || lub == symtab.botType) {
            return List.nil();
        }
        List<Type> components = lub.isIntersection() ? ((Type.IntersectionClassType) lub).getComponents() : List.of(lub);
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Type> it = components.iterator();
        while (it.hasNext()) {
            Type next = it.next();
            if (next.isParameterized()) {
                listBuffer.add(new Pair(asSuper(type, next), asSuper(type2, next)));
            }
        }
        return listBuffer.toList();
    }

    public static Infer instance(Context context) {
        Infer infer = (Infer) context.get(inferKey);
        return infer == null ? new Infer(context) : infer;
    }

    public static boolean lambda$instantiateFunctionalInterface$0(Type type, Type type2) {
        return !type2.containsAny(type.getTypeArguments());
    }

    private boolean needsEagerInstantiation(Type.UndetVar undetVar, Type type, InferenceContext inferenceContext) {
        if (type.isPrimitive()) {
            Iterator<Type> it = undetVar.getBounds(Type.UndetVar.InferenceBound.values()).iterator();
            while (it.hasNext()) {
                Type unboxedType = this.types.unboxedType(it.next());
                if (unboxedType != null && !unboxedType.hasTag(TypeTag.NONE)) {
                    return true;
                }
            }
            return false;
        }
        if (this.types.capture(type) == type) {
            Iterator<Type> it2 = undetVar.getBounds(Type.UndetVar.InferenceBound.EQ, Type.UndetVar.InferenceBound.LOWER).iterator();
            while (it2.hasNext()) {
                Type next = it2.next();
                if (this.types.capture(next) != next) {
                    return true;
                }
            }
            Iterator<Type> it3 = undetVar.getBounds(Type.UndetVar.InferenceBound.LOWER).iterator();
            while (it3.hasNext()) {
                Type next2 = it3.next();
                Iterator<Type> it4 = undetVar.getBounds(Type.UndetVar.InferenceBound.LOWER).iterator();
                while (it4.hasNext()) {
                    Type next3 = it4.next();
                    if (next2 != next3 && !inferenceContext.free(next2) && !inferenceContext.free(next3) && commonSuperWithDiffParameterization(next2, next3)) {
                        return true;
                    }
                }
            }
        }
        if (type.isParameterized()) {
            Iterator<Type> it5 = undetVar.getBounds(Type.UndetVar.InferenceBound.EQ, Type.UndetVar.InferenceBound.LOWER).iterator();
            while (it5.hasNext()) {
                Type asSuper = this.types.asSuper(it5.next(), type.tsym);
                if (asSuper != null && asSuper.isRaw()) {
                    return true;
                }
            }
        }
        return false;
    }

    public List<Type> roots(Type.MethodType methodType, DeferredAttr.DeferredAttrContext deferredAttrContext) {
        ListBuffer listBuffer = new ListBuffer();
        listBuffer.add(methodType.getReturnType());
        if (deferredAttrContext != null && deferredAttrContext.mode == DeferredAttr.AttrMode.CHECK) {
            listBuffer.addAll(methodType.getThrownTypes());
            Iterator<DeferredAttr.DeferredAttrNode> it = deferredAttrContext.deferredAttrNodes.iterator();
            while (it.hasNext()) {
                DeferredAttr.DeferredAttrNode next = it.next();
                listBuffer.addAll(next.deferredStuckPolicy.stuckVars());
                listBuffer.addAll(next.deferredStuckPolicy.depVars());
            }
        }
        return listBuffer.toList();
    }

    public boolean shouldPropagate(Type type, Attr.ResultInfo resultInfo, InferenceContext inferenceContext) {
        return (resultInfo.checkContext.inferenceContext() == this.emptyContext || !inferenceContext.free(type) || (inferenceContext.inferencevars.contains(type) && needsEagerInstantiation((Type.UndetVar) inferenceContext.asUndetVar(type), resultInfo.pt, inferenceContext))) ? false : true;
    }

    public void doIncorporation(InferenceContext inferenceContext, Warner warner) throws InferenceException {
        boolean z10;
        int i10 = 0;
        for (boolean z11 = true; z11 && i10 < 10000; z11 = z10) {
            try {
                Iterator<Type> it = inferenceContext.undetvars.iterator();
                z10 = false;
                while (it.hasNext()) {
                    Type.UndetVar undetVar = (Type.UndetVar) it.next();
                    if (!undetVar.incorporationActions.isEmpty()) {
                        undetVar.incorporationActions.removeFirst().apply(inferenceContext, warner);
                        z10 = true;
                    }
                }
                i10++;
            } finally {
                this.incorporationCache.clear();
            }
        }
    }

    public boolean doIncorporationOp(IncorporationBinaryOpKind incorporationBinaryOpKind, Type type, Type type2, Warner warner) {
        IncorporationBinaryOp incorporationBinaryOp = new IncorporationBinaryOp(incorporationBinaryOpKind, type, type2);
        Boolean bool = this.incorporationCache.get(incorporationBinaryOp);
        if (bool == null) {
            Map<IncorporationBinaryOp, Boolean> map = this.incorporationCache;
            Boolean valueOf = Boolean.valueOf(incorporationBinaryOp.apply(warner));
            map.put(incorporationBinaryOp, valueOf);
            bool = valueOf;
        }
        return bool.booleanValue();
    }

    public Type generateReturnConstraints(JCTree jCTree, Attr.ResultInfo resultInfo, Type.MethodType methodType, InferenceContext inferenceContext) {
        InferenceContext inferenceContext2 = resultInfo.checkContext.inferenceContext();
        Type returnType = methodType.getReturnType();
        if (methodType.getReturnType().containsAny(inferenceContext.inferencevars) && inferenceContext2 != this.emptyContext) {
            returnType = this.types.capture(returnType);
            Iterator<Type> it = returnType.getTypeArguments().iterator();
            while (it.hasNext()) {
                Type next = it.next();
                if (next.hasTag(TypeTag.TYPEVAR)) {
                    Type.TypeVar typeVar = (Type.TypeVar) next;
                    if (typeVar.isCaptured()) {
                        inferenceContext.addVar(typeVar);
                    }
                }
            }
        }
        Type asUndetVar = inferenceContext.asUndetVar(returnType);
        Type type = resultInfo.pt;
        boolean z10 = true;
        if (asUndetVar.hasTag(TypeTag.VOID)) {
            type = this.syms.voidType;
        } else if (type.hasTag(TypeTag.NONE)) {
            type = returnType.isPrimitive() ? returnType : this.syms.objectType;
        } else if (asUndetVar.hasTag(TypeTag.UNDETVAR)) {
            Type.UndetVar undetVar = (Type.UndetVar) asUndetVar;
            if (needsEagerInstantiation(undetVar, type, inferenceContext) && (this.allowGraphInference || !type.isPrimitive())) {
                type = generateReferenceToTargetConstraint(jCTree, undetVar, type, resultInfo, inferenceContext);
            }
        } else if (inferenceContext2.free(resultInfo.pt)) {
            asUndetVar = inferenceContext.asUndetVar(inferenceContext2.cachedCapture(jCTree, returnType, !resultInfo.checkMode.updateTreeType()));
        }
        if (!this.allowGraphInference && inferenceContext2.free(type)) {
            z10 = false;
        }
        Assert.check(z10, "legacy inference engine cannot handle constraints on both sides of a subtyping assertion");
        Warner warner = new Warner();
        if (!resultInfo.checkContext.compatible(asUndetVar, inferenceContext2.asUndetVar(type), warner) || (!this.allowGraphInference && warner.hasLint(Lint.LintCategory.UNCHECKED))) {
            throw this.inferenceException.setMessage("infer.no.conforming.instance.exists", inferenceContext.restvars(), methodType.getReturnType(), type);
        }
        return returnType;
    }

    public AbstractIncorporationEngine incorporationEngine() {
        return this.allowGraphInference ? this.graphEngine : this.legacyEngine;
    }

    public void instantiateAsUninferredVars(List<Type> list, InferenceContext inferenceContext) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Type> it = list.iterator();
        while (it.hasNext()) {
            Type.UndetVar undetVar = (Type.UndetVar) inferenceContext.asUndetVar(it.next());
            Type.UndetVar.InferenceBound inferenceBound = Type.UndetVar.InferenceBound.UPPER;
            List<Type> bounds = undetVar.getBounds(inferenceBound);
            if (Type.containsAny(bounds, list)) {
                Symbol.TypeSymbol typeSymbol = undetVar.qtype.tsym;
                Symbol.TypeVariableSymbol typeVariableSymbol = new Symbol.TypeVariableSymbol(4096L, typeSymbol.name, null, typeSymbol.owner);
                typeVariableSymbol.type = new Type.TypeVar(typeVariableSymbol, this.types.makeIntersectionType(undetVar.getBounds(inferenceBound)), (Type) null);
                listBuffer.append(undetVar);
                undetVar.setInst(typeVariableSymbol.type);
            } else if (bounds.nonEmpty()) {
                undetVar.setInst(this.types.glb(bounds));
            } else {
                undetVar.setInst(this.syms.objectType);
            }
        }
        Iterator it2 = listBuffer.iterator();
        List<Type> list2 = list;
        while (it2.hasNext()) {
            Type.UndetVar undetVar2 = (Type.UndetVar) ((Type) it2.next());
            Type.TypeVar typeVar = (Type.TypeVar) undetVar2.getInst();
            Types types = this.types;
            Type glb = types.glb(inferenceContext.asInstTypes(types.getBounds(typeVar)));
            typeVar.bound = glb;
            if (glb.isErroneous()) {
                reportBoundError(undetVar2, Type.UndetVar.InferenceBound.UPPER);
            }
            list2 = list2.tail;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Type instantiateFunctionalInterface(JCDiagnostic.DiagnosticPosition diagnosticPosition, Type type, List<Type> list, Check.CheckContext checkContext) {
        if (this.types.capture(type) == type) {
            return type;
        }
        final Type type2 = type.tsym.type;
        InferenceContext inferenceContext = new InferenceContext(this, type2.getTypeArguments());
        Assert.check(list != null);
        List<Type> parameterTypes = this.types.findDescriptorType(type2).getParameterTypes();
        if (parameterTypes.size() != list.size()) {
            checkContext.report(diagnosticPosition, this.diags.fragment("incompatible.arg.types.in.lambda", new Object[0]));
            return this.types.createErrorType(type);
        }
        Iterator<Type> it = parameterTypes.iterator();
        List<Type> list2 = list;
        while (it.hasNext()) {
            if (!this.types.isSameType(inferenceContext.asUndetVar(it.next()), list2.head)) {
                checkContext.report(diagnosticPosition, this.diags.fragment("no.suitable.functional.intf.inst", type));
                return this.types.createErrorType(type);
            }
            list2 = list2.tail;
        }
        List typeArguments = type.getTypeArguments();
        Iterator<Type> it2 = inferenceContext.undetvars.iterator();
        while (it2.hasNext()) {
            Type.UndetVar undetVar = (Type.UndetVar) it2.next();
            undetVar.setInst(undetVar.getBounds(Type.UndetVar.InferenceBound.EQ).stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$instantiateFunctionalInterface$0;
                    lambda$instantiateFunctionalInterface$0 = Infer.lambda$instantiateFunctionalInterface$0(Type.this, (Type) obj);
                    return lambda$instantiateFunctionalInterface$0;
                }
            }).findFirst().orElse(typeArguments.head));
            typeArguments = typeArguments.tail;
        }
        Type asInstType = inferenceContext.asInstType(type2);
        if (!this.chk.checkValidGenericType(asInstType)) {
            checkContext.report(diagnosticPosition, this.diags.fragment("no.suitable.functional.intf.inst", type));
        }
        checkContext.compatible(asInstType, type, this.types.noWarnings);
        return asInstType;
    }

    public Type instantiateMethod(Env<AttrContext> env, List<Type> list, Type.MethodType methodType, Attr.ResultInfo resultInfo, Symbol.MethodSymbol methodSymbol, List<Type> list2, boolean z10, boolean z11, Resolve.MethodResolutionContext methodResolutionContext, Warner warner) throws InferenceException {
        Type.MethodType methodType2 = methodType;
        InferenceContext inferenceContext = new InferenceContext(this, list);
        this.inferenceException.clear();
        try {
            DeferredAttr.DeferredAttrContext deferredAttrContext = methodResolutionContext.deferredAttrContext(methodSymbol, inferenceContext, resultInfo, warner);
            methodResolutionContext.methodCheck.argumentsAcceptable(env, deferredAttrContext, list2, methodType.getParameterTypes(), warner);
            boolean z12 = this.allowGraphInference;
            if (z12 && resultInfo != null && resultInfo.pt == anyPoly) {
                doIncorporation(inferenceContext, warner);
                PartiallyInferredMethodType partiallyInferredMethodType = new PartiallyInferredMethodType(methodType, inferenceContext, env, warner);
                inferenceContext.notifyChange();
                dumpGraphsIfNeeded(env.tree, methodSymbol, methodResolutionContext);
                return partiallyInferredMethodType;
            }
            if (z12 && resultInfo != null) {
                doIncorporation(inferenceContext, warner);
                if (!warner.hasNonSilentLint(Lint.LintCategory.UNCHECKED)) {
                    boolean shouldPropagate = shouldPropagate(methodType.getReturnType(), resultInfo, inferenceContext);
                    InferenceContext min = shouldPropagate ? inferenceContext.min(roots(methodType2, deferredAttrContext), true, warner) : inferenceContext;
                    methodType2 = (Type.MethodType) this.types.createMethodTypeWithReturn(methodType2, generateReturnConstraints(env.tree, resultInfo, methodType2, min));
                    if (shouldPropagate) {
                        min.dupTo(resultInfo.checkContext.inferenceContext());
                        deferredAttrContext.complete();
                        inferenceContext.notifyChange();
                        dumpGraphsIfNeeded(env.tree, methodSymbol, methodResolutionContext);
                        return methodType2;
                    }
                }
            }
            deferredAttrContext.complete();
            if (this.allowGraphInference) {
                inferenceContext.solve(warner);
            } else {
                inferenceContext.solveLegacy(true, warner, LegacyInferenceSteps.EQ_LOWER.steps);
            }
            methodType2 = (Type.MethodType) inferenceContext.asInstType(methodType2);
            if (!this.allowGraphInference && inferenceContext.restvars().nonEmpty() && resultInfo != null && !warner.hasNonSilentLint(Lint.LintCategory.UNCHECKED)) {
                generateReturnConstraints(env.tree, resultInfo, methodType2, inferenceContext);
                inferenceContext.solveLegacy(false, warner, LegacyInferenceSteps.EQ_UPPER.steps);
                methodType2 = (Type.MethodType) inferenceContext.asInstType(methodType2);
            }
            if (resultInfo != null && this.rs.verboseResolutionMode.contains(Resolve.VerboseResolutionMode.DEFERRED_INST)) {
                this.log.note(env.tree.pos, "deferred.method.inst", methodSymbol, methodType2, resultInfo.pt);
            }
            if (resultInfo == null && this.allowGraphInference) {
                inferenceContext.notifyChange(inferenceContext.boundedVars());
            } else {
                inferenceContext.notifyChange();
            }
            if (resultInfo == null) {
                inferenceContext.captureTypeCache.clear();
            }
            dumpGraphsIfNeeded(env.tree, methodSymbol, methodResolutionContext);
            return methodType2;
        } catch (Throwable th2) {
            if (resultInfo == null && this.allowGraphInference) {
                inferenceContext.notifyChange(inferenceContext.boundedVars());
            } else {
                inferenceContext.notifyChange();
            }
            if (resultInfo == null) {
                inferenceContext.captureTypeCache.clear();
            }
            dumpGraphsIfNeeded(env.tree, methodSymbol, methodResolutionContext);
            throw th2;
        }
    }

    public Type instantiatePolymorphicSignatureInstance(Env<AttrContext> env, Symbol.MethodSymbol methodSymbol, Resolve.MethodResolutionContext methodResolutionContext, List<Type> list) {
        Type type;
        if (methodSymbol == null || this.types.isSameType(methodSymbol.getReturnType(), this.syms.objectType, true)) {
            int i10 = AnonymousClass4.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[env.next.tree.getTag().ordinal()];
            if (i10 != 1) {
                type = i10 != 2 ? this.syms.objectType : TreeInfo.skipParens(((JCTree.JCExpressionStatement) env.next.tree).expr) == env.tree ? this.syms.voidType : this.syms.objectType;
            } else {
                JCTree.JCTypeCast jCTypeCast = (JCTree.JCTypeCast) env.next.tree;
                type = TreeInfo.skipParens(jCTypeCast.expr) == env.tree ? jCTypeCast.clazz.type : this.syms.objectType;
            }
        } else {
            type = methodSymbol.getReturnType();
        }
        return new Type.MethodType(list.map(new ImplicitArgType(methodSymbol, methodResolutionContext.step)), type, methodSymbol != null ? methodSymbol.getThrownTypes() : List.of(this.syms.throwableType), this.syms.methodClass);
    }

    public void reportBoundError(Type.UndetVar undetVar, Type.UndetVar.InferenceBound inferenceBound) {
        reportInferenceError(String.format("incompatible.%s.bounds", StringUtils.toLowerCase(inferenceBound.name())), undetVar.qtype, undetVar.getBounds(inferenceBound));
    }

    public void reportInferenceError(String str, Object... objArr) {
        throw this.inferenceException.setMessage(str, objArr);
    }

    public void reportInstError(Type.UndetVar undetVar, Type.UndetVar.InferenceBound inferenceBound) {
        reportInferenceError(String.format("inferred.do.not.conform.to.%s.bounds", StringUtils.toLowerCase(inferenceBound.name())), undetVar.getInst(), undetVar.getBounds(inferenceBound));
    }

    public class ImplicitArgType extends DeferredAttr.DeferredTypeMap {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public ImplicitArgType(Symbol symbol, Resolve.MethodResolutionPhase methodResolutionPhase) {
            super(DeferredAttr.AttrMode.SPECULATIVE, symbol, methodResolutionPhase);
            DeferredAttr deferredAttr = Infer.this.rs.deferredAttr;
            deferredAttr.getClass();
        }

        @Override
        public Type visitClassType(Type.ClassType classType, Void r22) {
            return Infer.this.types.erasure(classType);
        }

        @Override
        public Type visitType(Type type, Void r22) {
            if (type.hasTag(TypeTag.DEFERRED)) {
                return visit(super.visitType(type, (Void) null));
            }
            if (!type.hasTag(TypeTag.BOT)) {
                return type;
            }
            Infer infer = Infer.this;
            return infer.types.boxedClass(infer.syms.voidType).type;
        }
    }

    public void reportBoundError(Type.UndetVar undetVar, Type.UndetVar.InferenceBound inferenceBound, Type.UndetVar.InferenceBound inferenceBound2) {
        reportInferenceError(String.format("incompatible.%s.%s.bounds", StringUtils.toLowerCase(inferenceBound.name()), StringUtils.toLowerCase(inferenceBound2.name())), undetVar.qtype, undetVar.getBounds(inferenceBound), undetVar.getBounds(inferenceBound2));
    }
}
