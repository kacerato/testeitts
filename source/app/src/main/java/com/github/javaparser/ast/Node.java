package com.github.javaparser.ast;

import com.github.javaparser.HasParentNode;
import com.github.javaparser.Range;
import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.comments.BlockComment;
import com.github.javaparser.ast.comments.Comment;
import com.github.javaparser.ast.comments.LineComment;
import com.github.javaparser.ast.nodeTypes.NodeWithOptionalScope;
import com.github.javaparser.ast.nodeTypes.NodeWithRange;
import com.github.javaparser.ast.nodeTypes.NodeWithScope;
import com.github.javaparser.ast.nodeTypes.NodeWithTokenRange;
import com.github.javaparser.ast.observer.AstObserver;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.observer.PropagatingAstObserver;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.EqualsVisitor;
import com.github.javaparser.ast.visitor.HashCodeVisitor;
import com.github.javaparser.ast.visitor.Visitable;
import com.github.javaparser.metamodel.InternalProperty;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.NodeMetaModel;
import com.github.javaparser.metamodel.OptionalProperty;
import com.github.javaparser.metamodel.PropertyMetaModel;
import com.github.javaparser.printer.ConfigurablePrinter;
import com.github.javaparser.printer.DefaultPrettyPrinter;
import com.github.javaparser.printer.Printer;
import com.github.javaparser.printer.configuration.DefaultConfigurationOption;
import com.github.javaparser.printer.configuration.DefaultPrinterConfiguration;
import com.github.javaparser.printer.configuration.PrinterConfiguration;
import com.github.javaparser.resolution.SymbolResolver;
import com.github.javaparser.utils.LineSeparator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;
import java.util.Queue;
import java.util.Set;
import java.util.Spliterators;
import java.util.Stack;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

public abstract class Node implements Cloneable, HasParentNode<Node>, Visitable, NodeWithRange<Node>, NodeWithTokenRange<Node> {

    @Deprecated
    public static final int ABSOLUTE_BEGIN_LINE = -1;

    @Deprecated
    public static final int ABSOLUTE_END_LINE = -2;
    private static final int LEVELS_TO_EXPLORE = 3;

    @OptionalProperty
    private Comment comment;

    @InternalProperty
    private Node parentNode;

    @InternalProperty
    private Range range;

