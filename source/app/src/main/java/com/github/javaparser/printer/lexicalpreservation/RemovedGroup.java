package com.github.javaparser.printer.lexicalpreservation;

import com.github.javaparser.JavaToken;
import com.github.javaparser.TokenRange;
import com.github.javaparser.TokenTypes;
import com.github.javaparser.printer.concretesyntaxmodel.CsmToken;
import com.github.javaparser.printer.lexicalpreservation.LexicalDifferenceCalculator;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

public final class RemovedGroup implements Iterable<Removed> {
    private final Integer firstElementIndex;
    private final List<Removed> removedList;
    private boolean isProcessed = false;
    private final Function<JavaToken, Boolean> hasOnlyWhitespaceJavaTokenInFrontFunction = new Function() {
        @Override
        public final Object apply(Object obj) {
            Boolean lambda$new$1;
            lambda$new$1 = RemovedGroup.this.lambda$new$1((JavaToken) obj);
            return lambda$new$1;
        }
    };
    private final Function<JavaToken, Boolean> hasOnlyWhitespaceJavaTokenBehindFunction = new Function() {
        @Override
        public final Object apply(Object obj) {
            Boolean lambda$new$3;
            lambda$new$3 = RemovedGroup.this.lambda$new$3((JavaToken) obj);
            return lambda$new$3;
        }
    };
    private final Function<TokenRange, Boolean> hasOnlyWhitespaceInFrontFunction = new Function() {
        @Override
        public final Object apply(Object obj) {
            Boolean lambda$new$4;
            lambda$new$4 = RemovedGroup.this.lambda$new$4((TokenRange) obj);
            return lambda$new$4;
        }
    };
    private final Function<TokenRange, Boolean> hasOnlyWhitespaceBehindFunction = new Function() {
        @Override
        public final Object apply(Object obj) {
            Boolean lambda$new$5;
            lambda$new$5 = RemovedGroup.this.lambda$new$5((TokenRange) obj);
            return lambda$new$5;
        }
    };

    private RemovedGroup(Integer firstElementIndex, List<Removed> removedList) {
        if (firstElementIndex == null) {
            throw new IllegalArgumentException("firstElementIndex should not be null");
        }
        if (removedList == null || removedList.isEmpty()) {
            throw new IllegalArgumentException("removedList should not be null or empty");
        }
        this.firstElementIndex = firstElementIndex;
        this.removedList = removedList;
    }

    private List<Integer> getIndicesBeingRemoved() {
        return (List) IntStream.range(this.firstElementIndex.intValue(), this.firstElementIndex.intValue() + this.removedList.size()).boxed().collect(Collectors.toList());
    }

    private boolean hasOnlyWhiteSpaceForTokenFunction(JavaToken token, Function<JavaToken, Optional<JavaToken>> tokenFunction) {
        Optional<JavaToken> apply = tokenFunction.apply(token);
        if (apply.isPresent()) {
            return TokenTypes.isWhitespaceButNotEndOfLine(apply.get().getKind()) ? hasOnlyWhiteSpaceForTokenFunction(apply.get(), tokenFunction) : TokenTypes.isEndOfLineToken(apply.get().getKind());
        }
        return true;
    }

    private boolean hasOnlyWhitespace(Removed startElement, Function<TokenRange, Boolean> hasOnlyWhitespaceFunction) {
        if (!startElement.isChild()) {
            return startElement.isToken() && ((CsmToken) startElement.getElement()).isNewLine();
        }
        Optional<TokenRange> tokenRange = ((LexicalDifferenceCalculator.CsmChild) startElement.getElement()).getChild().getTokenRange();
        if (tokenRange.isPresent()) {
            return hasOnlyWhitespaceFunction.apply(tokenRange.get()).booleanValue();
        }
        return false;
    }

    public Boolean lambda$new$1(JavaToken begin) {
        return Boolean.valueOf(hasOnlyWhiteSpaceForTokenFunction(begin, new Function() {
            @Override
            public final Object apply(Object obj) {
                Optional previousToken;
                previousToken = ((JavaToken) obj).getPreviousToken();
                return previousToken;
            }
        }));
    }

    public Boolean lambda$new$3(JavaToken end) {
        return Boolean.valueOf(hasOnlyWhiteSpaceForTokenFunction(end, new Function() {
            @Override
            public final Object apply(Object obj) {
                Optional nextToken;
                nextToken = ((JavaToken) obj).getNextToken();
                return nextToken;
            }
        }));
    }

    public Boolean lambda$new$4(TokenRange tokenRange) {
        return this.hasOnlyWhitespaceJavaTokenInFrontFunction.apply(tokenRange.getBegin());
    }

    public Boolean lambda$new$5(TokenRange tokenRange) {
        return this.hasOnlyWhitespaceJavaTokenBehindFunction.apply(tokenRange.getEnd());
    }

    public static RemovedGroup of(Integer firstElementIndex, List<Removed> removedList) {
        return new RemovedGroup(firstElementIndex, removedList);
    }

    public final Removed getFirstElement() {
        return this.removedList.get(0);
    }

    public final Optional<Integer> getIndentation() {
        Iterator<Removed> it = iterator();
        Removed removed = null;
        while (it.hasNext()) {
            removed = it.next();
            if (!removed.isNewLine()) {
                break;
            }
        }
        if (removed.isChild()) {
            Optional<TokenRange> tokenRange = ((LexicalDifferenceCalculator.CsmChild) removed.getElement()).getChild().getTokenRange();
            if (tokenRange.isPresent()) {
                JavaToken begin = tokenRange.get().getBegin();
                if (this.hasOnlyWhitespaceJavaTokenInFrontFunction.apply(begin).booleanValue()) {
                    Optional<JavaToken> previousToken = begin.getPreviousToken();
                    int i10 = 0;
                    while (previousToken.isPresent() && TokenTypes.isWhitespaceButNotEndOfLine(previousToken.get().getKind())) {
                        i10++;
                        previousToken = previousToken.get().getPreviousToken();
                    }
                    if (previousToken.isPresent() && !TokenTypes.isEndOfLineToken(previousToken.get().getKind())) {
                        return Optional.empty();
                    }
                    return Optional.of(Integer.valueOf(i10));
                }
            }
        }
        return Optional.empty();
    }

    public final Removed getLastElement() {
        return this.removedList.get(r0.size() - 1);
    }

    public final Integer getLastElementIndex() {
        return getIndicesBeingRemoved().get(r0.size() - 1);
    }

    public final boolean isACompleteLine() {
        return hasOnlyWhitespace(getFirstElement(), this.hasOnlyWhitespaceInFrontFunction) && hasOnlyWhitespace(getLastElement(), this.hasOnlyWhitespaceBehindFunction);
    }

    public final boolean isLastElement(Removed element) {
        return getLastElement().equals(element);
    }

    public final boolean isProcessed() {
        return this.isProcessed;
    }

    @Override
    public final Iterator<Removed> iterator() {
        return new Iterator<Removed>() {
            private int currentIndex = 0;

            @Override
            public boolean hasNext() {
                return this.currentIndex < RemovedGroup.this.removedList.size() && RemovedGroup.this.removedList.get(this.currentIndex) != null;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public Removed next() {
                List list = RemovedGroup.this.removedList;
                int i10 = this.currentIndex;
                this.currentIndex = i10 + 1;
                return (Removed) list.get(i10);
            }
        };
    }

    public final void processed() {
        this.isProcessed = true;
    }
}
