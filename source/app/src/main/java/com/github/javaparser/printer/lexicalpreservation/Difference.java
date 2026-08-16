package com.github.javaparser.printer.lexicalpreservation;

import com.github.javaparser.JavaToken;
import com.github.javaparser.Range;
import com.github.javaparser.TokenTypes;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.comments.Comment;
import com.github.javaparser.ast.nodeTypes.NodeWithTypeArguments;
import com.github.javaparser.ast.type.ArrayType;
import com.github.javaparser.ast.type.ClassOrInterfaceType;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.printer.concretesyntaxmodel.CsmElement;
import com.github.javaparser.printer.concretesyntaxmodel.CsmIndent;
import com.github.javaparser.printer.concretesyntaxmodel.CsmUnindent;
import com.github.javaparser.printer.lexicalpreservation.LexicalDifferenceCalculator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.IntPredicate;
import java.util.function.IntUnaryOperator;
import java.util.function.Predicate;
import java.util.stream.IntStream;
import org.eclipse.jdt.internal.core.JavaElement;

public class Difference {
    public static final int STANDARD_INDENTATION_SIZE = 4;
    private final List<DifferenceElement> diffElements;
    private final List<TextElement> indentation;
    private final Node node;
    private final NodeText nodeText;
    private final List<TextElement> originalElements;
    private int originalIndex = 0;
    private int diffIndex = 0;
    private boolean addedIndentation = false;

    public static class ArrayIterator<T> implements ListIterator<T> {
        ListIterator<T> iterator;

        public ArrayIterator(List<T> elements) {
            this(elements, 0);
        }

        @Override
        public void add(T e10) {
            this.iterator.add(e10);
        }

        @Override
        public boolean hasNext() {
            return this.iterator.hasNext();
        }

        @Override
        public boolean hasPrevious() {
            return this.iterator.hasPrevious();
        }

        public int index() {
            return this.iterator.nextIndex() - 1;
        }

        @Override
        public T next() {
            return this.iterator.next();
        }

        @Override
        public int nextIndex() {
            return this.iterator.nextIndex();
        }

        @Override
        public T previous() {
            return this.iterator.previous();
        }

        @Override
        public int previousIndex() {
            return this.iterator.previousIndex();
        }

        @Override
        public void remove() {
            this.iterator.remove();
        }

        @Override
        public void set(T e10) {
            this.iterator.set(e10);
        }

        public ArrayIterator(List<T> elements, int index) {
            this.iterator = elements.listIterator(index);
        }
    }

    public class EnforcingIndentationContext {
        int extraCharacters;
        int start;

        public EnforcingIndentationContext(final Difference this$0, int start) {
            this(start, 0);
        }

        public EnforcingIndentationContext(int start, int extraCharacters) {
            this.start = start;
            this.extraCharacters = extraCharacters;
        }
    }

    public Difference(List<DifferenceElement> diffElements, NodeText nodeText, Node node) {
        if (nodeText == null) {
            throw new NullPointerException("nodeText can not be null");
        }
        this.nodeText = nodeText;
        this.node = node;
        this.diffElements = diffElements;
        this.originalElements = nodeText.getElements();
        this.indentation = LexicalPreservingPrinter.findIndentation(node);
    }

