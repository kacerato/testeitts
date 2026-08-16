package com.github.javaparser.printer.lexicalpreservation;

import com.github.javaparser.JavaToken;
import com.github.javaparser.Position;
import com.github.javaparser.Range;
import com.github.javaparser.TokenRange;
import com.github.javaparser.TokenTypes;
import com.github.javaparser.ast.DataKey;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.body.VariableDeclarator;
import com.github.javaparser.ast.comments.BlockComment;
import com.github.javaparser.ast.comments.Comment;
import com.github.javaparser.ast.comments.JavadocComment;
import com.github.javaparser.ast.comments.LineComment;
import com.github.javaparser.ast.nodeTypes.NodeWithVariables;
import com.github.javaparser.ast.observer.AstObserver;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.observer.PropagatingAstObserver;
import com.github.javaparser.ast.type.PrimitiveType;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.visitor.TreeVisitor;
import com.github.javaparser.printer.ConcreteSyntaxModel;
import com.github.javaparser.printer.concretesyntaxmodel.CsmElement;
import com.github.javaparser.printer.concretesyntaxmodel.CsmIndent;
import com.github.javaparser.printer.concretesyntaxmodel.CsmMix;
import com.github.javaparser.printer.concretesyntaxmodel.CsmToken;
import com.github.javaparser.printer.concretesyntaxmodel.CsmUnindent;
import com.github.javaparser.printer.lexicalpreservation.LexicalDifferenceCalculator;
import com.github.javaparser.printer.lexicalpreservation.LexicalPreservingPrinter;
import com.github.javaparser.printer.lexicalpreservation.TextElementIteratorsFactory;
import com.github.javaparser.utils.LineSeparator;
import com.github.javaparser.utils.Pair;
import com.github.javaparser.utils.Utils;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;

public class LexicalPreservingPrinter {
    private static AstObserver observer;
    private static String JAVA_UTIL_OPTIONAL = Optional.class.getCanonicalName();
    private static String JAVAPARSER_AST_NODELIST = NodeList.class.getCanonicalName();
    public static final DataKey<NodeText> NODE_TEXT_DATA = new DataKey<NodeText>() {
    };
    private static final LexicalDifferenceCalculator LEXICAL_DIFFERENCE_CALCULATOR = new LexicalDifferenceCalculator();

    public static class AnonymousClass3 {
        static final int[] $SwitchMap$com$github$javaparser$ast$type$PrimitiveType$Primitive;