    @InternalProperty
    private TokenRange tokenRange;
    public static Comparator<NodeWithRange<?>> NODE_BY_BEGIN_POSITION = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            int lambda$static$0;
            lambda$static$0 = Node.lambda$static$0((NodeWithRange) obj, (NodeWithRange) obj2);
            return lambda$static$0;
        }
    };
    protected static final PrinterConfiguration prettyPrinterNoCommentsConfiguration = new DefaultPrinterConfiguration().removeOption(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.PRINT_COMMENTS));
    public static final DataKey<SymbolResolver> SYMBOL_RESOLVER_KEY = new DataKey<SymbolResolver>() {
    };
    public static final DataKey<LineSeparator> LINE_SEPARATOR_KEY = new DataKey<LineSeparator>() {
    };
    public static final DataKey<Printer> PRINTER_KEY = new DataKey<Printer>() {
    };
    protected static final DataKey<Boolean> PHANTOM_KEY = new DataKey<Boolean>() {
    };

    @InternalProperty
    private ArrayList<Node> childNodes = new ArrayList<>(0);

    @InternalProperty
    private ArrayList<Comment> orphanComments = new ArrayList<>(0);

    @InternalProperty
    private IdentityHashMap<DataKey<?>, Object> data = null;

    @InternalProperty
    private ArrayList<AstObserver> observers = new ArrayList<>(0);

    @InternalProperty
    private Parsedness parsed = Parsedness.PARSED;

    public static class AnonymousClass5 {
        static final int[] $SwitchMap$com$github$javaparser$ast$Node$ObserverRegistrationMode;
        static final int[] $SwitchMap$com$github$javaparser$ast$Node$TreeTraversal;

        static {
            int[] iArr = new int[TreeTraversal.values().length];
            $SwitchMap$com$github$javaparser$ast$Node$TreeTraversal = iArr;
            try {
                iArr[TreeTraversal.BREADTHFIRST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$Node$TreeTraversal[TreeTraversal.POSTORDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$Node$TreeTraversal[TreeTraversal.PREORDER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$Node$TreeTraversal[TreeTraversal.DIRECT_CHILDREN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$Node$TreeTraversal[TreeTraversal.PARENTS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[ObserverRegistrationMode.values().length];
            $SwitchMap$com$github$javaparser$ast$Node$ObserverRegistrationMode = iArr2;
            try {
                iArr2[ObserverRegistrationMode.JUST_THIS_NODE.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$Node$ObserverRegistrationMode[ObserverRegistrationMode.THIS_NODE_AND_EXISTING_DESCENDANTS.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$Node$ObserverRegistrationMode[ObserverRegistrationMode.SELF_PROPAGATING.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static class BreadthFirstIterator implements Iterator<Node> {
        private final Queue<Node> queue;

        public BreadthFirstIterator(Node node) {
            LinkedList linkedList = new LinkedList();
            this.queue = linkedList;
            linkedList.add(node);
        }

        @Override
        public boolean hasNext() {
            return !this.queue.isEmpty();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Node next() {
            Node remove = this.queue.remove();
            this.queue.addAll(remove.getChildNodes());
            return remove;
        }
    }

    public static class DirectChildrenIterator implements Iterator<Node> {
        private final Iterator<Node> childrenIterator;

        public DirectChildrenIterator(Node node) {
            this.childrenIterator = node.getChildNodes().iterator();
        }

        @Override
        public boolean hasNext() {
            return this.childrenIterator.hasNext();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Node next() {
            return this.childrenIterator.next();
        }
    }

    public enum ObserverRegistrationMode {
        JUST_THIS_NODE,
        THIS_NODE_AND_EXISTING_DESCENDANTS,
        SELF_PROPAGATING
    }

    public static class ParentsVisitor implements Iterator<Node> {
        private Node node;

        public ParentsVisitor(Node node) {
            this.node = node;
        }

        @Override
        public boolean hasNext() {
            return this.node.getParentNode().isPresent();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Node next() {
            Node orElse = this.node.getParentNode().orElse(null);
            this.node = orElse;
            return orElse;
        }
    }

    public enum Parsedness {
        PARSED,
        UNPARSABLE
    }

    public static class PostOrderIterator implements Iterator<Node> {
        private final Stack<Level> stack;

        public static class Level {
            private final List<Node> nodes;
            private int index = 0;
            private boolean expanded = false;

            public Level(List<Node> nodes) {
                this.nodes = nodes;
            }

            public boolean done() {
                return this.index < this.nodes.size();
            }

            public Node getCurrent() {
                return this.nodes.get(this.index);
            }

            public void goToNext() {
                this.index++;
                this.expanded = false;
            }

            public boolean isCurrentExpanded() {
                return this.expanded;
            }

            public void setCurrentExpanded() {
                this.expanded = true;
            }
        }

        public PostOrderIterator(Node root) {
            Stack<Level> stack = new Stack<>();
            this.stack = stack;
            stack.push(new Level(Collections.singletonList(root)));
        }

        private void cleanupStack(Level state) {
            if (state.done()) {
                return;
            }
            this.stack.pop();
        }

        private void expand(Level state) {
            List<Node> childNodes = state.getCurrent().getChildNodes();
            if (!childNodes.isEmpty()) {
                this.stack.push(new Level(childNodes));
            }
            state.setCurrentExpanded();
        }

        private Node getNextAndCleanupStack(Level state) {
            Node current = state.getCurrent();
            state.goToNext();
            cleanupStack(state);
            return current;
        }

        @Override
        public boolean hasNext() {
            return !this.stack.empty();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Node next() {
            while (true) {
                Level peek = this.stack.peek();
                if (peek.isCurrentExpanded()) {
                    return getNextAndCleanupStack(peek);
                }
                expand(peek);
            }
        }
    }

    public static class PreOrderIterator implements Iterator<Node> {
        private final Stack<Node> stack;

        public PreOrderIterator(Node node) {
            Stack<Node> stack = new Stack<>();
            this.stack = stack;
            stack.add(node);
        }

        @Override
        public boolean hasNext() {
            return !this.stack.isEmpty();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Node next() {
            Node pop = this.stack.pop();
            List<Node> childNodes = pop.getChildNodes();
            for (int size = childNodes.size() - 1; size >= 0; size--) {
                this.stack.add(childNodes.get(size));
            }
            return pop;
        }
    }

    public enum TreeTraversal {
        PREORDER,
        BREADTHFIRST,
        POSTORDER,
        PARENTS,
        DIRECT_CHILDREN
    }

    public Node(TokenRange tokenRange) {
        setTokenRange(tokenRange);
    }

    private boolean inPhantomNode(Node node, int levels) {
        return node.getParentNode().isPresent() && (isPhantom(node.getParentNode().get()) || inPhantomNode(node.getParentNode().get(), levels - 1));
    }

    public static void lambda$findAll$13(final Class nodeType, final List found, Node node) {
        if (nodeType.isAssignableFrom(node.getClass())) {
            found.add(nodeType.cast(node));
        }
    }

    public static void lambda$findAll$14(final Predicate predicate, final List found, Node n10) {
        if (predicate.test(n10)) {
            found.add(n10);
        }
    }

    public static Optional lambda$findFirst$15(final Class nodeType, Node node) {
        return nodeType.isAssignableFrom(node.getClass()) ? Optional.of(nodeType.cast(node)) : Optional.empty();
    }

    public static Optional lambda$findFirst$16(final Class nodeType, final Predicate predicate, Node node) {
        if (nodeType.isAssignableFrom(node.getClass())) {
            Node node2 = (Node) nodeType.cast(node);
            if (predicate.test(node2)) {
                return Optional.of(node2);
            }
        }
        return Optional.empty();
    }

    public static Printer lambda$getPrinter$3(final PrinterConfiguration configuration, CompilationUnit c10) {
        return c10.getPrinter(configuration);
    }

    public static IllegalStateException lambda$getSymbolResolver$10() {
        return new IllegalStateException("The node is not inserted in a CompilationUnit");
    }

    public static SymbolResolver lambda$getSymbolResolver$9(CompilationUnit cu) {
        DataKey<SymbolResolver> dataKey = SYMBOL_RESOLVER_KEY;
        if (cu.containsData(dataKey)) {
            return (SymbolResolver) cu.getData(dataKey);
        }
        throw new IllegalStateException("Symbol resolution not configured: to configure consider setting a SymbolResolver in the ParserConfiguration");
    }

    public static boolean lambda$isAncestorOf$17(final Node descendant, Node n10) {
        return n10 == descendant;
    }

    public void lambda$notifyPropertyChange$7(final ObservableProperty property, final Object oldValue, final Object newValue, AstObserver o10) {
        o10.propertyChange(this, property, oldValue, newValue);
    }

    public void lambda$setParentNode$5(final Node newParentNode, AstObserver o10) {
        o10.parentChange(this, this.parentNode, newParentNode);
    }

    public static int lambda$static$0(NodeWithRange a10, NodeWithRange b10) {
        if (a10.hasRange() && b10.hasRange()) {
            return a10.getRange().get().begin.compareTo(b10.getRange().get().begin);
        }
        if (a10.hasRange() || b10.hasRange()) {
            return a10.hasRange() ? 1 : -1;
        }
        return 0;
    }

    public static void lambda$walk$12(final Class nodeType, final Consumer consumer, Node node) {
        if (nodeType.isAssignableFrom(node.getClass())) {
            consumer.accept(nodeType.cast(node));
        }
    }

    private Iterable<Node> treeIterable(final TreeTraversal traversal) {
        return new Iterable() {
            @Override
            public final Iterator iterator() {
                Iterator lambda$treeIterable$11;
                lambda$treeIterable$11 = Node.this.lambda$treeIterable$11(traversal);
                return lambda$treeIterable$11;
            }
        };
    }

    public Iterator<Node> lambda$treeIterable$11(TreeTraversal traversal) {
        int i10 = AnonymousClass5.$SwitchMap$com$github$javaparser$ast$Node$TreeTraversal[traversal.ordinal()];
        if (i10 == 1) {
            return new BreadthFirstIterator(this);
        }
        if (i10 == 2) {
            return new PostOrderIterator(this);
        }
        if (i10 == 3) {
            return new PreOrderIterator(this);
        }
        if (i10 == 4) {
            return new DirectChildrenIterator(this);
        }
        if (i10 == 5) {
            return new ParentsVisitor(this);
        }
        throw new IllegalArgumentException("Unknown traversal choice.");
    }

    public void addOrphanComment(Comment comment) {
        notifyPropertyChange(ObservableProperty.COMMENT, null, comment);
        this.orphanComments.add(comment);
        comment.setParentNode(this);
    }

    public boolean containsData(DataKey<?> key) {
        IdentityHashMap<DataKey<?>, Object> identityHashMap = this.data;
        if (identityHashMap == null) {
            return false;
        }
        return identityHashMap.containsKey(key);
    }

    public Printer lambda$getPrinter$2() {
        return lambda$getPrinter$4(getDefaultPrinterConfiguration());
    }

    public void customInitialization() {
    }

    public boolean equals(final Object obj) {
        if (obj instanceof Node) {
            return EqualsVisitor.equals(this, (Node) obj);
        }
        return false;
    }

    public <T extends Node> List<T> findAll(Class<T> nodeType) {
        final ArrayList arrayList = new ArrayList();
        walk(nodeType, new Consumer() {
            @Override
            public final void accept(Object obj) {
                List.this.add((Node) obj);
            }
        });
        return arrayList;
    }

    public Optional<Node> findByRange(Range range) {
        if (!isPhantom() && hasRange() && getRange().get().contains(range)) {
            Iterator<Node> it = getChildNodes().iterator();
            while (it.hasNext()) {
                Optional<Node> findByRange = it.next().findByRange(range);
                if (findByRange.isPresent()) {
                    return findByRange;
                }
            }
            return Optional.of(this);
        }
        return Optional.empty();
    }

    public Optional<CompilationUnit> findCompilationUnit() {
        Node findRootNode = findRootNode();
        return findRootNode instanceof CompilationUnit ? Optional.of((CompilationUnit) findRootNode) : Optional.empty();
    }

    public <M> Optional<M> findData(final DataKey<M> key) {
        return containsData(key) ? Optional.of(getData(key)) : Optional.empty();
    }

    public <T> Optional<T> findFirst(TreeTraversal traversal, Function<Node, Optional<T>> consumer) {
        Iterator<Node> it = treeIterable(traversal).iterator();
        while (it.hasNext()) {
            Optional<T> apply = consumer.apply(it.next());
            if (apply.isPresent()) {
                return apply;
            }
        }
        return Optional.empty();
    }

    public Node findRootNode() {
        Node node = this;
        while (node.getParentNode().isPresent()) {
            node = node.getParentNode().get();
        }
        return node;
    }

    public List<Comment> getAllContainedComments() {
        LinkedList linkedList = new LinkedList(this.orphanComments);
        for (Node node : getChildNodes()) {
            node.getComment().ifPresent(new C11727n(linkedList));
            linkedList.addAll(node.getAllContainedComments());
        }
        return linkedList;
    }

    public List<Node> getChildNodes() {
        return Collections.unmodifiableList(this.childNodes);
    }

    @Deprecated
    public <N extends Node> List<N> getChildNodesByType(Class<N> clazz) {
        ArrayList arrayList = new ArrayList();
        for (Node node : getChildNodes()) {
            if (clazz.isInstance(node)) {
                arrayList.add(clazz.cast(node));
            }
            arrayList.addAll(node.getChildNodesByType(clazz));
        }
        return arrayList;
    }

    public Optional<Comment> getComment() {
        return Optional.ofNullable(this.comment);
    }

    public <M> M getData(DataKey<M> dataKey) {
        IdentityHashMap<DataKey<?>, Object> identityHashMap = this.data;
        if (identityHashMap == null) {
            throw new IllegalStateException("No data of this type found. Use containsData to check for this first.");
        }
        M m10 = (M) identityHashMap.get(dataKey);
        if (m10 != null) {
            return m10;
        }
        throw new IllegalStateException("No data of this type found. Use containsData to check for this first.");
    }

    public Set<DataKey<?>> getDataKeys() {
        IdentityHashMap<DataKey<?>, Object> identityHashMap = this.data;
        return identityHashMap == null ? Collections.emptySet() : identityHashMap.o();
    }

    public PrinterConfiguration getDefaultPrinterConfiguration() {
        return new DefaultPrinterConfiguration();
    }

    public LineSeparator getLineEndingStyle() {
        DataKey<LineSeparator> dataKey = LINE_SEPARATOR_KEY;
        if (containsData(dataKey)) {
            return (LineSeparator) getData(dataKey);
        }
        Node node = this;
        while (node.getParentNode().isPresent()) {
            node = node.getParentNode().get();
            DataKey<LineSeparator> dataKey2 = LINE_SEPARATOR_KEY;
            if (node.containsData(dataKey2)) {
                return (LineSeparator) node.getData(dataKey2);
            }
        }
        return LineSeparator.SYSTEM;
    }

    public LineSeparator getLineEndingStyleOrDefault(LineSeparator defaultLineSeparator) {
        return getLineEndingStyle().isStandardEol() ? getLineEndingStyle() : defaultLineSeparator;
    }

    public NodeMetaModel getMetaModel() {
        return JavaParserMetaModel.nodeMetaModel;
    }

    @Deprecated
    public <N extends Node> List<N> getNodesByType(Class<N> clazz) {
        return getChildNodesByType(clazz);
    }

    public List<Comment> getOrphanComments() {
        return Collections.unmodifiableList(this.orphanComments);
    }

    @Override
    public Optional<Node> getParentNode() {
        return Optional.ofNullable(this.parentNode);
    }

    @Override
    public Node getParentNodeForChildren() {
        return this;
    }

    public Parsedness getParsed() {
        return this.parsed;
    }

    public Printer getPrinter() {
        return (Printer) findCompilationUnit().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Printer printer;
                printer = ((CompilationUnit) obj).getPrinter();
                return printer;
            }
        }).orElseGet(new Supplier() {
            @Override
            public final Object get() {
                Printer lambda$getPrinter$2;
                lambda$getPrinter$2 = Node.this.lambda$getPrinter$2();
                return lambda$getPrinter$2;
            }
        });
    }

    @Override
    public Optional<Range> getRange() {
        return Optional.ofNullable(this.range);
    }

    public SymbolResolver getSymbolResolver() {
        return (SymbolResolver) findCompilationUnit().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                SymbolResolver lambda$getSymbolResolver$9;
                lambda$getSymbolResolver$9 = Node.lambda$getSymbolResolver$9((CompilationUnit) obj);
                return lambda$getSymbolResolver$9;
            }
        }).orElseThrow(new Supplier() {
            @Override
            public final Object get() {
                IllegalStateException lambda$getSymbolResolver$10;
                lambda$getSymbolResolver$10 = Node.lambda$getSymbolResolver$10();
                return lambda$getSymbolResolver$10;
            }
        });
    }

    @Override
    public Optional<TokenRange> getTokenRange() {
        return Optional.ofNullable(this.tokenRange);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean hasScope() {
        return (NodeWithOptionalScope.class.isAssignableFrom(getClass()) && ((NodeWithOptionalScope) this).getScope().isPresent()) || (NodeWithScope.class.isAssignableFrom(getClass()) && ((NodeWithScope) this).getScope() != null);
    }

    public final int hashCode() {
        return HashCodeVisitor.hashCode(this);
    }

    public boolean isAncestorOf(final Node descendant) {
        return this != descendant && findFirst(Node.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$isAncestorOf$17;
                lambda$isAncestorOf$17 = Node.lambda$isAncestorOf$17(Node.this, (Node) obj);
                return lambda$isAncestorOf$17;
            }
        }).isPresent();
    }

    public boolean isPhantom() {
        return isPhantom(this);
    }

    @Override
    public boolean isRegistered(AstObserver observer) {
        return this.observers.contains(observer);
    }

    public <P> void notifyPropertyChange(final ObservableProperty property, final P oldValue, final P newValue) {
        this.observers.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Node.this.lambda$notifyPropertyChange$7(property, oldValue, newValue, (AstObserver) obj);
            }
        });
    }

    @Override
    public void register(AstObserver observer) {
        if (this.observers.contains(observer)) {
            return;
        }
        this.observers.add(observer);
    }

    public void registerForSubtree(final AstObserver observer) {
        NodeList nodeList;
        register(observer);
        getChildNodes().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((Node) obj).registerForSubtree(AstObserver.this);
            }
        });
        for (PropertyMetaModel propertyMetaModel : getMetaModel().getAllPropertyMetaModels()) {
            if (propertyMetaModel.isNodeList() && (nodeList = (NodeList) propertyMetaModel.getValue(this)) != null) {
                nodeList.register(observer);
            }
        }
    }

    public boolean remove() {
        Node node = this.parentNode;
        if (node == null) {
            return false;
        }
        return node.remove(this);
    }

    public Node removeComment() {
        return setComment(null);
    }

    public void removeData(DataKey<?> key) {
        IdentityHashMap<DataKey<?>, Object> identityHashMap = this.data;
        if (identityHashMap != null) {
            identityHashMap.remove(key);
        }
    }

    public void removeForced() {
        if (remove()) {
            return;
        }
        getParentNode().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((Node) obj).remove();
            }
        });
    }

    public boolean removeOrphanComment(Comment comment) {
        boolean remove = this.orphanComments.remove(comment);
        if (remove) {
            notifyPropertyChange(ObservableProperty.COMMENT, comment, null);
            comment.setParentNode((Node) null);
            this.orphanComments.trimToSize();
        }
        return remove;
    }

    public boolean replace(Node node) {
        Node node2 = this.parentNode;
        if (node2 == null) {
            return false;
        }
        return node2.replace(this, node);
    }

    public void setAsParentNodeOf(Node childNode) {
        if (childNode != null) {
            childNode.setParentNode(getParentNodeForChildren());
        }
    }

    public final Node setBlockComment(String comment) {
        return setComment(new BlockComment(comment));
    }

    public Node setComment(final Comment comment) {
        Comment comment2 = this.comment;
        if (comment2 == comment) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.COMMENT, comment2, comment);
        Comment comment3 = this.comment;
        if (comment3 != null) {
            comment3.setCommentedNode(null);
        }
        this.comment = comment;
        if (comment != null) {
            comment.setCommentedNode(this);
        }
        return this;
    }

    public <M> void setData(DataKey<M> key, M object) {
        if (this.data == null) {
            this.data = new IdentityHashMap<>();
        }
        this.data.put(key, object);
    }

    public final Node setLineComment(String comment) {
        return setComment(new LineComment(comment));
    }

    public Node setParsed(Parsedness parsed) {
        this.parsed = parsed;
        return this;
    }

    public Stream<Node> stream(TreeTraversal traversal) {
        return StreamSupport.stream(Spliterators.spliteratorUnknownSize(lambda$treeIterable$11(traversal), 257), false);
    }

    public final String toString() {
        ConfigurablePrinter configurablePrinter;
        PrinterConfiguration configuration;
        Printer printer = getPrinter();
        if (containsData(LINE_SEPARATOR_KEY)) {
            LineSeparator lineEndingStyleOrDefault = getLineEndingStyleOrDefault(LineSeparator.SYSTEM);
            if ((printer instanceof ConfigurablePrinter) && (configuration = (configurablePrinter = (ConfigurablePrinter) printer).getConfiguration()) != null) {
                configuration.addOption(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.END_OF_LINE_CHARACTER, lineEndingStyleOrDefault.asRawString()));
                configurablePrinter.setConfiguration(configuration);
            }
        }
        return printer.print(this);
    }

    public void tryAddImportToParentCompilationUnit(final Class<?> clazz) {
        findAncestor(CompilationUnit.class).ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((CompilationUnit) obj).addImport((Class<?>) Class.this);
            }
        });
    }

    @Override
    public void unregister(AstObserver observer) {
        this.observers.remove(observer);
        this.observers.trimToSize();
    }

    public void walk(TreeTraversal traversal, Consumer<Node> consumer) {
        Iterator<Node> it = treeIterable(traversal).iterator();
        while (it.hasNext()) {
            consumer.accept(it.next());
        }
    }

    private boolean isPhantom(Node node) {
        DataKey<Boolean> dataKey = PHANTOM_KEY;
        if (!node.containsData(dataKey)) {
            node.setData(dataKey, Boolean.valueOf((node.getParentNode().isPresent() && node.getParentNode().get().hasRange() && node.hasRange() && !node.getParentNode().get().getRange().get().contains(node.getRange().get())) || inPhantomNode(node, 3)));
        }
        return ((Boolean) node.getData(dataKey)).booleanValue();
    }

    @Override
    public Node mo1220clone() {
        return (Node) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    public Printer lambda$getPrinter$4(PrinterConfiguration configuration) {
        return new DefaultPrettyPrinter(configuration);
    }

    public Printer getPrinter(final PrinterConfiguration configuration) {
        return (Printer) findCompilationUnit().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Printer lambda$getPrinter$3;
                lambda$getPrinter$3 = Node.lambda$getPrinter$3(PrinterConfiguration.this, (CompilationUnit) obj);
                return lambda$getPrinter$3;
            }
        }).orElseGet(new Supplier() {
            @Override
            public final Object get() {
                Printer lambda$getPrinter$4;
                lambda$getPrinter$4 = Node.this.lambda$getPrinter$4(configuration);
                return lambda$getPrinter$4;
            }
        });
    }

    public void setAsParentNodeOf(NodeList<? extends Node> list) {
        if (list != null) {
            list.setParentNode(getParentNodeForChildren());
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Node setParentNode(final Node newParentNode) {
        if (newParentNode == this.parentNode) {
            return this;
        }
        this.observers.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Node.this.lambda$setParentNode$5(newParentNode, (AstObserver) obj);
            }
        });
        Node node = this.parentNode;
        if (node != null) {
            ArrayList<Node> arrayList = node.childNodes;
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                if (arrayList.get(i10) == this) {
                    arrayList.remove(i10);
                }
            }
            arrayList.trimToSize();
        }
        this.parentNode = newParentNode;
        if (newParentNode != null) {
            newParentNode.childNodes.add(this);
        }
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Node setRange(Range range) {
        Range range2 = this.range;
        if (range2 == range) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.RANGE, range2, range);
        this.range = range;
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Node setTokenRange(TokenRange tokenRange) {
        this.tokenRange = tokenRange;
        if (tokenRange != null && tokenRange.getBegin().hasRange() && tokenRange.getEnd().hasRange()) {
            this.range = new Range(tokenRange.getBegin().getRange().get().begin, tokenRange.getEnd().getRange().get().end);
        } else {
            this.range = null;
        }
        return this;
    }

    public <T extends Node> List<T> findAll(final Class<T> nodeType, TreeTraversal traversal) {
        final ArrayList arrayList = new ArrayList();
        walk(traversal, new Consumer() {
            @Override
            public final void accept(Object obj) {
                Node.lambda$findAll$13(Class.this, arrayList, (Node) obj);
            }
        });
        return arrayList;
    }

    public void register(AstObserver observer, ObserverRegistrationMode mode) {
        if (mode != null) {
            int i10 = AnonymousClass5.$SwitchMap$com$github$javaparser$ast$Node$ObserverRegistrationMode[mode.ordinal()];
            if (i10 == 1) {
                register(observer);
                return;
            }
            if (i10 == 2) {
                registerForSubtree(observer);
                return;
            } else {
                if (i10 == 3) {
                    registerForSubtree(PropagatingAstObserver.transformInPropagatingObserver(observer));
                    return;
                }
                throw new UnsupportedOperationException("This mode is not supported: " + ((Object) mode));
            }
        }
        throw new IllegalArgumentException("Mode should be not null");
    }

    public boolean remove(Node node) {
        Comment comment;
        if (node == null || (comment = this.comment) == null || node != comment) {
            return false;
        }
        removeComment();
        return true;
    }

    public boolean replace(Node node, Node replacementNode) {
        Comment comment;
        if (node == null || (comment = this.comment) == null || node != comment) {
            return false;
        }
        setComment((Comment) replacementNode);
        return true;
    }

    public Stream<Node> stream() {
        return StreamSupport.stream(Spliterators.spliteratorUnknownSize(lambda$treeIterable$11(TreeTraversal.PREORDER), 257), false);
    }

    public void walk(Consumer<Node> consumer) {
        walk(TreeTraversal.PREORDER, consumer);
    }

    public <T extends Node> void walk(final Class<T> nodeType, final Consumer<T> consumer) {
        walk(TreeTraversal.PREORDER, new Consumer() {
            @Override
            public final void accept(Object obj) {
                Node.lambda$walk$12(Class.this, consumer, (Node) obj);
            }
        });
    }

    public <T extends Node> List<T> findAll(Class<T> nodeType, final Predicate<T> predicate) {
        final ArrayList arrayList = new ArrayList();
        walk(nodeType, new Consumer() {
            @Override
            public final void accept(Object obj) {
                Node.lambda$findAll$14(Predicate.this, arrayList, (Node) obj);
            }
        });
        return arrayList;
    }

    public <N extends Node> Optional<N> findFirst(final Class<N> nodeType) {
        return findFirst(TreeTraversal.PREORDER, new Function() {
            @Override
            public final Object apply(Object obj) {
                Optional lambda$findFirst$15;
                lambda$findFirst$15 = Node.lambda$findFirst$15(Class.this, (Node) obj);
                return lambda$findFirst$15;
            }
        });
    }

    public <N extends Node> Optional<N> findFirst(final Class<N> nodeType, final Predicate<N> predicate) {
        return findFirst(TreeTraversal.PREORDER, new Function() {
            @Override
            public final Object apply(Object obj) {
                Optional lambda$findFirst$16;
                lambda$findFirst$16 = Node.lambda$findFirst$16(Class.this, predicate, (Node) obj);
                return lambda$findFirst$16;
            }
        });
    }

    public final String toString(PrinterConfiguration configuration) {
        Printer printer = getPrinter();
        if (!(printer instanceof ConfigurablePrinter)) {
            return printer.print(this);
        }
        ConfigurablePrinter configurablePrinter = (ConfigurablePrinter) printer;
        PrinterConfiguration configuration2 = configurablePrinter.getConfiguration();
        String print = getPrinter(configuration).print(this);
        configurablePrinter.setConfiguration(configuration2);
        return print;
    }
}
