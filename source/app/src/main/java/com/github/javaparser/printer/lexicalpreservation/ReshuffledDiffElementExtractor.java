package com.github.javaparser.printer.lexicalpreservation;

import com.android.tools.r8.internal.C7752iQ0;
import com.github.javaparser.printer.concretesyntaxmodel.CsmElement;
import com.github.javaparser.printer.concretesyntaxmodel.CsmMix;
import com.github.javaparser.printer.concretesyntaxmodel.CsmToken;
import com.github.javaparser.printer.lexicalpreservation.Difference;
import com.github.javaparser.printer.lexicalpreservation.ReshuffledDiffElementExtractor;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.Function;

public class ReshuffledDiffElementExtractor {
    private final NodeText nodeText;

    public enum MatchClassification {
        ALL(1),
        PREVIOUS_AND_SAME(2),
        NEXT_AND_SAME(3),
        SAME_ONLY(4),
        ALMOST(5);

        private final int priority;

        MatchClassification(int priority) {
            this.priority = priority;
        }

        public int getPriority() {
            return this.priority;
        }
    }

    private ReshuffledDiffElementExtractor(NodeText nodeText) {
        this.nodeText = nodeText;
    }

    private List<Integer> findIndexOfCorrespondingNodeTextElement(List<CsmElement> elements, NodeText nodeText) {
        boolean z10;
        ArrayList arrayList = new ArrayList();
        PeekingIterator peekingIterator = new PeekingIterator(elements);
        while (peekingIterator.hasNext()) {
            boolean hasPrevious = peekingIterator.hasPrevious();
            int previousIndex = peekingIterator.previousIndex();
            CsmElement csmElement = (CsmElement) peekingIterator.next();
            EnumMap enumMap = new EnumMap(MatchClassification.class);
            PeekingIterator peekingIterator2 = new PeekingIterator(nodeText.getElements());
            while (peekingIterator2.hasNext()) {
                boolean hasPrevious2 = peekingIterator2.hasPrevious();
                TextElement textElement = (TextElement) peekingIterator2.next();
                int currentIndex = peekingIterator2.currentIndex();
                if (!arrayList.contains(Integer.valueOf(currentIndex))) {
                    if (csmElement.isCorrespondingElement(textElement)) {
                        boolean z11 = false;
                        if (hasPrevious2 && hasPrevious) {
                            z10 = elements.get(previousIndex).isCorrespondingElement(nodeText.getTextElement(currentIndex - 1));
                        } else {
                            z10 = false;
                        }
                        if (peekingIterator.hasNext()) {
                            z11 = elements.get(peekingIterator.nextIndex()).isCorrespondingElement((TextElement) peekingIterator2.peek());
                        }
                        if (z10 && z11) {
                            enumMap.putIfAbsent(MatchClassification.ALL, Integer.valueOf(currentIndex));
                        } else if (z10) {
                            enumMap.putIfAbsent(MatchClassification.PREVIOUS_AND_SAME, Integer.valueOf(currentIndex));
                        } else if (z11) {
                            enumMap.putIfAbsent(MatchClassification.NEXT_AND_SAME, Integer.valueOf(currentIndex));
                        } else {
                            enumMap.putIfAbsent(MatchClassification.SAME_ONLY, Integer.valueOf(currentIndex));
                        }
                    } else if (isAlmostCorrespondingElement(textElement, csmElement)) {
                        enumMap.putIfAbsent(MatchClassification.ALMOST, Integer.valueOf(currentIndex));
                    }
                }
            }
            Optional min = enumMap.o().stream().min(Comparator.comparing(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return Integer.valueOf(((ReshuffledDiffElementExtractor.MatchClassification) obj).getPriority());
                }
            }));
            if (min.isPresent()) {
                arrayList.add(enumMap.get(min.get()));
            } else {
                arrayList.add(-1);
            }
        }
        return arrayList;
    }

    private Map<Integer, Integer> getCorrespondanceBetweenNextOrderAndPreviousOrder(CsmMix elementsFromPreviousOrder, CsmMix elementsFromNextOrder) {
        HashMap hashMap = new HashMap();
        Difference.ArrayIterator arrayIterator = new Difference.ArrayIterator(elementsFromPreviousOrder.getElements());
        int i10 = 0;
        while (arrayIterator.hasNext()) {
            CsmElement csmElement = (CsmElement) arrayIterator.next();
            Difference.ArrayIterator arrayIterator2 = new Difference.ArrayIterator(elementsFromNextOrder.getElements(), i10);
            while (true) {
                if (arrayIterator2.hasNext()) {
                    CsmElement csmElement2 = (CsmElement) arrayIterator2.next();
                    if (!hashMap.values().contains(Integer.valueOf(arrayIterator.index())) && DifferenceElementCalculator.matching(csmElement2, csmElement)) {
                        hashMap.put(Integer.valueOf(arrayIterator2.index()), Integer.valueOf(arrayIterator.index()));
                        i10 = arrayIterator2.nextIndex();
                        break;
                    }
                }
            }
        }
        return hashMap;
    }

    private boolean isAlmostCorrespondingElement(TextElement textElement, CsmElement csmElement) {
        return !csmElement.isCorrespondingElement(textElement) && textElement.isWhiteSpace() && (csmElement instanceof CsmToken) && ((CsmToken) csmElement).isWhiteSpace();
    }

    public static ReshuffledDiffElementExtractor of(NodeText nodeText) {
        return new ReshuffledDiffElementExtractor(nodeText);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void extract(List<DifferenceElement> diffElements) {
        Difference.ArrayIterator arrayIterator = new Difference.ArrayIterator(diffElements);
        while (arrayIterator.hasNext()) {
            DifferenceElement differenceElement = (DifferenceElement) arrayIterator.next();
            if (differenceElement instanceof Reshuffled) {
                Reshuffled reshuffled = (Reshuffled) differenceElement;
                CsmMix previousOrder = reshuffled.getPreviousOrder();
                CsmMix nextOrder = reshuffled.getNextOrder();
                Map<Integer, Integer> correspondanceBetweenNextOrderAndPreviousOrder = getCorrespondanceBetweenNextOrderAndPreviousOrder(previousOrder, nextOrder);
                List<Integer> findIndexOfCorrespondingNodeTextElement = findIndexOfCorrespondingNodeTextElement(previousOrder.getElements(), this.nodeText);
                PeekingIterator peekingIterator = new PeekingIterator(findIndexOfCorrespondingNodeTextElement);
                HashMap hashMap = new HashMap();
                while (peekingIterator.hasNext()) {
                    Integer num = (Integer) peekingIterator.next();
                    if (num.intValue() != -1) {
                        hashMap.put(num, Integer.valueOf(peekingIterator.currentIndex()));
                    }
                }
                int intValue = findIndexOfCorrespondingNodeTextElement.stream().max(new C7752iQ0()).orElse(-1).intValue();
                LinkedList linkedList = new LinkedList();
                List<CsmElement> elements = nextOrder.getElements();
                HashMap hashMap2 = new HashMap();
                for (int i10 = 0; i10 < elements.size(); i10++) {
                    if (!correspondanceBetweenNextOrderAndPreviousOrder.containsKey(Integer.valueOf(i10))) {
                        int i11 = -1;
                        for (int i12 = i10 + 1; i12 < elements.size() && i11 == -1; i12++) {
                            if (correspondanceBetweenNextOrderAndPreviousOrder.containsKey(Integer.valueOf(i12))) {
                                Integer num2 = correspondanceBetweenNextOrderAndPreviousOrder.get(Integer.valueOf(i12));
                                int intValue2 = num2.intValue();
                                if (!hashMap2.containsKey(num2)) {
                                    hashMap2.put(num2, new LinkedList());
                                }
                                ((List) hashMap2.get(num2)).add(elements.get(i10));
                                i11 = intValue2;
                            }
                        }
                        if (i11 == -1) {
                            linkedList.add(elements.get(i10));
                        }
                    }
                }
                arrayIterator.remove();
                if (intValue != -1) {
                    for (int i13 = 0; i13 <= intValue; i13++) {
                        if (hashMap.containsKey(Integer.valueOf(i13))) {
                            Integer num3 = (Integer) hashMap.get(Integer.valueOf(i13));
                            int intValue3 = num3.intValue();
                            if (hashMap2.containsKey(num3)) {
                                Iterator it = ((List) hashMap2.get(num3)).iterator();
                                while (it.hasNext()) {
                                    arrayIterator.add(new Added((CsmElement) it.next()));
                                }
                            }
                            CsmElement csmElement = previousOrder.getElements().get(intValue3);
                            if (correspondanceBetweenNextOrderAndPreviousOrder.containsValue(num3)) {
                                arrayIterator.add(new Kept(csmElement));
                            } else {
                                arrayIterator.add(new Removed(csmElement));
                            }
                        }
                    }
                }
                Iterator<E> it2 = linkedList.iterator();
                while (it2.hasNext()) {
                    arrayIterator.add(new Added((CsmElement) it2.next()));
                }
            }
        }
    }
}