    private int adjustIndentation(List<TextElement> indentation, NodeText nodeText, int nodeTextIndex, boolean followedByUnindent) {
        List<TextElement> processIndentation = processIndentation(indentation, nodeText.getElements().subList(0, nodeTextIndex - 1));
        if (nodeTextIndex < nodeText.numberOfElements() && nodeText.getTextElement(nodeTextIndex).isToken(104)) {
            processIndentation = processIndentation.subList(0, processIndentation.size() - Math.min(4, processIndentation.size()));
        } else if (followedByUnindent) {
            processIndentation = processIndentation.subList(0, Math.max(0, processIndentation.size() - 4));
        }
        for (TextElement textElement : processIndentation) {
            if (nodeTextIndex >= nodeText.numberOfElements() || !nodeText.getTextElement(nodeTextIndex).isSpaceOrTab()) {
                nodeText.getElements().add(nodeTextIndex, textElement);
                nodeTextIndex++;
            } else {
                nodeTextIndex++;
            }
        }
        if (nodeTextIndex >= 0) {
            return nodeTextIndex;
        }
        throw new IllegalStateException();
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0251  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void applyAddedDiffElement(Added added) {
        boolean isNewline;
        if (added.isIndent()) {
            for (int i10 = 0; i10 < 4; i10++) {
                this.indentation.add(new TokenTextElement(1));
            }
            this.addedIndentation = true;
            this.diffIndex++;
            return;
        }
        if (added.isUnindent()) {
            for (int i11 = 0; i11 < 4 && !this.indentation.isEmpty(); i11++) {
                List<TextElement> list = this.indentation;
                list.remove(list.size() - 1);
            }
            this.addedIndentation = false;
            this.diffIndex++;
            return;
        }
        final TextElement textElement = added.toTextElement();
        int i12 = this.originalIndex;
        boolean z10 = i12 > 0 && this.originalElements.get(i12 - 1).isNewline();
        if (z10) {
            List<TextElement> processIndentation = processIndentation(this.indentation, this.originalElements.subList(0, this.originalIndex - 1));
            boolean nextIsRightBrace = nextIsRightBrace(this.originalIndex);
            for (TextElement textElement2 : processIndentation) {
                if (!nextIsRightBrace && (textElement2 instanceof TokenTextElement) && this.originalElements.get(this.originalIndex).isToken(((TokenTextElement) textElement2).getTokenKind())) {
                    this.originalIndex++;
                } else {
                    NodeText nodeText = this.nodeText;
                    int i13 = this.originalIndex;
                    this.originalIndex = i13 + 1;
                    nodeText.addElement(i13, textElement2);
                }
            }
        } else if (isAfterLBrace(this.nodeText, this.originalIndex) && !isAReplacement(this.diffIndex)) {
            isNewline = textElement.isNewline();
            NodeText nodeText2 = this.nodeText;
            int i14 = this.originalIndex;
            this.originalIndex = i14 + 1;
            nodeText2.addElement(i14, new TokenTextElement(TokenTypes.eolTokenKind()));
            while (true) {
                int i15 = this.originalIndex;
                if (i15 < 2 || !this.originalElements.get(i15 - 2).isSpaceOrTab()) {
                    break;
                }
                this.originalElements.remove(this.originalIndex - 2);
                this.originalIndex--;
            }
            for (TextElement textElement3 : processIndentation(this.indentation, this.originalElements.subList(0, this.originalIndex - 1))) {
                NodeText nodeText3 = this.nodeText;
                int i16 = this.originalIndex;
                this.originalIndex = i16 + 1;
                nodeText3.addElement(i16, textElement3);
            }
            if (!this.addedIndentation) {
                for (TextElement textElement4 : indentationBlock()) {
                    NodeText nodeText4 = this.nodeText;
                    int i17 = this.originalIndex;
                    this.originalIndex = i17 + 1;
                    nodeText4.addElement(i17, textElement4);
                }
            }
            if (!isNewline) {
                int numberOfElements = this.nodeText.numberOfElements();
                int i18 = this.originalIndex;
                boolean z11 = numberOfElements > i18 + 2;
                boolean isComment = this.nodeText.getTextElement(i18).isComment();
                int i19 = this.originalIndex;
                boolean z12 = i19 > 0 && this.nodeText.getTextElement(i19 - 1).isComment();
                boolean isNewline2 = this.nodeText.getTextElement(this.originalIndex).isNewline();
                int i20 = this.originalIndex;
                boolean z13 = i20 == 0;
                boolean z14 = i20 > 0 && this.nodeText.getTextElement(i20 - 1).isWhiteSpace();
                boolean z15 = isComment && textElement.getRange().isPresent() && ((Boolean) this.nodeText.getTextElement(this.originalIndex).getRange().map(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        Boolean lambda$applyAddedDiffElement$4;
                        lambda$applyAddedDiffElement$4 = Difference.lambda$applyAddedDiffElement$4(TextElement.this, (Range) obj);
                        return lambda$applyAddedDiffElement$4;
                    }
                }).orElse(Boolean.FALSE)).booleanValue();
                if (z11 && isComment && z15) {
                    int i21 = this.originalIndex + 2;
                    this.originalIndex = i21;
                    this.nodeText.addElement(i21, textElement);
                    this.originalIndex = adjustIndentation(this.indentation, this.nodeText, this.originalIndex, false) + 1;
                } else if (isNewline2 && z12) {
                    int i22 = this.originalIndex + 1;
                    this.originalIndex = i22;
                    int adjustIndentation = adjustIndentation(this.indentation, this.nodeText, i22, false);
                    this.originalIndex = adjustIndentation;
                    this.nodeText.addElement(adjustIndentation, textElement);
                    this.originalIndex++;
                } else if (isNewline2 && textElement.isChild()) {
                    if (!z10 && !z13 && !z14) {
                        int i23 = this.originalIndex + 1;
                        this.originalIndex = i23;
                        this.originalIndex = adjustIndentation(this.indentation, this.nodeText, i23, false);
                    }
                    this.nodeText.addElement(this.originalIndex, textElement);
                    this.originalIndex++;
                } else {
                    this.nodeText.addElement(this.originalIndex, textElement);
                    this.originalIndex++;
                }
            }
            if (textElement.isNewline()) {
                boolean isFollowedByUnindent = isFollowedByUnindent(this.diffElements, this.diffIndex);
                boolean nextIsRightBrace2 = nextIsRightBrace(this.originalIndex);
                if ((!this.originalElements.get(this.originalIndex).isNewline() && !nextIsRightBrace2) || isFollowedByUnindent) {
                    this.originalIndex = adjustIndentation(this.indentation, this.nodeText, this.originalIndex, isFollowedByUnindent);
                }
            }
            this.diffIndex++;
        }
        isNewline = false;
        if (!isNewline) {
        }
        if (textElement.isNewline()) {
        }
        this.diffIndex++;
    }

    private void applyKeptDiffElement(Kept kept, TextElement originalElement, boolean originalElementIsChild, boolean originalElementIsToken) {
        if (originalElement.isComment()) {
            this.originalIndex++;
            return;
        }
        if (kept.isChild() && (((LexicalDifferenceCalculator.CsmChild) kept.getElement()).getChild() instanceof Comment)) {
            this.diffIndex++;
            return;
        }
        if (kept.isChild() && originalElementIsChild) {
            this.diffIndex++;
            this.originalIndex++;
            return;
        }
        if (kept.isChild() && originalElementIsToken) {
            if (originalElement.isWhiteSpaceOrComment()) {
                this.originalIndex++;
                return;
            }
            if (originalElement.isIdentifier() && isNodeWithTypeArguments(kept)) {
                this.diffIndex++;
                this.originalIndex = this.originalIndex + getIndexToNextTokenElement((TokenTextElement) originalElement, 0) + 1;
                return;
            }
            if (originalElement.isIdentifier() && isTypeWithFullyQualifiedName(kept)) {
                this.diffIndex++;
                this.originalIndex = this.originalIndex + getIndexToNextTokenElement((TokenTextElement) originalElement, kept) + 1;
                return;
            }
            if ((originalElement.isIdentifier() || originalElement.isKeyword()) && isArrayType(kept)) {
                int indexToNextTokenElementInArrayType = getIndexToNextTokenElementInArrayType((TokenTextElement) originalElement, getArrayLevel(kept));
                this.diffIndex++;
                this.originalIndex = this.originalIndex + indexToNextTokenElementInArrayType + 1;
                return;
            } else if (originalElement.isIdentifier()) {
                this.originalIndex++;
                this.diffIndex++;
                return;
            } else if (!kept.isPrimitiveType()) {
                this.originalIndex++;
                return;
            } else {
                this.originalIndex++;
                this.diffIndex++;
                return;
            }
        }
        if (!kept.isToken() || !originalElementIsToken) {
            if (kept.isToken() && originalElementIsChild) {
                this.diffIndex++;
                return;
            }
            if (kept.isWhiteSpace()) {
                this.diffIndex++;
                return;
            }
            if (kept.isIndent()) {
                this.diffIndex++;
                return;
            }
            if (kept.isUnindent()) {
                this.diffIndex++;
                return;
            }
            throw new UnsupportedOperationException("kept " + ((Object) kept.getElement()) + " vs " + ((Object) originalElement));
        }
        TokenTextElement tokenTextElement = (TokenTextElement) originalElement;
        if (kept.getTokenType() == tokenTextElement.getTokenKind()) {
            this.originalIndex++;
            this.diffIndex++;
            return;
        }
        if (kept.isNewLine() && tokenTextElement.isNewline()) {
            this.originalIndex++;
            this.diffIndex++;
            return;
        }
        if (kept.isNewLine() && tokenTextElement.isSpaceOrTab()) {
            this.originalIndex++;
            return;
        }
        if (kept.isWhiteSpaceOrComment()) {
            this.diffIndex++;
            return;
        }
        if (tokenTextElement.isWhiteSpaceOrComment()) {
            this.originalIndex++;
            return;
        }
        if (!kept.isNewLine() && tokenTextElement.isSeparator()) {
            this.originalIndex++;
            return;
        }
        throw new UnsupportedOperationException("Csm token " + ((Object) kept.getElement()) + " NodeText TOKEN " + ((Object) tokenTextElement));
    }

    private boolean applyLeftOverDiffElements() {
        if (this.diffIndex >= this.diffElements.size() || this.originalIndex < this.originalElements.size()) {
            return false;
        }
        DifferenceElement differenceElement = this.diffElements.get(this.diffIndex);
        if (differenceElement.isKept()) {
            this.diffIndex++;
            return true;
        }
        if (!differenceElement.isAdded()) {
            this.diffIndex++;
            return true;
        }
        this.nodeText.addElement(this.originalIndex, ((Added) differenceElement).toTextElement());
        this.originalIndex++;
        this.diffIndex++;
        return true;
    }

    private boolean applyLeftOverOriginalElements() {
        if (this.diffIndex < this.diffElements.size() || this.originalIndex >= this.originalElements.size()) {
            return false;
        }
        TextElement textElement = this.originalElements.get(this.originalIndex);
        if (textElement.isWhiteSpaceOrComment()) {
            this.originalIndex++;
            return true;
        }
        throw new UnsupportedOperationException("NodeText: " + ((Object) this.nodeText) + ". Difference: " + ((Object) this) + " " + ((Object) textElement));
    }

    private void applyRemovedDiffElement(RemovedGroup removedGroup, Removed removed, TextElement originalElement, boolean originalElementIsChild, boolean originalElementIsToken) {
        if (removed.isChild() && originalElementIsChild) {
            ChildTextElement childTextElement = (ChildTextElement) originalElement;
            if (childTextElement.isComment()) {
                Comment comment = (Comment) childTextElement.getChild();
                if (!comment.isOrphan() && comment.getCommentedNode().isPresent() && comment.getCommentedNode().get().equals(removed.getChild())) {
                    this.nodeText.removeElement(this.originalIndex);
                } else {
                    this.originalIndex++;
                }
            } else {
                NodeText nodeText = new NodeText();
                List<TextElement> arrayList = new ArrayList();
                if (this.originalIndex == 0 && removed.getChild().getParentNode().isPresent()) {
                    Node child = removed.getChild();
                    Node node = removed.getChild().getParentNode().get();
                    NodeText orCreateNodeText = LexicalPreservingPrinter.getOrCreateNodeText(node);
                    if (!orCreateNodeText.getElements().isEmpty() && node.getParentNode().isPresent() && orCreateNodeText.getTextElement(0).equals(this.nodeText.getTextElement(this.originalIndex))) {
                        orCreateNodeText = LexicalPreservingPrinter.getOrCreateNodeText(node.getParentNode().get());
                        child = node;
                    }
                    arrayList = LexicalPreservingPrinter.findIndentation(child);
                    nodeText = orCreateNodeText;
                }
                this.nodeText.removeElement(this.originalIndex);
                if (isEnforcingIndentationActivable(removedGroup)) {
                    this.originalIndex = considerEnforcingIndentation(this.nodeText, this.originalIndex);
                }
                int size = this.originalElements.size();
                int i10 = this.originalIndex;
                if (size > i10 && i10 > 0 && this.originalElements.get(i10).isWhiteSpace() && this.originalElements.get(this.originalIndex - 1).isWhiteSpace() && (this.diffIndex + 1 == this.diffElements.size() || this.diffElements.get(this.diffIndex + 1).isKept())) {
                    List<TextElement> list = this.originalElements;
                    int i11 = this.originalIndex;
                    this.originalIndex = i11 - 1;
                    list.remove(i11);
                }
                if (isFollowedByComment(this.originalIndex, this.originalElements)) {
                    removeElements(this.originalIndex, posOfNextComment(this.originalIndex, this.originalElements), this.originalElements);
                }
                if (isRemovingIndentationActivable(removedGroup)) {
                    int considerRemovingIndentation = considerRemovingIndentation(this.nodeText, this.originalIndex);
                    this.originalIndex = considerRemovingIndentation;
                    if (considerRemovingIndentation == 0 && !arrayList.isEmpty() && !isInlined(this.nodeText, this.originalIndex)) {
                        for (TextElement textElement : arrayList) {
                            nodeText.removeElement(nodeText.findElement(textElement.and(textElement.matchByRange())));
                        }
                    }
                }
                this.diffIndex++;
            }
        } else if (removed.isChild() && originalElement.isComment()) {
            this.nodeText.removeElement(this.originalIndex);
            if (isRemovingIndentationActivable(removedGroup)) {
                this.originalIndex = considerRemovingIndentation(this.nodeText, this.originalIndex);
            }
        } else {
            if (removed.isToken() && originalElementIsToken) {
                TokenTextElement tokenTextElement = (TokenTextElement) originalElement;
                if (removed.getTokenType() == tokenTextElement.getTokenKind() || (tokenTextElement.getToken().getCategory().isEndOfLine() && removed.isNewLine())) {
                    this.nodeText.removeElement(this.originalIndex);
                    this.diffIndex++;
                }
            }
            if ((removed.isWhiteSpaceNotEol() || (removed.getElement() instanceof CsmIndent) || (removed.getElement() instanceof CsmUnindent)) && originalElement.isSpaceOrTab()) {
                this.nodeText.removeElement(this.originalIndex);
            } else if (originalElementIsToken && originalElement.isWhiteSpaceOrComment()) {
                this.originalIndex++;
                if (removed.isNewLine()) {
                    this.diffIndex++;
                }
            } else if (originalElement.isLiteral()) {
                this.nodeText.removeElement(this.originalIndex);
                this.diffIndex++;
            } else if (removed.isPrimitiveType()) {
                if (!originalElement.isPrimitive()) {
                    throw new UnsupportedOperationException("removed " + ((Object) removed.getElement()) + " vs " + ((Object) originalElement));
                }
                this.nodeText.removeElement(this.originalIndex);
                this.diffIndex++;
            } else if (removed.isWhiteSpace() || (removed.getElement() instanceof CsmIndent) || (removed.getElement() instanceof CsmUnindent)) {
                this.diffIndex++;
            } else if (originalElement.isWhiteSpace()) {
                this.originalIndex++;
            } else if (removed.isChild()) {
                this.nodeText.removeElement(this.originalIndex);
                this.diffIndex++;
            } else {
                if (!originalElement.isChild() || !removed.isToken()) {
                    throw new UnsupportedOperationException("removed " + ((Object) removed.getElement()) + " vs " + ((Object) originalElement));
                }
                this.nodeText.removeElement(this.originalIndex);
                this.diffIndex++;
            }
        }
        cleanTheLineOfLeftOverSpace(removedGroup, removed);
    }

    private void cleanTheLineOfLeftOverSpace(RemovedGroup removedGroup, Removed removed) {
        if (this.originalIndex < this.originalElements.size() && !removedGroup.isProcessed() && removedGroup.isLastElement(removed) && removedGroup.isACompleteLine() && !removed.isNewLine()) {
            Integer lastElementIndex = removedGroup.getLastElementIndex();
            Optional<Integer> indentation = removedGroup.getIndentation();
            if (indentation.isPresent() && !isReplaced(lastElementIndex.intValue())) {
                for (int i10 = 0; i10 < indentation.get().intValue(); i10++) {
                    if (this.originalElements.get(this.originalIndex).isSpaceOrTab()) {
                        this.nodeText.removeElement(this.originalIndex);
                    } else {
                        int i11 = this.originalIndex;
                        if (i11 >= 1 && this.originalElements.get(i11 - 1).isSpaceOrTab()) {
                            this.nodeText.removeElement(this.originalIndex - 1);
                            this.originalIndex--;
                        }
                    }
                    if (this.nodeText.getTextElement(this.originalIndex).isNewline()) {
                        this.nodeText.removeElement(this.originalIndex);
                        int i12 = this.originalIndex;
                        if (i12 > 0) {
                            this.originalIndex = i12 - 1;
                        } else {
                            i12 = 0;
                        }
                        this.originalIndex = i12;
                    }
                }
            }
            removedGroup.processed();
        }
    }

    private Map<Removed, RemovedGroup> combineRemovedElementsToRemovedGroups() {
        Map<Integer, List<Removed>> groupConsecutiveRemovedElements = groupConsecutiveRemovedElements();
        ArrayList<RemovedGroup> arrayList = new ArrayList();
        for (Map.Entry<Integer, List<Removed>> entry : groupConsecutiveRemovedElements.entrySet()) {
            arrayList.add(RemovedGroup.of(entry.getKey(), entry.getValue()));
        }
        HashMap hashMap = new HashMap();
        for (RemovedGroup removedGroup : arrayList) {
            Iterator<Removed> it = removedGroup.iterator();
            while (it.hasNext()) {
                hashMap.put(it.next(), removedGroup);
            }
        }
        return hashMap;
    }

    private int considerIndentation(NodeText nodeText, int nodeTextIndex, int numberOfCharactersToPreserve) {
        EnforcingIndentationContext defineEnforcingIndentationContext = defineEnforcingIndentationContext(nodeText, nodeTextIndex);
        int i10 = defineEnforcingIndentationContext.extraCharacters;
        if (i10 > 0) {
            int i11 = i10 > numberOfCharactersToPreserve ? i10 - numberOfCharactersToPreserve : 0;
            int removeExtraCharacters = removeExtraCharacters(nodeText, defineEnforcingIndentationContext.start, i11);
            if (i11 > 0) {
                removeExtraCharacters += numberOfCharactersToPreserve;
            }
            nodeTextIndex = removeExtraCharacters;
        }
        if (nodeTextIndex >= 0) {
            return nodeTextIndex;
        }
        throw new IllegalStateException();
    }

    private int considerRemovingIndentation(NodeText nodeText, int nodeTextIndex) {
        return considerIndentation(nodeText, nodeTextIndex, 0);
    }

    private EnforcingIndentationContext defineEnforcingIndentationContext(NodeText nodeText, int startIndex) {
        EnforcingIndentationContext enforcingIndentationContext = new EnforcingIndentationContext(this, startIndex);
        if (startIndex < nodeText.numberOfElements() && startIndex > 0) {
            int i10 = startIndex - 1;
            while (true) {
                if (i10 < 0 || i10 >= nodeText.numberOfElements() || nodeText.getTextElement(i10).isNewline()) {
                    break;
                }
                if (!isSpaceOrTabElement(nodeText, i10)) {
                    enforcingIndentationContext = new EnforcingIndentationContext(this, startIndex);
                    break;
                }
                enforcingIndentationContext.start = i10;
                enforcingIndentationContext.extraCharacters++;
                i10--;
            }
        }
        if (startIndex < nodeText.numberOfElements() && isSpaceOrTabElement(nodeText, startIndex)) {
            while (startIndex >= 0 && startIndex < nodeText.numberOfElements() && !nodeText.getTextElement(startIndex).isNewline() && isSpaceOrTabElement(nodeText, startIndex)) {
                enforcingIndentationContext.extraCharacters++;
                startIndex++;
            }
        }
        return enforcingIndentationContext;
    }

    private int getArrayLevel(DifferenceElement element) {
        CsmElement element2 = element.getElement();
        if (isArrayType(element)) {
            return ((ArrayType) ((LexicalDifferenceCalculator.CsmChild) element2).getChild()).getArrayLevel();
        }
        return 0;
    }

    private int getIndexToNextTokenElement(TokenTextElement element, DifferenceElement kept) {
        if (!isTypeWithFullyQualifiedName(kept)) {
            return 0;
        }
        String[] split = ((ClassOrInterfaceType) ((LexicalDifferenceCalculator.CsmChild) kept.getElement()).getChild()).getNameWithScope().split("\\.");
        JavaToken token = element.getToken();
        int i10 = 0;
        for (String str : split) {
            if (!str.equals(token.asString())) {
                return 0;
            }
            JavaToken javaToken = token.getNextToken().get();
            if (!".".equals(javaToken.asString())) {
                break;
            }
            token = javaToken.getNextToken().get();
            i10 += 2;
        }
        return i10;
    }

    private int getIndexToNextTokenElementInArrayType(TokenTextElement element, int arrayLevel) {
        Optional<JavaToken> nextToken = element.getToken().getNextToken();
        if (!nextToken.isPresent()) {
            return 0;
        }
        JavaToken javaToken = nextToken.get();
        JavaToken.Kind valueOf = JavaToken.Kind.valueOf(javaToken.getKind());
        if (isBracket(valueOf) && JavaToken.Kind.RBRACKET.equals(valueOf)) {
            arrayLevel--;
        }
        if (arrayLevel != 0 || javaToken.getCategory().isWhitespace()) {
            return 1 + getIndexToNextTokenElementInArrayType(new TokenTextElement(javaToken), arrayLevel);
        }
        return 1;
    }

    private Map<Integer, List<Removed>> groupConsecutiveRemovedElements() {
        HashMap hashMap = new HashMap();
        Integer num = null;
        for (int i10 = 0; i10 < this.diffElements.size(); i10++) {
            DifferenceElement differenceElement = this.diffElements.get(i10);
            if (differenceElement.isRemoved()) {
                if (num == null) {
                    num = Integer.valueOf(i10);
                }
                ((List) hashMap.computeIfAbsent(num, new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        List lambda$groupConsecutiveRemovedElements$3;
                        lambda$groupConsecutiveRemovedElements$3 = Difference.lambda$groupConsecutiveRemovedElements$3((Integer) obj);
                        return lambda$groupConsecutiveRemovedElements$3;
                    }
                })).add((Removed) differenceElement);
            } else {
                num = null;
            }
        }
        return hashMap;
    }

    private List<TextElement> indentationBlock() {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new TokenTextElement(1));
        linkedList.add(new TokenTextElement(1));
        linkedList.add(new TokenTextElement(1));
        linkedList.add(new TokenTextElement(1));
        return linkedList;
    }

    private boolean isAReplacement(int diffIndex) {
        return diffIndex > 0 && this.diffElements.get(diffIndex).isAdded() && this.diffElements.get(diffIndex - 1).isRemoved();
    }

    private boolean isAfterLBrace(NodeText nodeText, int nodeTextIndex) {
        if (nodeTextIndex > 0 && nodeText.getTextElement(nodeTextIndex - 1).isToken(103)) {
            return true;
        }
        if (nodeTextIndex <= 0) {
            return false;
        }
        int i10 = nodeTextIndex - 1;
        if (nodeText.getTextElement(i10).isSpaceOrTab()) {
            return isAfterLBrace(nodeText, i10);
        }
        return false;
    }

    private boolean isArrayType(DifferenceElement element) {
        CsmElement element2 = element.getElement();
        return (element2 instanceof LexicalDifferenceCalculator.CsmChild) && (((LexicalDifferenceCalculator.CsmChild) element2).getChild() instanceof ArrayType);
    }

    private boolean isBracket(JavaToken.Kind kind) {
        return JavaToken.Kind.LBRACKET.equals(kind) || JavaToken.Kind.RBRACKET.equals(kind);
    }

    private boolean isDiamondOperator(JavaToken.Kind kind) {
        return JavaToken.Kind.GT.equals(kind) || JavaToken.Kind.LT.equals(kind);
    }

    private boolean isEnforcingIndentationActivable(RemovedGroup removedGroup) {
        return (isLastElement(this.diffElements, this.diffIndex) || !nextDiffElement(this.diffElements, this.diffIndex).isAdded()) && this.originalIndex < this.originalElements.size() && !removedGroup.isACompleteLine();
    }

    private boolean isFollowedByComment(int fromIndex, List<TextElement> elements) {
        return posOfNextComment(fromIndex, elements) != -1;
    }

    private boolean isFollowedByUnindent(List<DifferenceElement> diffElements, int diffIndex) {
        int i10 = diffIndex + 1;
        return i10 < diffElements.size() && diffElements.get(i10).isAdded() && (diffElements.get(i10).getElement() instanceof CsmUnindent);
    }

    private boolean isInlined(NodeText nodeText, int startIndex) {
        if (startIndex < nodeText.numberOfElements() && startIndex >= 0) {
            while (startIndex < nodeText.numberOfElements() && !nodeText.getTextElement(startIndex).isNewline()) {
                if (nodeText.getTextElement(startIndex).isChild()) {
                    return true;
                }
                startIndex++;
            }
        }
        return false;
    }

    private boolean isLastElement(List<?> list, int index) {
        return index + 1 >= list.size();
    }

    private boolean isNodeWithTypeArguments(DifferenceElement element) {
        if (!element.isChild()) {
            return false;
        }
        LexicalDifferenceCalculator.CsmChild csmChild = (LexicalDifferenceCalculator.CsmChild) element.getElement();
        if (!NodeWithTypeArguments.class.isAssignableFrom(csmChild.getChild().getClass())) {
            return false;
        }
        Optional<NodeList<Type>> typeArguments = ((NodeWithTypeArguments) csmChild.getChild()).getTypeArguments();
        return typeArguments.isPresent() && typeArguments.get().size() > 0;
    }

    private boolean isRemovingIndentationActivable(RemovedGroup removedGroup) {
        return (isLastElement(this.diffElements, this.diffIndex) || !nextDiffElement(this.diffElements, this.diffIndex).isAdded()) && this.originalIndex < this.originalElements.size() && removedGroup.isACompleteLine();
    }

    private boolean isReplaced(int diffIndex) {
        return diffIndex < this.diffElements.size() - 1 && this.diffElements.get(diffIndex + 1).isAdded() && this.diffElements.get(diffIndex).isRemoved();
    }

    private boolean isSpaceOrTabElement(NodeText nodeText, int i10) {
        return nodeText.getTextElement(i10).isSpaceOrTab();
    }

    private boolean isTypeWithFullyQualifiedName(DifferenceElement element) {
        if (!element.isChild()) {
            return false;
        }
        LexicalDifferenceCalculator.CsmChild csmChild = (LexicalDifferenceCalculator.CsmChild) element.getElement();
        if (ClassOrInterfaceType.class.isAssignableFrom(csmChild.getChild().getClass())) {
            return ((ClassOrInterfaceType) csmChild.getChild()).getScope().isPresent();
        }
        return false;
    }

    private boolean isValidIndex(int index, List<?> elements) {
        return index >= 0 && index <= elements.size();
    }

    public static Boolean lambda$applyAddedDiffElement$4(final TextElement addedTextElement, Range range) {
        return Boolean.valueOf(range.isBefore(addedTextElement.getRange().get()));
    }

    public static List lambda$groupConsecutiveRemovedElements$3(Integer key) {
        return new ArrayList();
    }

    public static int lambda$lastIndexOfEol$1(final List source, int i10) {
        return (source.size() - i10) - 1;
    }

    public static boolean lambda$lastIndexOfEol$2(final List source, int i10) {
        return ((TextElement) source.get(i10)).isNewline();
    }

    private DifferenceElement nextDiffElement(List<DifferenceElement> list, int index) {
        return list.get(index + 1);
    }

    private boolean nextIsRightBrace(int index) {
        List<TextElement> list = this.originalElements;
        for (TextElement textElement : list.subList(index, list.size())) {
            if (!textElement.isSpaceOrTab()) {
                return textElement.isToken(104);
            }
        }
        return false;
    }

    private int posOfNextComment(int fromIndex, List<TextElement> elements) {
        if (!isValidIndex(fromIndex, elements)) {
            return -1;
        }
        ArrayIterator arrayIterator = new ArrayIterator(elements, fromIndex);
        while (true) {
            if (!arrayIterator.hasNext()) {
                break;
            }
            TextElement textElement = (TextElement) arrayIterator.next();
            if (!textElement.isSpaceOrTab()) {
                if (textElement.isComment()) {
                    return arrayIterator.index();
                }
            }
        }
        return -1;
    }

    private void removeElements(int fromIndex, int toIndex, List<TextElement> elements) {
        if (isValidIndex(fromIndex, elements) && isValidIndex(toIndex, elements) && fromIndex <= toIndex) {
            ListIterator<TextElement> listIterator = elements.listIterator(fromIndex);
            while (listIterator.hasNext() && fromIndex <= toIndex) {
                listIterator.next();
                listIterator.remove();
                fromIndex++;
            }
        }
    }

    private int removeExtraCharacters(NodeText nodeText, int nodeTextIndex, int extraCharacters) {
        for (int i10 = 0; nodeTextIndex >= 0 && nodeTextIndex < nodeText.numberOfElements() && i10 < extraCharacters; i10++) {
            nodeText.removeElement(nodeTextIndex);
        }
        return nodeTextIndex;
    }

    public void apply() {
        ReshuffledDiffElementExtractor.of(this.nodeText).extract(this.diffElements);
        Map<Removed, RemovedGroup> combineRemovedElementsToRemovedGroups = combineRemovedElementsToRemovedGroups();
        while (true) {
            boolean applyLeftOverDiffElements = applyLeftOverDiffElements();
            boolean applyLeftOverOriginalElements = applyLeftOverOriginalElements();
            if (!applyLeftOverDiffElements && !applyLeftOverOriginalElements) {
                DifferenceElement differenceElement = this.diffElements.get(this.diffIndex);
                if (differenceElement.isAdded()) {
                    applyAddedDiffElement((Added) differenceElement);
                } else {
                    TextElement textElement = this.originalElements.get(this.originalIndex);
                    boolean z10 = textElement instanceof ChildTextElement;
                    boolean z11 = textElement instanceof TokenTextElement;
                    if (differenceElement.isKept()) {
                        applyKeptDiffElement((Kept) differenceElement, textElement, z10, z11);
                    } else {
                        if (!differenceElement.isRemoved()) {
                            throw new UnsupportedOperationException("Unable to apply operations from " + differenceElement.getClass().getSimpleName() + " to " + textElement.getClass().getSimpleName());
                        }
                        Removed removed = (Removed) differenceElement;
                        applyRemovedDiffElement(combineRemovedElementsToRemovedGroups.get(removed), removed, textElement, z10, z11);
                    }
                }
            }
            if (this.diffIndex >= this.diffElements.size() && this.originalIndex >= this.originalElements.size()) {
                return;
            }
        }
    }

    public int considerEnforcingIndentation(NodeText nodeText, int nodeTextIndex) {
        return considerIndentation(nodeText, nodeTextIndex, this.indentation.size());
    }

    public int lastIndexOfEol(final List<TextElement> source) {
        return IntStream.range(0, source.size()).map(new IntUnaryOperator() {
            @Override
            public final int applyAsInt(int i10) {
                int lambda$lastIndexOfEol$1;
                lambda$lastIndexOfEol$1 = Difference.lambda$lastIndexOfEol$1(List.this, i10);
                return lambda$lastIndexOfEol$1;
            }
        }).filter(new IntPredicate() {
            @Override
            public final boolean test(int i10) {
                boolean lambda$lastIndexOfEol$2;
                lambda$lastIndexOfEol$2 = Difference.lambda$lastIndexOfEol$2(List.this, i10);
                return lambda$lastIndexOfEol$2;
            }
        }).findFirst().orElse(-1);
    }

    public int lastIndexOfEolWithoutGPT(List<TextElement> source) {
        ListIterator<TextElement> listIterator = source.listIterator(source.size());
        int size = source.size();
        do {
            size--;
            if (!listIterator.hasPrevious()) {
                return -1;
            }
        } while (!listIterator.previous().isNewline());
        return size;
    }

    public List<TextElement> processIndentation(List<TextElement> indentation, List<TextElement> prevElements) {
        int lastIndexOfEol = lastIndexOfEol(prevElements);
        return lastIndexOfEol < 0 ? indentation : takeWhile(prevElements.subList(lastIndexOfEol + 1, prevElements.size()), new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean isWhiteSpace;
                isWhiteSpace = ((TextElement) obj).isWhiteSpace();
                return isWhiteSpace;
            }
        });
    }

    public List<TextElement> takeWhile(List<TextElement> prevElements, Predicate<TextElement> predicate) {
        ArrayList arrayList = new ArrayList();
        for (TextElement textElement : prevElements) {
            if (!predicate.test(textElement)) {
                break;
            }
            arrayList.add(textElement);
        }
        return arrayList;
    }

    public String toString() {
        return "Difference{" + ((Object) this.diffElements) + JavaElement.JEM_ANNOTATION;
    }

    private int getIndexToNextTokenElement(TokenTextElement element, int nestedDiamondOperator) {
        Optional<JavaToken> nextToken = element.getToken().getNextToken();
        if (!nextToken.isPresent()) {
            return 0;
        }
        JavaToken javaToken = nextToken.get();
        JavaToken.Kind valueOf = JavaToken.Kind.valueOf(javaToken.getKind());
        if (isDiamondOperator(valueOf)) {
            nestedDiamondOperator = JavaToken.Kind.GT.equals(valueOf) ? nestedDiamondOperator - 1 : nestedDiamondOperator + 1;
        }
        if (nestedDiamondOperator != 0 || javaToken.getCategory().isWhitespace()) {
            return 1 + getIndexToNextTokenElement(new TokenTextElement(javaToken), nestedDiamondOperator);
        }
        return 1;
    }
}
