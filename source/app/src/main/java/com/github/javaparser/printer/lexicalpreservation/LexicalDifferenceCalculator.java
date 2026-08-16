package com.github.javaparser.printer.lexicalpreservation;

import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.CharLiteralExpr;
import com.github.javaparser.ast.expr.LambdaExpr;
import com.github.javaparser.ast.expr.StringLiteralExpr;
import com.github.javaparser.ast.expr.TextBlockLiteralExpr;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.stmt.ExpressionStmt;
import com.github.javaparser.printer.ConcreteSyntaxModel;
import com.github.javaparser.printer.SourcePrinter;
import com.github.javaparser.printer.Stringable;
import com.github.javaparser.printer.concretesyntaxmodel.CsmAttribute;
import com.github.javaparser.printer.concretesyntaxmodel.CsmChar;
import com.github.javaparser.printer.concretesyntaxmodel.CsmComment;
import com.github.javaparser.printer.concretesyntaxmodel.CsmConditional;
import com.github.javaparser.printer.concretesyntaxmodel.CsmElement;
import com.github.javaparser.printer.concretesyntaxmodel.CsmIndent;
import com.github.javaparser.printer.concretesyntaxmodel.CsmList;
import com.github.javaparser.printer.concretesyntaxmodel.CsmMix;
import com.github.javaparser.printer.concretesyntaxmodel.CsmNone;
import com.github.javaparser.printer.concretesyntaxmodel.CsmOrphanCommentsEnding;
import com.github.javaparser.printer.concretesyntaxmodel.CsmSequence;
import com.github.javaparser.printer.concretesyntaxmodel.CsmSingleReference;
import com.github.javaparser.printer.concretesyntaxmodel.CsmString;
import com.github.javaparser.printer.concretesyntaxmodel.CsmToken;
import com.github.javaparser.printer.concretesyntaxmodel.CsmUnindent;
import com.github.javaparser.printer.lexicalpreservation.LexicalDifferenceCalculator;
import com.github.javaparser.printer.lexicalpreservation.changes.Change;
import com.github.javaparser.printer.lexicalpreservation.changes.ListAdditionChange;
import com.github.javaparser.printer.lexicalpreservation.changes.ListRemovalChange;
import com.github.javaparser.printer.lexicalpreservation.changes.ListReplacementChange;
import com.github.javaparser.printer.lexicalpreservation.changes.NoChange;
import com.github.javaparser.printer.lexicalpreservation.changes.PropertyChange;
import com.github.javaparser.utils.LineSeparator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Predicate;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class LexicalDifferenceCalculator {

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$github$javaparser$ast$Modifier$Keyword;

        static {
            int[] iArr = new int[Modifier.Keyword.values().length];
            $SwitchMap$com$github$javaparser$ast$Modifier$Keyword = iArr;
            try {
                iArr[Modifier.Keyword.PUBLIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$Modifier$Keyword[Modifier.Keyword.PRIVATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$Modifier$Keyword[Modifier.Keyword.PROTECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$Modifier$Keyword[Modifier.Keyword.STATIC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$Modifier$Keyword[Modifier.Keyword.FINAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$Modifier$Keyword[Modifier.Keyword.ABSTRACT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$Modifier$Keyword[Modifier.Keyword.TRANSIENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$Modifier$Keyword[Modifier.Keyword.SYNCHRONIZED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$Modifier$Keyword[Modifier.Keyword.VOLATILE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$Modifier$Keyword[Modifier.Keyword.NATIVE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$Modifier$Keyword[Modifier.Keyword.STRICTFP.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$Modifier$Keyword[Modifier.Keyword.TRANSITIVE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public static class CalculatedSyntaxModel {
        final List<CsmElement> elements;

        public CalculatedSyntaxModel(List<CsmElement> elements) {
            this.elements = elements;
        }

        public static boolean lambda$removeIndentationElements$0(CsmElement el2) {
            return (el2 instanceof CsmIndent) || (el2 instanceof CsmUnindent);
        }

        public CalculatedSyntaxModel from(int index) {
            List<CsmElement> list = this.elements;
            return new CalculatedSyntaxModel(new ArrayList(list.subList(index, list.size())));
        }

        public void removeIndentationElements() {
            this.elements.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$removeIndentationElements$0;
                    lambda$removeIndentationElements$0 = LexicalDifferenceCalculator.CalculatedSyntaxModel.lambda$removeIndentationElements$0((CsmElement) obj);
                    return lambda$removeIndentationElements$0;
                }
            });
        }

        public CalculatedSyntaxModel sub(int start, int end) {
            return new CalculatedSyntaxModel(this.elements.subList(start, end));
        }

        public String toString() {
            return "CalculatedSyntaxModel{elements=" + ((Object) this.elements) + JavaElement.JEM_ANNOTATION;
        }
    }

    public static class CsmChild implements CsmElement {
        private final Node child;

        public CsmChild(Node child) {
            this.child = child;
        }

        public boolean equals(Object o10) {
            if (this == o10) {
                return true;
            }
            if (o10 == null || getClass() != o10.getClass()) {
                return false;
            }
            return this.child.equals(((CsmChild) o10).child);
        }

        public Node getChild() {
            return this.child;
        }

        public int hashCode() {
            return this.child.hashCode();
        }

        @Override
        public boolean isCorrespondingElement(TextElement textElement) {
            return (textElement instanceof ChildTextElement) && ((ChildTextElement) textElement).getChild() == getChild();
        }

        @Override
        public void prettyPrint(Node node, SourcePrinter printer) {
            throw new UnsupportedOperationException("The prettyPrint method is not supported or implemented");
        }

        public String toString() {
            return "child(" + this.child.getClass().getSimpleName() + ")";
        }
    }

    private CalculatedSyntaxModel calculatedSyntaxModelAfterListReplacement(CsmElement csm, ObservableProperty observableProperty, NodeList<?> nodeList, int index, Node newValue) {
        LinkedList linkedList = new LinkedList();
        lambda$calculatedSyntaxModelForNode$1(csm, nodeList.getParentNodeForChildren(), linkedList, new ListReplacementChange(observableProperty, index, newValue));
        return new CalculatedSyntaxModel(linkedList);
    }

    private CsmElement getNewLineToken(LineSeparator lineSeparator) {
        return CsmElement.newline(lineSeparator);
    }

    private void replaceEolTokens(List<DifferenceElement> differenceElements, LineSeparator lineSeparator) {
        CsmElement newLineToken = getNewLineToken(lineSeparator);
        for (int i10 = 0; i10 < differenceElements.size(); i10++) {
            differenceElements.set(i10, differenceElements.get(i10).replaceEolTokens(newLineToken));
        }
    }

    public static int toToken(Modifier modifier) {
        switch (AnonymousClass1.$SwitchMap$com$github$javaparser$ast$Modifier$Keyword[modifier.getKeyword().ordinal()]) {
            case 1:
                return 49;
            case 2:
                return 47;
            case 3:
                return 48;
            case 4:
                return 54;
            case 5:
                return 29;
            case 6:
                return 11;
            case 7:
                return 62;
            case 8:
                return 58;
            case 9:
                return 66;
            case 10:
                return 41;
            case 11:
                return 55;
            case 12:
                return 78;
            default:
                throw new UnsupportedOperationException("Not supported keyword" + modifier.getKeyword().name());
        }
    }

    public List<DifferenceElement> calculateListAdditionDifference(ObservableProperty observableProperty, NodeList<?> nodeList, int index, Node nodeAdded) {
        Node parentNodeForChildren = nodeList.getParentNodeForChildren();
        CsmElement forClass = ConcreteSyntaxModel.forClass(parentNodeForChildren.getClass());
        List<DifferenceElement> calculate = DifferenceElementCalculator.calculate(calculatedSyntaxModelForNode(forClass, parentNodeForChildren), calculatedSyntaxModelAfterListAddition(forClass, observableProperty, nodeList, index, nodeAdded));
        replaceEolTokens(calculate, parentNodeForChildren.getLineEndingStyleOrDefault(LineSeparator.SYSTEM));
        return calculate;
    }

    public List<DifferenceElement> calculateListRemovalDifference(ObservableProperty observableProperty, NodeList<?> nodeList, int index) {
        Node parentNodeForChildren = nodeList.getParentNodeForChildren();
        CsmElement forClass = ConcreteSyntaxModel.forClass(parentNodeForChildren.getClass());
        return DifferenceElementCalculator.calculate(calculatedSyntaxModelForNode(forClass, parentNodeForChildren), calculatedSyntaxModelAfterListRemoval(forClass, observableProperty, nodeList, index));
    }

    public List<DifferenceElement> calculateListReplacementDifference(ObservableProperty observableProperty, NodeList<?> nodeList, int index, Node newValue) {
        Node parentNodeForChildren = nodeList.getParentNodeForChildren();
        CsmElement forClass = ConcreteSyntaxModel.forClass(parentNodeForChildren.getClass());
        return DifferenceElementCalculator.calculate(calculatedSyntaxModelForNode(forClass, parentNodeForChildren), calculatedSyntaxModelAfterListReplacement(forClass, observableProperty, nodeList, index, newValue));
    }

    public void calculatePropertyChange(NodeText nodeText, Node observedNode, ObservableProperty property, Object oldValue, Object newValue) {
        nodeText.getClass();
        CsmElement forClass = ConcreteSyntaxModel.forClass(observedNode.getClass());
        new Difference(DifferenceElementCalculator.calculate(calculatedSyntaxModelForNode(forClass, observedNode), calculatedSyntaxModelAfterPropertyChange(forClass, observedNode, property, oldValue, newValue)), nodeText, observedNode).apply();
    }

    public CalculatedSyntaxModel calculatedSyntaxModelAfterListAddition(CsmElement csm, ObservableProperty observableProperty, NodeList<?> nodeList, int index, Node nodeAdded) {
        LinkedList linkedList = new LinkedList();
        lambda$calculatedSyntaxModelForNode$1(csm, nodeList.getParentNodeForChildren(), linkedList, new ListAdditionChange(observableProperty, index, nodeAdded));
        return new CalculatedSyntaxModel(linkedList);
    }

    public CalculatedSyntaxModel calculatedSyntaxModelAfterListRemoval(CsmElement csm, ObservableProperty observableProperty, NodeList<?> nodeList, int index) {
        LinkedList linkedList = new LinkedList();
        lambda$calculatedSyntaxModelForNode$1(csm, nodeList.getParentNodeForChildren(), linkedList, new ListRemovalChange(observableProperty, index));
        return new CalculatedSyntaxModel(linkedList);
    }

    public CalculatedSyntaxModel calculatedSyntaxModelAfterPropertyChange(Node node, ObservableProperty property, Object oldValue, Object newValue) {
        return calculatedSyntaxModelAfterPropertyChange(ConcreteSyntaxModel.forClass(node.getClass()), node, property, oldValue, newValue);
    }

    public CalculatedSyntaxModel calculatedSyntaxModelForNode(CsmElement csm, Node node) {
        LinkedList linkedList = new LinkedList();
        lambda$calculatedSyntaxModelForNode$1(csm, node, linkedList, new NoChange());
        return new CalculatedSyntaxModel(linkedList);
    }

    public CalculatedSyntaxModel calculatedSyntaxModelAfterPropertyChange(CsmElement csm, Node node, ObservableProperty property, Object oldValue, Object newValue) {
        LinkedList linkedList = new LinkedList();
        lambda$calculatedSyntaxModelForNode$1(csm, node, linkedList, new PropertyChange(property, oldValue, newValue));
        return new CalculatedSyntaxModel(linkedList);
    }

    public CalculatedSyntaxModel calculatedSyntaxModelForNode(Node node) {
        return calculatedSyntaxModelForNode(ConcreteSyntaxModel.forClass(node.getClass()), node);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void lambda$calculatedSyntaxModelForNode$1(CsmElement csm, final Node node, final List<CsmElement> elements, final Change change) {
        NodeList nodeList;
        Node valueAsSingleReference;
        if (csm instanceof CsmSequence) {
            ((CsmSequence) csm).getElements().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    LexicalDifferenceCalculator.this.lambda$calculatedSyntaxModelForNode$0(node, elements, change, (CsmElement) obj);
                }
            });
            return;
        }
        if (csm instanceof CsmComment) {
            return;
        }
        if (csm instanceof CsmSingleReference) {
            CsmSingleReference csmSingleReference = (CsmSingleReference) csm;
            if (change instanceof PropertyChange) {
                PropertyChange propertyChange = (PropertyChange) change;
                if (propertyChange.getProperty() == csmSingleReference.getProperty()) {
                    valueAsSingleReference = (Node) propertyChange.getNewValue();
                    if ((node instanceof LambdaExpr) && (valueAsSingleReference instanceof ExpressionStmt)) {
                        valueAsSingleReference = ((ExpressionStmt) valueAsSingleReference).getExpression();
                    }
                    if (valueAsSingleReference == null) {
                        elements.add(new CsmChild(valueAsSingleReference));
                        return;
                    }
                    return;
                }
            }
            valueAsSingleReference = csmSingleReference.getProperty().getValueAsSingleReference(node);
            if (valueAsSingleReference == null) {
            }
        } else {
            if (csm instanceof CsmNone) {
                return;
            }
            if (csm instanceof CsmToken) {
                elements.add(csm);
                return;
            }
            if (csm instanceof CsmOrphanCommentsEnding) {
                return;
            }
            if (csm instanceof CsmList) {
                CsmList csmList = (CsmList) csm;
                boolean z10 = true;
                if (csmList.getProperty().isAboutNodes()) {
                    Object value = change.getValue(csmList.getProperty(), node);
                    if (value instanceof Optional) {
                        Optional optional = (Optional) value;
                        if (optional.isPresent()) {
                            if (optional.get() instanceof NodeList) {
                                nodeList = (NodeList) optional.get();
                            } else {
                                throw new IllegalStateException("Expected NodeList, found " + optional.get().getClass().getCanonicalName());
                            }
                        } else {
                            nodeList = new NodeList();
                        }
                    } else if (value instanceof NodeList) {
                        nodeList = (NodeList) value;
                    } else {
                        throw new IllegalStateException("Expected NodeList, found " + value.getClass().getCanonicalName());
                    }
                    if (nodeList.isEmpty()) {
                        return;
                    }
                    lambda$calculatedSyntaxModelForNode$1(csmList.getPreceeding(), node, elements, change);
                    for (int i10 = 0; i10 < nodeList.size(); i10++) {
                        if (i10 != 0) {
                            lambda$calculatedSyntaxModelForNode$1(csmList.getSeparatorPre(), node, elements, change);
                        }
                        elements.add(new CsmChild(nodeList.get(i10)));
                        if (i10 != nodeList.size() - 1) {
                            lambda$calculatedSyntaxModelForNode$1(csmList.getSeparatorPost(), node, elements, change);
                        }
                    }
                    lambda$calculatedSyntaxModelForNode$1(csmList.getFollowing(), node, elements, change);
                    return;
                }
                Collection collection = (Collection) change.getValue(csmList.getProperty(), node);
                if (collection.isEmpty()) {
                    return;
                }
                lambda$calculatedSyntaxModelForNode$1(csmList.getPreceeding(), node, elements, change);
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    if (!z10) {
                        lambda$calculatedSyntaxModelForNode$1(csmList.getSeparatorPre(), node, elements, change);
                    }
                    Object next = it.next();
                    if (next instanceof Modifier) {
                        elements.add(new CsmToken(toToken((Modifier) next)));
                        if (it.hasNext()) {
                            lambda$calculatedSyntaxModelForNode$1(csmList.getSeparatorPost(), node, elements, change);
                        }
                        z10 = false;
                    } else {
                        throw new UnsupportedOperationException("Not supported value found: " + it.next().getClass().getSimpleName());
                    }
                }
                lambda$calculatedSyntaxModelForNode$1(csmList.getFollowing(), node, elements, change);
                return;
            }
            if (csm instanceof CsmConditional) {
                CsmConditional csmConditional = (CsmConditional) csm;
                if (change.evaluate(csmConditional, node)) {
                    lambda$calculatedSyntaxModelForNode$1(csmConditional.getThenElement(), node, elements, change);
                    return;
                } else {
                    lambda$calculatedSyntaxModelForNode$1(csmConditional.getElseElement(), node, elements, change);
                    return;
                }
            }
            if (csm instanceof CsmIndent) {
                elements.add(csm);
                return;
            }
            if (csm instanceof CsmUnindent) {
                elements.add(csm);
                return;
            }
            if (csm instanceof CsmAttribute) {
                CsmAttribute csmAttribute = (CsmAttribute) csm;
                Object value2 = change.getValue(csmAttribute.getProperty(), node);
                String obj = value2.toString();
                if (value2 instanceof Stringable) {
                    obj = ((Stringable) value2).asString();
                }
                elements.add(new CsmToken(csmAttribute.getTokenType(node, value2.toString(), obj), obj));
                return;
            }
            boolean z11 = csm instanceof CsmString;
            if (z11 && (node instanceof StringLiteralExpr)) {
                if (change instanceof PropertyChange) {
                    elements.add(new CsmToken(94, JavadocConstants.ANCHOR_PREFIX_END + ((PropertyChange) change).getNewValue() + JavadocConstants.ANCHOR_PREFIX_END));
                    return;
                }
                elements.add(new CsmToken(94, JavadocConstants.ANCHOR_PREFIX_END + ((StringLiteralExpr) node).getValue() + JavadocConstants.ANCHOR_PREFIX_END));
                return;
            }
            if (z11 && (node instanceof TextBlockLiteralExpr)) {
                String lineSeparator = node.getLineEndingStyle().toString();
                if (change instanceof PropertyChange) {
                    elements.add(new CsmToken(96, "\"\"\"" + lineSeparator + ((PropertyChange) change).getNewValue() + "\"\"\""));
                    return;
                }
                elements.add(new CsmToken(96, "\"\"\"" + lineSeparator + ((TextBlockLiteralExpr) node).getValue() + "\"\"\""));
                return;
            }
            if ((csm instanceof CsmChar) && (node instanceof CharLiteralExpr)) {
                if (change instanceof PropertyChange) {
                    elements.add(new CsmToken(18, "'" + ((PropertyChange) change).getNewValue() + "'"));
                    return;
                }
                elements.add(new CsmToken(18, "'" + ((CharLiteralExpr) node).getValue() + "'"));
                return;
            }
            if (csm instanceof CsmMix) {
                final LinkedList linkedList = new LinkedList();
                ((CsmMix) csm).getElements().forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        LexicalDifferenceCalculator.this.lambda$calculatedSyntaxModelForNode$1(node, linkedList, change, (CsmElement) obj2);
                    }
                });
                elements.add(new CsmMix(linkedList));
            } else {
                if (csm instanceof CsmChild) {
                    elements.add(csm);
                    return;
                }
                throw new UnsupportedOperationException("Not supported element type: " + csm.getClass().getSimpleName() + " " + ((Object) csm));
            }
        }
    }

    public CalculatedSyntaxModel calculatedSyntaxModelAfterListAddition(Node container, ObservableProperty observableProperty, int index, Node nodeAdded) {
        CsmElement forClass = ConcreteSyntaxModel.forClass(container.getClass());
        Object rawValue = observableProperty.getRawValue(container);
        if (rawValue instanceof NodeList) {
            return calculatedSyntaxModelAfterListAddition(forClass, observableProperty, (NodeList) rawValue, index, nodeAdded);
        }
        throw new IllegalStateException("Expected NodeList, found " + rawValue.getClass().getCanonicalName());
    }

    public CalculatedSyntaxModel calculatedSyntaxModelAfterListRemoval(Node container, ObservableProperty observableProperty, int index) {
        CsmElement forClass = ConcreteSyntaxModel.forClass(container.getClass());
        Object rawValue = observableProperty.getRawValue(container);
        if (rawValue instanceof NodeList) {
            return calculatedSyntaxModelAfterListRemoval(forClass, observableProperty, (NodeList) rawValue, index);
        }
        throw new IllegalStateException("Expected NodeList, found " + rawValue.getClass().getCanonicalName());
    }
}