        static {
            int[] iArr = new int[PrimitiveType.Primitive.values().length];
            $SwitchMap$com$github$javaparser$ast$type$PrimitiveType$Primitive = iArr;
            try {
                iArr[PrimitiveType.Primitive.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$type$PrimitiveType$Primitive[PrimitiveType.Primitive.CHAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$type$PrimitiveType$Primitive[PrimitiveType.Primitive.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$type$PrimitiveType$Primitive[PrimitiveType.Primitive.SHORT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$type$PrimitiveType$Primitive[PrimitiveType.Primitive.INT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$type$PrimitiveType$Primitive[PrimitiveType.Primitive.LONG.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$type$PrimitiveType$Primitive[PrimitiveType.Primitive.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$type$PrimitiveType$Primitive[PrimitiveType.Primitive.DOUBLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static class Observer extends PropagatingAstObserver {
        private Observer() {
        }

        private List<ChildTextElement> findChildTextElementForComment(final Comment oldValue, NodeText nodeText) {
            List<ChildTextElement> selectMatchingChildElements = selectMatchingChildElements(oldValue, nodeText);
            if (selectMatchingChildElements.size() > 1) {
                selectMatchingChildElements = (List) selectMatchingChildElements.stream().filter(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean lambda$findChildTextElementForComment$2;
                        lambda$findChildTextElementForComment$2 = LexicalPreservingPrinter.Observer.lambda$findChildTextElementForComment$2(Comment.this, (ChildTextElement) obj);
                        return lambda$findChildTextElementForComment$2;
                    }
                }).filter(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean lambda$findChildTextElementForComment$3;
                        lambda$findChildTextElementForComment$3 = LexicalPreservingPrinter.Observer.lambda$findChildTextElementForComment$3(Comment.this, (ChildTextElement) obj);
                        return lambda$findChildTextElementForComment$3;
                    }
                }).collect(Collectors.toList());
            }
            if (selectMatchingChildElements.size() == 1) {
                return selectMatchingChildElements;
            }
            throw new IllegalStateException("The matching child text element for the comment to be removed could not be found.");
        }

        private List<TokenTextElement> findTokenTextElementForComment(final Comment oldValue, NodeText nodeText) {
            return (List) (oldValue instanceof JavadocComment ? (List) nodeText.getElements().stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean isToken;
                    isToken = ((TextElement) obj).isToken(8);
                    return isToken;
                }
            }).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    TokenTextElement lambda$findTokenTextElementForComment$7;
                    lambda$findTokenTextElementForComment$7 = LexicalPreservingPrinter.Observer.lambda$findTokenTextElementForComment$7((TextElement) obj);
                    return lambda$findTokenTextElementForComment$7;
                }
            }).filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$findTokenTextElementForComment$8;
                    lambda$findTokenTextElementForComment$8 = LexicalPreservingPrinter.Observer.lambda$findTokenTextElementForComment$8(Comment.this, (TokenTextElement) obj);
                    return lambda$findTokenTextElementForComment$8;
                }
            }).collect(Collectors.toList()) : oldValue instanceof BlockComment ? (List) nodeText.getElements().stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean isToken;
                    isToken = ((TextElement) obj).isToken(9);
                    return isToken;
                }
            }).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    TokenTextElement lambda$findTokenTextElementForComment$10;
                    lambda$findTokenTextElementForComment$10 = LexicalPreservingPrinter.Observer.lambda$findTokenTextElementForComment$10((TextElement) obj);
                    return lambda$findTokenTextElementForComment$10;
                }
            }).filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$findTokenTextElementForComment$11;
                    lambda$findTokenTextElementForComment$11 = LexicalPreservingPrinter.Observer.lambda$findTokenTextElementForComment$11(Comment.this, (TokenTextElement) obj);
                    return lambda$findTokenTextElementForComment$11;
                }
            }).collect(Collectors.toList()) : (List) nodeText.getElements().stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean isToken;
                    isToken = ((TextElement) obj).isToken(5);
                    return isToken;
                }
            }).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    TokenTextElement lambda$findTokenTextElementForComment$13;
                    lambda$findTokenTextElementForComment$13 = LexicalPreservingPrinter.Observer.lambda$findTokenTextElementForComment$13((TextElement) obj);
                    return lambda$findTokenTextElementForComment$13;
                }
            }).filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$findTokenTextElementForComment$14;
                    lambda$findTokenTextElementForComment$14 = LexicalPreservingPrinter.Observer.lambda$findTokenTextElementForComment$14(Comment.this, (TokenTextElement) obj);
                    return lambda$findTokenTextElementForComment$14;
                }
            }).collect(Collectors.toList())).stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$findTokenTextElementForComment$15;
                    lambda$findTokenTextElementForComment$15 = LexicalPreservingPrinter.Observer.lambda$findTokenTextElementForComment$15(Comment.this, (TokenTextElement) obj);
                    return lambda$findTokenTextElementForComment$15;
                }
            }).collect(Collectors.toList());
        }

        private void fixIndentOfAddedNode(NodeText nodeText, int index) {
            if (index <= 0) {
                return;
            }
            TextElement textElement = null;
            for (int i10 = index; i10 >= 0; i10--) {
                TextElement textElement2 = nodeText.getTextElement(i10);
                if (textElement2.isSpaceOrTab()) {
                    textElement = nodeText.getTextElement(i10);
                }
                if (!textElement2.isSpaceOrTab()) {
                    if (!textElement2.isNewline() || i10 == index) {
                        return;
                    }
                    int i11 = index - i10;
                    for (int i12 = 0; i12 < i11; i12++) {
                        if (textElement != null) {
                            nodeText.addElement(index, new TokenTextElement(JavaToken.Kind.SPACE.getKind(), textElement.expand()));
                        } else {
                            nodeText.addElement(index, new TokenTextElement(JavaToken.Kind.SPACE.getKind()));
                        }
                    }
                    return;
                }
            }
        }

        private int getIndexOfComment(Comment oldValue, NodeText nodeText) {
            List<TokenTextElement> findTokenTextElementForComment = findTokenTextElementForComment(oldValue, nodeText);
            if (findTokenTextElementForComment.isEmpty()) {
                ChildTextElement childTextElement = findChildTextElementForComment(oldValue, nodeText).get(0);
                return nodeText.findElement(childTextElement.and(childTextElement.matchByRange()));
            }
            TokenTextElement tokenTextElement = findTokenTextElementForComment.get(0);
            return nodeText.findElement(tokenTextElement.and(tokenTextElement.matchByRange()));
        }

        private boolean isCompleteLine(List<TextElement> elements, int index) {
            boolean z10;
            if (index <= 0 || index >= elements.size()) {
                return false;
            }
            ListIterator<TextElement> listIterator = elements.listIterator(index);
            while (listIterator.hasNext()) {
                TextElement next = listIterator.next();
                if (!next.isNewline()) {
                    if (!next.isSpaceOrTab()) {
                        z10 = false;
                        break;
                    }
                } else {
                    break;
                }
            }
            z10 = true;
            ListIterator<TextElement> listIterator2 = elements.listIterator(index);
            while (listIterator2.hasPrevious() && z10) {
                TextElement previous = listIterator2.previous();
                if (previous.isNewline()) {
                    break;
                }
                if (!previous.isSpaceOrTab()) {
                    z10 = false;
                }
            }
            return z10;
        }

        private boolean isSameComment(Comment childValue, Comment oldValue) {
            return childValue.getContent().equals(oldValue.getContent());
        }

        public static NodeText lambda$concretePropertyChange$0(final Optional parentNode, Node parent) {
            return LexicalPreservingPrinter.getOrCreateNodeText((Node) parentNode.get());
        }

        public static boolean lambda$findChildTextElementForComment$2(final Comment oldValue, ChildTextElement t10) {
            return t10.getChild().hasRange() && oldValue.hasRange();
        }

        public static boolean lambda$findChildTextElementForComment$3(final Comment oldValue, ChildTextElement t10) {
            return t10.getChild().getRange().get().equals(oldValue.getRange().get()) || (t10.getChild().getComment().isPresent() && t10.getChild().getComment().get().hasRange() && t10.getChild().getComment().get().getRange().get().equals(oldValue.getRange().get()));
        }

        public static TokenTextElement lambda$findTokenTextElementForComment$10(TextElement e10) {
            return (TokenTextElement) e10;
        }

        public static boolean lambda$findTokenTextElementForComment$11(final Comment oldValue, TokenTextElement t10) {
            return t10.getText().equals(oldValue.asString());
        }

        public static TokenTextElement lambda$findTokenTextElementForComment$13(TextElement e10) {
            return (TokenTextElement) e10;
        }

        public static boolean lambda$findTokenTextElementForComment$14(final Comment oldValue, TokenTextElement t10) {
            return t10.getText().trim().equals(oldValue.asString().trim());
        }

        public static boolean lambda$findTokenTextElementForComment$15(final Comment oldValue, TokenTextElement t10) {
            return !(t10.getToken().hasRange() || oldValue.hasRange()) || (t10.getToken().hasRange() && oldValue.hasRange() && t10.getToken().getRange().get().equals(oldValue.getRange().get()));
        }

        public static TokenTextElement lambda$findTokenTextElementForComment$7(TextElement e10) {
            return (TokenTextElement) e10;
        }

        public static boolean lambda$findTokenTextElementForComment$8(final Comment oldValue, TokenTextElement t10) {
            return t10.getText().equals(oldValue.asString());
        }

        public static ChildTextElement lambda$selectMatchingChildElements$5(TextElement c10) {
            return (ChildTextElement) c10;
        }

        private TokenTextElement makeCommentToken(Comment newComment) {
            if (newComment.isJavadocComment()) {
                return new TokenTextElement(8, newComment.getHeader() + newComment.getContent() + newComment.getFooter());
            }
            if (newComment.isLineComment()) {
                return new TokenTextElement(5, newComment.getHeader() + newComment.getContent());
            }
            if (!newComment.isBlockComment()) {
                throw new UnsupportedOperationException("Unknown type of comment: " + newComment.getClass().getSimpleName());
            }
            return new TokenTextElement(9, newComment.getHeader() + newComment.getContent() + newComment.getFooter());
        }

        private void removeAllExtraCharacters(List<TextElement> elements, int index) {
            if (index < 0 || index >= elements.size()) {
                return;
            }
            removeAllExtraCharactersStartingFrom(elements.listIterator(index));
            removeAllExtraCharactersBeforePosition(elements.listIterator(index));
        }

        private void removeAllExtraCharactersBeforePosition(ListIterator<TextElement> iterator) {
            while (iterator.hasPrevious() && iterator.previous().isSpaceOrTab()) {
                iterator.remove();
            }
        }

        private void removeAllExtraCharactersStartingFrom(ListIterator<TextElement> iterator) {
            while (iterator.hasNext()) {
                TextElement next = iterator.next();
                if (!next.isSpaceOrTab()) {
                    if (next.isNewline()) {
                        iterator.remove();
                        return;
                    }
                    return;
                }
                iterator.remove();
            }
        }

        private List<ChildTextElement> selectMatchingChildElements(Comment oldValue, NodeText nodeText) {
            ArrayList arrayList = new ArrayList();
            ListIterator listIterator = ((List) nodeText.getElements().stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean isChild;
                    isChild = ((TextElement) obj).isChild();
                    return isChild;
                }
            }).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    ChildTextElement lambda$selectMatchingChildElements$5;
                    lambda$selectMatchingChildElements$5 = LexicalPreservingPrinter.Observer.lambda$selectMatchingChildElements$5((TextElement) obj);
                    return lambda$selectMatchingChildElements$5;
                }
            }).collect(Collectors.toList())).listIterator();
            while (listIterator.hasNext()) {
                ChildTextElement childTextElement = (ChildTextElement) listIterator.next();
                if (childTextElement.isComment() && isSameComment((Comment) childTextElement.getChild(), oldValue)) {
                    arrayList.add(childTextElement);
                } else {
                    Node child = childTextElement.getChild();
                    if (child.getComment().isPresent() && isSameComment(child.getComment().get(), oldValue)) {
                        arrayList.add(childTextElement);
                    }
                }
            }
            return arrayList;
        }

        @Override
        public void concreteListChange(NodeList<?> changedList, AstObserver.ListChangeType type, int index, Node nodeAddedOrRemoved) {
            List<DifferenceElement> calculateListAdditionDifference;
            NodeText orCreateNodeText = LexicalPreservingPrinter.getOrCreateNodeText(changedList.getParentNodeForChildren());
            if (type == AstObserver.ListChangeType.REMOVAL) {
                calculateListAdditionDifference = LexicalPreservingPrinter.LEXICAL_DIFFERENCE_CALCULATOR.calculateListRemovalDifference(LexicalPreservingPrinter.findNodeListName(changedList), changedList, index);
            } else {
                if (type != AstObserver.ListChangeType.ADDITION) {
                    throw new UnsupportedOperationException("Unknown change type: " + ((Object) type));
                }
                calculateListAdditionDifference = LexicalPreservingPrinter.LEXICAL_DIFFERENCE_CALCULATOR.calculateListAdditionDifference(LexicalPreservingPrinter.findNodeListName(changedList), changedList, index, nodeAddedOrRemoved);
            }
            new Difference(calculateListAdditionDifference, orCreateNodeText, changedList.getParentNodeForChildren()).apply();
        }

        @Override
        public void concreteListReplacement(NodeList<?> changedList, int index, Node oldValue, Node newValue) {
            new Difference(LexicalPreservingPrinter.LEXICAL_DIFFERENCE_CALCULATOR.calculateListReplacementDifference(LexicalPreservingPrinter.findNodeListName(changedList), changedList, index, newValue), LexicalPreservingPrinter.getOrCreateNodeText(changedList.getParentNodeForChildren()), changedList.getParentNodeForChildren()).apply();
        }

        @Override
        public void concretePropertyChange(final Node observedNode, ObservableProperty property, Object oldValue, Object newValue) {
            if (oldValue == newValue || property == ObservableProperty.RANGE || property == ObservableProperty.COMMENTED_NODE) {
                return;
            }
            if (property == ObservableProperty.COMMENT) {
                final Optional<Node> parentNode = observedNode.getParentNode();
                NodeText nodeText = (NodeText) parentNode.map(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        NodeText lambda$concretePropertyChange$0;
                        lambda$concretePropertyChange$0 = LexicalPreservingPrinter.Observer.lambda$concretePropertyChange$0(Optional.this, (Node) obj);
                        return lambda$concretePropertyChange$0;
                    }
                }).orElseGet(new Supplier() {
                    @Override
                    public final Object get() {
                        NodeText orCreateNodeText;
                        orCreateNodeText = LexicalPreservingPrinter.getOrCreateNodeText(Node.this);
                        return orCreateNodeText;
                    }
                });
                if (oldValue == null) {
                    int findChild = parentNode.isPresent() ? nodeText.findChild(observedNode) : 0;
                    fixIndentOfAddedNode(nodeText, findChild - 1);
                    LineSeparator lineEndingStyleOrDefault = observedNode.getLineEndingStyleOrDefault(LineSeparator.SYSTEM);
                    nodeText.addElement(findChild, makeCommentToken((Comment) newValue));
                    nodeText.addToken(findChild + 1, TokenTypes.eolTokenKind(lineEndingStyleOrDefault), lineEndingStyleOrDefault.asRawString());
                } else if (newValue != null) {
                    List<TokenTextElement> findTokenTextElementForComment = findTokenTextElementForComment((Comment) oldValue, nodeText);
                    if (findTokenTextElementForComment.size() != 1) {
                        throw new IllegalStateException("The matching comment to be replaced could not be found");
                    }
                    TokenTextElement tokenTextElement = findTokenTextElementForComment.get(0);
                    nodeText.replace(tokenTextElement.and(tokenTextElement.matchByRange()), makeCommentToken((Comment) newValue));
                } else {
                    if (!(oldValue instanceof Comment)) {
                        throw new UnsupportedOperationException("Trying to remove something that is not a comment!");
                    }
                    Comment comment = (Comment) oldValue;
                    if (comment.isOrphan()) {
                        nodeText = LexicalPreservingPrinter.getOrCreateNodeText(observedNode);
                    }
                    int indexOfComment = getIndexOfComment(comment, nodeText);
                    nodeText.removeElement(indexOfComment);
                    if (isCompleteLine(nodeText.getElements(), indexOfComment)) {
                        removeAllExtraCharacters(nodeText.getElements(), indexOfComment);
                    } else {
                        removeAllExtraCharactersStartingFrom(nodeText.getElements().listIterator(indexOfComment));
                    }
                }
            }
            NodeText orCreateNodeText = LexicalPreservingPrinter.getOrCreateNodeText(observedNode);
            if (orCreateNodeText == null) {
                throw new NullPointerException(observedNode.getClass().getSimpleName());
            }
            LexicalPreservingPrinter.LEXICAL_DIFFERENCE_CALCULATOR.calculatePropertyChange(orCreateNodeText, observedNode, property, oldValue, newValue);
        }
    }

    private static AstObserver createObserver() {
        return new Observer();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static List<TextElement> findIndentation(Node node) {
        LinkedList linkedList = new LinkedList();
        Iterator<TokenTextElement> it = tokensPreceeding(node);
        while (it.hasNext()) {
            TokenTextElement next = it.next();
            if (next.getTokenKind() == 5 || next.isNewline()) {
                break;
            }
            linkedList.add(next);
        }
        Collections.reverse(linkedList);
        for (int i10 = 0; i10 < linkedList.size(); i10++) {
            if (!((TextElement) linkedList.get(i10)).isSpaceOrTab()) {
                return linkedList.subList(0, i10);
            }
        }
        return linkedList;
    }

    public static ObservableProperty findNodeListName(NodeList<?> nodeList) {
        Node parentNodeForChildren = nodeList.getParentNodeForChildren();
        for (Method method : parentNodeForChildren.getClass().getMethods()) {
            if (method.getParameterCount() == 0 && method.getReturnType().getCanonicalName().equals(JAVAPARSER_AST_NODELIST)) {
                try {
                    Object invoke = method.invoke(parentNodeForChildren, null);
                    if (!(invoke instanceof NodeList)) {
                        throw new IllegalStateException("Expected NodeList, found " + invoke.getClass().getCanonicalName());
                    }
                    if (((NodeList) invoke) == nodeList) {
                        String name = method.getName();
                        if (name.startsWith("get")) {
                            name = name.substring(3);
                        }
                        return ObservableProperty.fromCamelCaseName(Utils.decapitalize(name));
                    }
                } catch (IllegalAccessException e10) {
                    e = e10;
                    throw new RuntimeException(e);
                } catch (InvocationTargetException e11) {
                    e = e11;
                    throw new RuntimeException(e);
                }
            } else if (method.getParameterCount() == 0 && isReturningOptionalNodeList(method)) {
                try {
                    Optional optional = (Optional) method.invoke(parentNodeForChildren, null);
                    if (optional.isPresent() && optional.get() == nodeList) {
                        String name2 = method.getName();
                        if (name2.startsWith("get")) {
                            name2 = name2.substring(3);
                        }
                        return ObservableProperty.fromCamelCaseName(Utils.decapitalize(name2));
                    }
                } catch (IllegalAccessException e12) {
                    e = e12;
                    throw new RuntimeException(e);
                } catch (InvocationTargetException e13) {
                    e = e13;
                    throw new RuntimeException(e);
                }
            }
        }
        throw new IllegalArgumentException("Cannot find list name of NodeList of size " + nodeList.size());
    }

    public static NodeText getOrCreateNodeText(Node node) {
        DataKey<NodeText> dataKey = NODE_TEXT_DATA;
        if (!node.containsData(dataKey)) {
            NodeText nodeText = new NodeText();
            node.setData(dataKey, nodeText);
            prettyPrintingTextNode(node, nodeText);
        }
        return (NodeText) node.getData(dataKey);
    }

    public static NodeText interpret(final Node node, CsmElement csm, final NodeText nodeText) {
        final LexicalDifferenceCalculator.CalculatedSyntaxModel calculatedSyntaxModelForNode = new LexicalDifferenceCalculator().calculatedSyntaxModelForNode(csm, node);
        List<TextElement> findIndentation = findIndentation(node);
        node.getComment().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                LexicalPreservingPrinter.lambda$interpret$7(Node.this, calculatedSyntaxModelForNode, (Comment) obj);
            }
        });
        while (true) {
            boolean z10 = false;
            for (CsmElement csmElement : calculatedSyntaxModelForNode.elements) {
                boolean z11 = csmElement instanceof CsmIndent;
                if (z11) {
                    int indexOf = calculatedSyntaxModelForNode.elements.indexOf(csmElement);
                    if (calculatedSyntaxModelForNode.elements.size() > indexOf && !(calculatedSyntaxModelForNode.elements.get(indexOf + 1) instanceof CsmUnindent)) {
                        for (int i10 = 0; i10 < 4; i10++) {
                            findIndentation.add(new TokenTextElement(1, " "));
                        }
                    }
                } else if (csmElement instanceof CsmUnindent) {
                    for (int i11 = 0; i11 < 4 && findIndentation.size() > 0; i11++) {
                        findIndentation.remove(findIndentation.size() - 1);
                    }
                }
                if (z10 && (!(csmElement instanceof CsmToken) || !((CsmToken) csmElement).isNewLine())) {
                    nodeText.getClass();
                    findIndentation.forEach(new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            NodeText.this.addElement((TextElement) obj);
                        }
                    });
                }
                if (csmElement instanceof LexicalDifferenceCalculator.CsmChild) {
                    nodeText.addChild(((LexicalDifferenceCalculator.CsmChild) csmElement).getChild());
                } else if (csmElement instanceof CsmToken) {
                    CsmToken csmToken = (CsmToken) csmElement;
                    nodeText.addToken(csmToken.getTokenType(), csmToken.getContent());
                    z10 = csmToken.isNewLine();
                } else if (csmElement instanceof CsmMix) {
                    ((CsmMix) csmElement).getElements().forEach(new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            LexicalPreservingPrinter.interpret(Node.this, (CsmElement) obj, nodeText);
                        }
                    });
                } else if (!z11 && !(csmElement instanceof CsmUnindent)) {
                    throw new UnsupportedOperationException("Unknown element type: " + csmElement.getClass().getSimpleName());
                }
            }
            if (node instanceof VariableDeclarator) {
                final VariableDeclarator variableDeclarator = (VariableDeclarator) node;
                variableDeclarator.getParentNode().ifPresent(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        LexicalPreservingPrinter.lambda$interpret$10(VariableDeclarator.this, nodeText, (Node) obj);
                    }
                });
            }
            return nodeText;
        }
    }

    public static boolean isAvailableOn(Node node) {
        return node.containsData(NODE_TEXT_DATA);
    }

    private static boolean isReturningOptionalNodeList(Method m10) {
        String typeName;
        if (!m10.getReturnType().getCanonicalName().equals(JAVA_UTIL_OPTIONAL) || !(m10.getGenericReturnType() instanceof ParameterizedType)) {
            return false;
        }
        typeName = ((ParameterizedType) m10.getGenericReturnType()).getActualTypeArguments()[0].getTypeName();
        return typeName.startsWith(JAVAPARSER_AST_NODELIST);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void lambda$interpret$10(final VariableDeclarator variableDeclarator, final NodeText nodeText, Node parent) {
        ((NodeWithVariables) parent).getMaximumCommonType().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                LexicalPreservingPrinter.lambda$null$9(VariableDeclarator.this, nodeText, (Type) obj);
            }
        });
    }

    public static void lambda$interpret$7(final Node node, final LexicalDifferenceCalculator.CalculatedSyntaxModel calculatedSyntaxModel, Comment comment) {
        if (comment.hasRange()) {
            return;
        }
        LineSeparator lineEndingStyleOrDefault = node.getLineEndingStyleOrDefault(LineSeparator.SYSTEM);
        calculatedSyntaxModel.elements.add(0, new CsmToken(TokenTypes.eolTokenKind(lineEndingStyleOrDefault), lineEndingStyleOrDefault.asRawString()));
        calculatedSyntaxModel.elements.add(0, new LexicalDifferenceCalculator.CsmChild(comment));
    }

    public static RuntimeException lambda$null$1(final JavaToken token) {
        return new RuntimeException("Token without range: " + ((Object) token));
    }

    public static RuntimeException lambda$null$2(final JavaToken token) {
        return new RuntimeException("Token without node owning it: " + ((Object) token));
    }

    public static void lambda$null$9(final VariableDeclarator variableDeclarator, final NodeText nodeText, Type mct) {
        int arrayLevel = variableDeclarator.getType2().getArrayLevel() - mct.getArrayLevel();
        for (int i10 = 0; i10 < arrayLevel; i10++) {
            nodeText.addElement(new TokenTextElement(105));
            nodeText.addElement(new TokenTextElement(106));
        }
    }

    public static void lambda$setup$0(final Node node, TokenRange r10) {
        storeInitialText(node);
        if (node.isRegistered(observer)) {
            return;
        }
        node.registerForSubtree(observer);
    }

    public static void lambda$storeInitialText$3(final Node root, final Map tokensByNode, TokenRange rootTokenRange) {
        Iterator<JavaToken> it = rootTokenRange.iterator();
        while (it.hasNext()) {
            final JavaToken next = it.next();
            Node orElseThrow = root.findByRange(next.getRange().orElseThrow(new Supplier() {
                @Override
                public final Object get() {
                    RuntimeException lambda$null$1;
                    lambda$null$1 = LexicalPreservingPrinter.lambda$null$1(JavaToken.this);
                    return lambda$null$1;
                }
            })).orElseThrow(new Supplier() {
                @Override
                public final Object get() {
                    RuntimeException lambda$null$2;
                    lambda$null$2 = LexicalPreservingPrinter.lambda$null$2(JavaToken.this);
                    return lambda$null$2;
                }
            });
            if (!tokensByNode.containsKey(orElseThrow)) {
                tokensByNode.put(orElseThrow, new LinkedList());
            }
            ((List) tokensByNode.get(orElseThrow)).add(next);
        }
        new TreeVisitor() {
            @Override
            public void process(Node node) {
                if (node.isPhantom()) {
                    return;
                }
                LexicalPreservingPrinter.storeInitialTextForOneNode(node, (List) Map.this.get(node));
            }
        }.visitBreadthFirst(root);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Position lambda$storeInitialTextForOneNode$4(Pair e10) {
        return ((Range) e10.f59826a).begin;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static TextElement lambda$storeInitialTextForOneNode$5(Pair p10) {
        return (TextElement) p10.f59827b;
    }

    public static Iterator lambda$tokensPreceeding$6(final Node node) {
        return tokensPreceeding(node.getParentNode().get());
    }

    private static void prettyPrintingTextNode(Node node, NodeText nodeText) {
        if (node instanceof PrimitiveType) {
            switch (AnonymousClass3.$SwitchMap$com$github$javaparser$ast$type$PrimitiveType$Primitive[((PrimitiveType) node).getType().ordinal()]) {
                case 1:
                    nodeText.addToken(13, node.toString());
                    return;
                case 2:
                    nodeText.addToken(18, node.toString());
                    return;
                case 3:
                    nodeText.addToken(15, node.toString());
                    return;
                case 4:
                    nodeText.addToken(53, node.toString());
                    return;
                case 5:
                    nodeText.addToken(38, node.toString());
                    return;
                case 6:
                    nodeText.addToken(40, node.toString());
                    return;
                case 7:
                    nodeText.addToken(31, node.toString());
                    return;
                case 8:
                    nodeText.addToken(24, node.toString());
                    return;
                default:
                    throw new IllegalArgumentException();
            }
        }
        if (node instanceof JavadocComment) {
            JavadocComment javadocComment = (JavadocComment) node;
            nodeText.addToken(8, javadocComment.getHeader() + javadocComment.getContent() + javadocComment.getFooter());
            return;
        }
        if (node instanceof BlockComment) {
            BlockComment blockComment = (BlockComment) node;
            nodeText.addToken(9, blockComment.getHeader() + blockComment.getContent() + blockComment.getFooter());
            return;
        }
        if (node instanceof LineComment) {
            LineComment lineComment = (LineComment) node;
            nodeText.addToken(5, lineComment.getHeader() + lineComment.getContent());
            return;
        }
        if (!(node instanceof Modifier)) {
            interpret(node, ConcreteSyntaxModel.forClass(node.getClass()), nodeText);
        } else {
            Modifier modifier = (Modifier) node;
            nodeText.addToken(LexicalDifferenceCalculator.toToken(modifier), modifier.getKeyword().asString());
        }
    }

    public static String print(Node node) {
        return new DefaultLexicalPreservingPrinter().print(node);
    }

    public static <N extends Node> N setup(final N node) {
        Utils.assertNotNull(node);
        if (observer == null) {
            observer = createObserver();
        }
        node.getTokenRange().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                LexicalPreservingPrinter.lambda$setup$0(Node.this, (TokenRange) obj);
            }
        });
        return node;
    }

    private static void storeInitialText(final Node root) {
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        root.getTokenRange().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                LexicalPreservingPrinter.lambda$storeInitialText$3(Node.this, identityHashMap, (TokenRange) obj);
            }
        });
    }

    public static void storeInitialTextForOneNode(Node node, List<JavaToken> nodeTokens) {
        if (nodeTokens == null) {
            nodeTokens = Collections.emptyList();
        }
        LinkedList linkedList = new LinkedList();
        for (Node node2 : node.getChildNodes()) {
            if (!node2.isPhantom()) {
                if (!node2.hasRange()) {
                    throw new RuntimeException("Range not present on node " + ((Object) node2));
                }
                linkedList.add(new Pair(node2.getRange().get(), new ChildTextElement(node2)));
            }
        }
        for (JavaToken javaToken : nodeTokens) {
            linkedList.add(new Pair(javaToken.getRange().get(), new TokenTextElement(javaToken)));
        }
        linkedList.sort(Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                Position lambda$storeInitialTextForOneNode$4;
                lambda$storeInitialTextForOneNode$4 = LexicalPreservingPrinter.lambda$storeInitialTextForOneNode$4((Pair) obj);
                return lambda$storeInitialTextForOneNode$4;
            }
        }));
        node.setData(NODE_TEXT_DATA, new NodeText((List) linkedList.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                TextElement lambda$storeInitialTextForOneNode$5;
                lambda$storeInitialTextForOneNode$5 = LexicalPreservingPrinter.lambda$storeInitialTextForOneNode$5((Pair) obj);
                return lambda$storeInitialTextForOneNode$5;
            }
        }).collect(Collectors.toList())));
    }

    private static Iterator<TokenTextElement> tokensPreceeding(final Node node) {
        if (!node.getParentNode().isPresent()) {
            return new TextElementIteratorsFactory.EmptyIterator();
        }
        NodeText orCreateNodeText = getOrCreateNodeText(node.getParentNode().get());
        int tryToFindChild = orCreateNodeText.tryToFindChild(node);
        return tryToFindChild == -1 ? node.getParentNode().get() instanceof VariableDeclarator ? tokensPreceeding(node.getParentNode().get()) : new TextElementIteratorsFactory.EmptyIterator() : new TextElementIteratorsFactory.CascadingIterator(TextElementIteratorsFactory.partialReverseIterator(orCreateNodeText, tryToFindChild - 1), new TextElementIteratorsFactory.CascadingIterator.Provider() {
            @Override
            public final Iterator provide() {
                Iterator lambda$tokensPreceeding$6;
                lambda$tokensPreceeding$6 = LexicalPreservingPrinter.lambda$tokensPreceeding$6(Node.this);
                return lambda$tokensPreceeding$6;
            }
        });
    }
}
