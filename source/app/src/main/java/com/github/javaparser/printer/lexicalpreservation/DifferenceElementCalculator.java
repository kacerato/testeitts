package com.github.javaparser.printer.lexicalpreservation;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.body.VariableDeclarator;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.printer.concretesyntaxmodel.CsmElement;
import com.github.javaparser.printer.concretesyntaxmodel.CsmIndent;
import com.github.javaparser.printer.concretesyntaxmodel.CsmMix;
import com.github.javaparser.printer.concretesyntaxmodel.CsmToken;
import com.github.javaparser.printer.concretesyntaxmodel.CsmUnindent;
import com.github.javaparser.printer.lexicalpreservation.DifferenceElementCalculator;
import com.github.javaparser.printer.lexicalpreservation.LexicalDifferenceCalculator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public class DifferenceElementCalculator {

    public static class ChildPositionInfo {
        Node node;
        Integer position;

        public ChildPositionInfo(Node node, Integer position) {
            this.node = node;
            this.position = position;
        }

        public boolean equals(Object other) {
            if (other == null || !(other instanceof ChildPositionInfo)) {
                return false;
            }
            ChildPositionInfo childPositionInfo = (ChildPositionInfo) other;
            if (this.node.equals(childPositionInfo.node)) {
                return !(this.node.hasRange() || childPositionInfo.node.hasRange()) || (this.node.hasRange() && childPositionInfo.node.hasRange() && this.node.getRange().get().contains(childPositionInfo.node.getRange().get()));
            }
            return false;
        }

        public int hashCode() {
            return this.node.hashCode() + this.position.hashCode();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static List<DifferenceElement> calculate(LexicalDifferenceCalculator.CalculatedSyntaxModel original, LexicalDifferenceCalculator.CalculatedSyntaxModel after) {
        List<ChildPositionInfo> findChildrenPositions = findChildrenPositions(original);
        List<ChildPositionInfo> findChildrenPositions2 = findChildrenPositions(after);
        ArrayList arrayList = new ArrayList(findChildrenPositions);
        arrayList.retainAll(findChildrenPositions2);
        LinkedList linkedList = new LinkedList();
        int i10 = 0;
        int i11 = 0;
        final int i12 = -1;
        final int i13 = -1;
        int i14 = 0;
        while (i10 < arrayList.size()) {
            int i15 = i10 + 1;
            final ChildPositionInfo childPositionInfo = (ChildPositionInfo) arrayList.get(i10);
            i12 = ((Integer) findChildrenPositions.stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$calculate$0;
                    lambda$calculate$0 = DifferenceElementCalculator.lambda$calculate$0(DifferenceElementCalculator.ChildPositionInfo.this, (DifferenceElementCalculator.ChildPositionInfo) obj);
                    return lambda$calculate$0;
                }
            }).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Integer num;
                    num = ((DifferenceElementCalculator.ChildPositionInfo) obj).position;
                    return num;
                }
            }).filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$calculate$2;
                    lambda$calculate$2 = DifferenceElementCalculator.lambda$calculate$2(i12, (Integer) obj);
                    return lambda$calculate$2;
                }
            }).findFirst().orElse(Integer.valueOf(i12))).intValue();
            i13 = ((Integer) findChildrenPositions2.stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$calculate$3;
                    lambda$calculate$3 = DifferenceElementCalculator.lambda$calculate$3(DifferenceElementCalculator.ChildPositionInfo.this, (DifferenceElementCalculator.ChildPositionInfo) obj);
                    return lambda$calculate$3;
                }
            }).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Integer num;
                    num = ((DifferenceElementCalculator.ChildPositionInfo) obj).position;
                    return num;
                }
            }).filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$calculate$5;
                    lambda$calculate$5 = DifferenceElementCalculator.lambda$calculate$5(i13, (Integer) obj);
                    return lambda$calculate$5;
                }
            }).findFirst().orElse(Integer.valueOf(i13))).intValue();
            if (i14 < i12 || i11 < i13) {
                linkedList.addAll(calculateImpl(i14 < i12 ? original.sub(i14, i12) : new LexicalDifferenceCalculator.CalculatedSyntaxModel(Collections.EMPTY_LIST), i11 < i13 ? after.sub(i11, i13) : new LexicalDifferenceCalculator.CalculatedSyntaxModel(Collections.EMPTY_LIST)));
            }
            if (i11 <= i13) {
                linkedList.add(new Kept(new LexicalDifferenceCalculator.CsmChild(childPositionInfo.node)));
            } else {
                linkedList.add(new Removed(new LexicalDifferenceCalculator.CsmChild(childPositionInfo.node)));
            }
            if (i14 <= i12) {
                i14 = i12 + 1;
            }
            if (i11 <= i13) {
                i11 = i13 + 1;
            }
            i10 = i15;
        }
        if (i14 < original.elements.size() || i11 < after.elements.size()) {
            linkedList.addAll(calculateImpl(i14 < original.elements.size() ? original.sub(i14, original.elements.size()) : new LexicalDifferenceCalculator.CalculatedSyntaxModel(Collections.EMPTY_LIST), i11 < after.elements.size() ? after.sub(i11, after.elements.size()) : new LexicalDifferenceCalculator.CalculatedSyntaxModel(Collections.EMPTY_LIST)));
        }
        return linkedList;
    }

    private static List<DifferenceElement> calculateImpl(LexicalDifferenceCalculator.CalculatedSyntaxModel original, LexicalDifferenceCalculator.CalculatedSyntaxModel after) {
        final LinkedList linkedList = new LinkedList();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i10 >= original.elements.size() || i11 < after.elements.size()) {
                if (i10 < original.elements.size() || i11 >= after.elements.size()) {
                    CsmElement csmElement = original.elements.get(i10);
                    CsmElement csmElement2 = after.elements.get(i11);
                    if ((csmElement instanceof CsmMix) && (csmElement2 instanceof CsmMix)) {
                        CsmMix csmMix = (CsmMix) csmElement2;
                        CsmMix csmMix2 = (CsmMix) csmElement;
                        if (csmMix.getElements().equals(csmMix2.getElements())) {
                            csmMix.getElements().forEach(new Consumer() {
                                @Override
                                public final void accept(Object obj) {
                                    DifferenceElementCalculator.lambda$calculateImpl$6(List.this, (CsmElement) obj);
                                }
                            });
                        } else {
                            linkedList.add(new Reshuffled(csmMix2, csmMix));
                        }
                    } else if (matching(csmElement, csmElement2)) {
                        linkedList.add(new Kept(csmElement));
                    } else if (replacement(csmElement, csmElement2)) {
                        i10 = considerRemoval(csmElement, i10, linkedList);
                        linkedList.add(new Added(csmElement2));
                    } else {
                        int i12 = i11 + 1;
                        List<DifferenceElement> calculate = calculate(original.from(i10), after.from(i12));
                        List<DifferenceElement> calculate2 = cost(calculate) > 0 ? calculate(original.from(i10 + 1), after.from(i11)) : null;
                        if (calculate2 == null || cost(calculate2) > cost(calculate)) {
                            linkedList.add(new Added(csmElement2));
                            i11 = i12;
                        } else {
                            linkedList.add(new Removed(csmElement));
                            i10++;
                        }
                    }
                    i10++;
                } else {
                    linkedList.add(new Added(after.elements.get(i11)));
                }
                i11++;
            } else {
                i10 = considerRemoval(original.elements.get(i10), i10, linkedList);
            }
            if (i10 >= original.elements.size() && i11 >= after.elements.size()) {
                return linkedList;
            }
        }
    }

    private static void considerRemoval(NodeText nodeTextForChild, List<DifferenceElement> elements) {
        for (TextElement textElement : nodeTextForChild.getElements()) {
            if (textElement instanceof ChildTextElement) {
                considerRemoval(LexicalPreservingPrinter.getOrCreateNodeText(((ChildTextElement) textElement).getChild()), elements);
            } else if (textElement instanceof TokenTextElement) {
                TokenTextElement tokenTextElement = (TokenTextElement) textElement;
                elements.add(new Removed(new CsmToken(tokenTextElement.getTokenKind(), tokenTextElement.getText())));
            } else {
                throw new UnsupportedOperationException(textElement.toString());
            }
        }
    }

    private static long cost(List<DifferenceElement> elements) {
        return elements.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$cost$7;
                lambda$cost$7 = DifferenceElementCalculator.lambda$cost$7((DifferenceElement) obj);
                return lambda$cost$7;
            }
        }).count();
    }

    private static List<ChildPositionInfo> findChildrenPositions(LexicalDifferenceCalculator.CalculatedSyntaxModel calculatedSyntaxModel) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < calculatedSyntaxModel.elements.size(); i10++) {
            CsmElement csmElement = calculatedSyntaxModel.elements.get(i10);
            if (csmElement instanceof LexicalDifferenceCalculator.CsmChild) {
                arrayList.add(new ChildPositionInfo(((LexicalDifferenceCalculator.CsmChild) csmElement).getChild(), Integer.valueOf(i10)));
            }
        }
        return arrayList;
    }

    public static boolean lambda$calculate$0(final ChildPositionInfo child, ChildPositionInfo i10) {
        return i10.equals(child);
    }

    public static boolean lambda$calculate$2(final int currentPosOfNextChildInOriginal, Integer position) {
        return position.intValue() > currentPosOfNextChildInOriginal;
    }

    public static boolean lambda$calculate$3(final ChildPositionInfo child, ChildPositionInfo i10) {
        return i10.equals(child);
    }

    public static boolean lambda$calculate$5(final int currentPosOfNextChildInAfter, Integer position) {
        return position.intValue() > currentPosOfNextChildInAfter;
    }

    public static void lambda$calculateImpl$6(final List elements, CsmElement el2) {
        elements.add(new Kept(el2));
    }

    public static boolean lambda$cost$7(DifferenceElement e10) {
        return !(e10 instanceof Kept);
    }

    public static boolean lambda$removeIndentationElements$8(DifferenceElement el2) {
        return (el2.getElement() instanceof CsmIndent) || (el2.getElement() instanceof CsmUnindent);
    }

    public static boolean matching(CsmElement a10, CsmElement b10) {
        if (a10 instanceof LexicalDifferenceCalculator.CsmChild) {
            if (b10 instanceof LexicalDifferenceCalculator.CsmChild) {
                return ((LexicalDifferenceCalculator.CsmChild) a10).getChild().equals(((LexicalDifferenceCalculator.CsmChild) b10).getChild());
            }
            if ((b10 instanceof CsmToken) || (b10 instanceof CsmIndent) || (b10 instanceof CsmUnindent)) {
                return false;
            }
            throw new UnsupportedOperationException(a10.getClass().getSimpleName() + " " + b10.getClass().getSimpleName());
        }
        if (!(a10 instanceof CsmToken)) {
            if (a10 instanceof CsmIndent) {
                return b10 instanceof CsmIndent;
            }
            if (a10 instanceof CsmUnindent) {
                return b10 instanceof CsmUnindent;
            }
            throw new UnsupportedOperationException(a10.getClass().getSimpleName() + " " + b10.getClass().getSimpleName());
        }
        if (b10 instanceof CsmToken) {
            return ((CsmToken) a10).equals((CsmToken) b10);
        }
        if ((b10 instanceof LexicalDifferenceCalculator.CsmChild) || (b10 instanceof CsmIndent) || (b10 instanceof CsmUnindent)) {
            return false;
        }
        throw new UnsupportedOperationException(a10.getClass().getSimpleName() + " " + b10.getClass().getSimpleName());
    }

    public static void removeIndentationElements(List<DifferenceElement> elements) {
        elements.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$removeIndentationElements$8;
                lambda$removeIndentationElements$8 = DifferenceElementCalculator.lambda$removeIndentationElements$8((DifferenceElement) obj);
                return lambda$removeIndentationElements$8;
            }
        });
    }

    private static boolean replacement(CsmElement a10, CsmElement b10) {
        if ((a10 instanceof CsmIndent) || (b10 instanceof CsmIndent) || (a10 instanceof CsmUnindent) || (b10 instanceof CsmUnindent)) {
            return false;
        }
        if (a10 instanceof LexicalDifferenceCalculator.CsmChild) {
            if (b10 instanceof LexicalDifferenceCalculator.CsmChild) {
                return ((LexicalDifferenceCalculator.CsmChild) a10).getChild().getClass().equals(((LexicalDifferenceCalculator.CsmChild) b10).getChild().getClass());
            }
            if (b10 instanceof CsmToken) {
                return false;
            }
            throw new UnsupportedOperationException(a10.getClass().getSimpleName() + " " + b10.getClass().getSimpleName());
        }
        if (a10 instanceof CsmToken) {
            if (b10 instanceof CsmToken) {
                return ((CsmToken) a10).getTokenType() == ((CsmToken) b10).getTokenType();
            }
            if (b10 instanceof LexicalDifferenceCalculator.CsmChild) {
                return false;
            }
        }
        throw new UnsupportedOperationException(a10.getClass().getSimpleName() + " " + b10.getClass().getSimpleName());
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int considerRemoval(CsmElement removedElement, int originalIndex, List<DifferenceElement> elements) {
        boolean z10;
        if (removedElement instanceof LexicalDifferenceCalculator.CsmChild) {
            LexicalDifferenceCalculator.CsmChild csmChild = (LexicalDifferenceCalculator.CsmChild) removedElement;
            if ((csmChild.getChild() instanceof Type) && csmChild.getChild().getParentNode().isPresent() && (csmChild.getChild().getParentNode().get() instanceof VariableDeclarator)) {
                considerRemoval(LexicalPreservingPrinter.getOrCreateNodeText(csmChild.getChild()), elements);
                originalIndex++;
                z10 = true;
                if (!z10) {
                    return originalIndex;
                }
                elements.add(new Removed(removedElement));
                return originalIndex + 1;
            }
        }
        z10 = false;
        if (!z10) {
        }
    }
}
