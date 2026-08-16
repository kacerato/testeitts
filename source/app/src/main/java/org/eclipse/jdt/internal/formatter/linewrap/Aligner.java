package org.eclipse.jdt.internal.formatter.linewrap;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.OptionalInt;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntUnaryOperator;
import java.util.function.Predicate;
import java.util.function.ToIntFunction;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.Assignment;
import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.BodyDeclaration;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.ExpressionStatement;
import org.eclipse.jdt.core.dom.FieldDeclaration;
import org.eclipse.jdt.core.dom.Statement;
import org.eclipse.jdt.core.dom.VariableDeclarationFragment;
import org.eclipse.jdt.core.dom.VariableDeclarationStatement;
import org.eclipse.jdt.internal.formatter.DefaultCodeFormatterOptions;
import org.eclipse.jdt.internal.formatter.Token;
import org.eclipse.jdt.internal.formatter.TokenManager;
import org.eclipse.jdt.internal.formatter.TokenTraverser;
import org.eclipse.jdt.internal.formatter.linewrap.Aligner;

public class Aligner {
    private final List<List<? extends ASTNode>> alignGroups = new ArrayList();
    private final DefaultCodeFormatterOptions options;

    final TokenManager f102637tm;

    @FunctionalInterface
    public interface AlignIndexFinder<N extends ASTNode> {
        Optional<Integer> findIndex(N n10);
    }

    public class PositionCounter extends TokenTraverser {
        int maxPosition;
        int stoppingIndex;

        public PositionCounter() {
        }

        public int findMaxPosition(int i10, int i11) {
            this.counter = Aligner.this.f102637tm.getPositionInLine(i10);
            this.stoppingIndex = i11;
            this.maxPosition = 0;
            Aligner.this.f102637tm.traverse(i10, this);
            return this.maxPosition;
        }

        @Override
        public boolean token(Token token, int i10) {
            if (i10 == this.stoppingIndex) {
                return false;
            }
            if (getLineBreaksBefore() > 0) {
                this.counter = Aligner.this.f102637tm.getPositionInLine(i10);
            }
            if (token.getAlign() > 0) {
                this.counter = token.getAlign();
            }
            int i11 = this.counter;
            this.counter = i11 + Aligner.this.f102637tm.getLength(token, i11);
            if (isSpaceAfter() && getLineBreaksAfter() == 0) {
                this.counter++;
            }
            this.maxPosition = Math.max(this.maxPosition, this.counter);
            return true;
        }
    }

    public Aligner(TokenManager tokenManager, DefaultCodeFormatterOptions defaultCodeFormatterOptions) {
        this.f102637tm = tokenManager;
        this.options = defaultCodeFormatterOptions;
    }

    private void alignAssignmentStatements(List<Statement> list) {
        List alignGroups = toAlignGroups(list, new Function() {
            @Override
            public final Object apply(Object obj) {
                Optional lambda$11;
                lambda$11 = Aligner.this.lambda$11((ASTNode) obj);
                return lambda$11;
            }
        });
        this.alignGroups.addAll(alignGroups);
        final AlignIndexFinder alignIndexFinder = new AlignIndexFinder() {
            @Override
            public final Optional findIndex(ASTNode aSTNode) {
                Optional lambda$13;
                lambda$13 = Aligner.this.lambda$13((ExpressionStatement) aSTNode);
                return lambda$13;
            }
        };
        alignGroups.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Aligner.this.lambda$14(alignIndexFinder, (List) obj);
            }
        });
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        if (defaultCodeFormatterOptions.align_with_spaces || defaultCodeFormatterOptions.tab_char != 1) {
            Iterator it = alignGroups.iterator();
            while (it.hasNext()) {
                List<Token> list2 = (List) ((List) it.next()).stream().map(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return Aligner.AlignIndexFinder.this.findIndex((ExpressionStatement) obj);
                    }
                }).filter(new C14784h()).map(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        Token lambda$17;
                        lambda$17 = Aligner.this.lambda$17((Optional) obj);
                        return lambda$17;
                    }
                }).collect(Collectors.toList());
                int orElse = list2.stream().mapToInt(new ToIntFunction() {
                    @Override
                    public final int applyAsInt(Object obj) {
                        return ((Token) obj).countChars();
                    }
                }).max().orElse(0);
                for (Token token : list2) {
                    token.setAlign((token.getAlign() + orElse) - token.countChars());
                }
            }
        }
    }

    private void alignDeclarations(List<Statement> list) {
        List alignGroups = toAlignGroups(list, new Function() {
            @Override
            public final Object apply(Object obj) {
                Optional lambda$6;
                lambda$6 = Aligner.this.lambda$6((ASTNode) obj);
                return lambda$6;
            }
        });
        this.alignGroups.addAll(alignGroups);
        final AlignIndexFinder alignIndexFinder = new AlignIndexFinder() {
            @Override
            public final Optional findIndex(ASTNode aSTNode) {
                Optional lambda$7;
                lambda$7 = Aligner.this.lambda$7((VariableDeclarationStatement) aSTNode);
                return lambda$7;
            }
        };
        alignGroups.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Aligner.this.lambda$8(alignIndexFinder, (List) obj);
            }
        });
        final AlignIndexFinder alignIndexFinder2 = new AlignIndexFinder() {
            @Override
            public final Optional findIndex(ASTNode aSTNode) {
                Optional lambda$9;
                lambda$9 = Aligner.this.lambda$9((VariableDeclarationStatement) aSTNode);
                return lambda$9;
            }
        };
        alignGroups.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Aligner.this.lambda$10(alignIndexFinder2, (List) obj);
            }
        });
    }

    public <N extends ASTNode> void lambda$8(List<N> list, final AlignIndexFinder<N> alignIndexFinder) {
        Stream<N> stream = list.stream();
        alignIndexFinder.getClass();
        int[] array = stream.map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return Aligner.AlignIndexFinder.this.findIndex((ASTNode) obj);
            }
        }).filter(new C14784h()).mapToInt(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return ((Integer) ((Optional) obj).get()).intValue();
            }
        }).toArray();
        IntStream of2 = IntStream.of(array);
        final TokenManager tokenManager = this.f102637tm;
        tokenManager.getClass();
        OptionalInt max = of2.map(new IntUnaryOperator() {
            @Override
            public final int applyAsInt(int i10) {
                return TokenManager.this.getPositionInLine(i10);
            }
        }).max();
        if (max.isPresent()) {
            int normalizedAlign = normalizedAlign(max.getAsInt());
            for (int i10 : array) {
                this.f102637tm.get(i10).setAlign(normalizedAlign);
            }
        }
    }

    private boolean areKeptOnOneLine(List<? extends ASTNode> list) {
        return list.stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$5;
                lambda$5 = Aligner.this.lambda$5((ASTNode) obj);
                return lambda$5;
            }
        });
    }

    private Optional<Integer> findAssign(VariableDeclarationFragment variableDeclarationFragment) {
        return Optional.ofNullable(variableDeclarationFragment.getInitializer()).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Integer lambda$21;
                lambda$21 = Aligner.this.lambda$21((Expression) obj);
                return lambda$21;
            }
        });
    }

    private int findFirstTokenInLine(ASTNode aSTNode) {
        if (aSTNode instanceof FieldDeclaration) {
            return this.f102637tm.findFirstTokenInLine(this.f102637tm.firstIndexIn(((FieldDeclaration) aSTNode).getType(), -1));
        }
        if (aSTNode instanceof VariableDeclarationStatement) {
            return this.f102637tm.findFirstTokenInLine(this.f102637tm.firstIndexIn(((VariableDeclarationStatement) aSTNode).getType(), -1));
        }
        if (aSTNode instanceof ExpressionStatement) {
            return this.f102637tm.firstIndexIn(aSTNode, -1);
        }
        throw new IllegalArgumentException(aSTNode.getClass().getName());
    }

    private Optional<Integer> findName(VariableDeclarationFragment variableDeclarationFragment) {
        return Optional.of(Integer.valueOf(this.f102637tm.firstIndexIn(variableDeclarationFragment.getName(), 22)));
    }

    private boolean isNewGroup(ASTNode aSTNode, ASTNode aSTNode2) {
        if (aSTNode2 == null) {
            return true;
        }
        int lastIndexIn = this.f102637tm.lastIndexIn(aSTNode2, -1);
        int firstIndexIn = this.f102637tm.firstIndexIn(aSTNode, -1);
        Token token = this.f102637tm.get(lastIndexIn);
        int i10 = lastIndexIn + 1;
        int i11 = 0;
        while (i10 <= firstIndexIn) {
            Token token2 = this.f102637tm.get(i10);
            i11 += Math.min(this.f102637tm.countLineBreaksBetween(token, token2), this.options.number_of_empty_lines_to_preserve + 1);
            i10++;
            token = token2;
        }
        return i11 > this.options.align_fields_grouping_blank_lines;
    }

    public Optional lambda$0(ASTNode aSTNode) {
        return optionalCast(aSTNode, FieldDeclaration.class);
    }

    public Optional lambda$1(FieldDeclaration fieldDeclaration) {
        return findName((VariableDeclarationFragment) fieldDeclaration.fragments().get(0));
    }

    public Optional lambda$11(ASTNode aSTNode) {
        return optionalCast(aSTNode, ExpressionStatement.class).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$12;
                lambda$12 = Aligner.lambda$12((ExpressionStatement) obj);
                return lambda$12;
            }
        });
    }

    public static boolean lambda$12(ExpressionStatement expressionStatement) {
        return expressionStatement.getExpression() instanceof Assignment;
    }

    public Optional lambda$13(ExpressionStatement expressionStatement) {
        int firstIndexBefore = this.f102637tm.firstIndexBefore(((Assignment) expressionStatement.getExpression()).getRightHandSide(), -1);
        while (this.f102637tm.get(firstIndexBefore).isComment()) {
            firstIndexBefore--;
        }
        return Optional.of(Integer.valueOf(firstIndexBefore));
    }

    public Token lambda$17(Optional optional) {
        return this.f102637tm.get(((Integer) optional.get()).intValue());
    }

    public Integer lambda$21(Expression expression) {
        return Integer.valueOf(this.f102637tm.firstIndexBefore(expression, 72));
    }

    public static boolean lambda$22(List list) {
        return list.size() < 2;
    }

    public Optional lambda$3(FieldDeclaration fieldDeclaration) {
        return findAssign((VariableDeclarationFragment) fieldDeclaration.fragments().get(0));
    }

    public boolean lambda$5(ASTNode aSTNode) {
        return this.f102637tm.firstTokenIn(aSTNode, -1).getLineBreaksBefore() == 0;
    }

    public Optional lambda$6(ASTNode aSTNode) {
        return optionalCast(aSTNode, VariableDeclarationStatement.class);
    }

    public Optional lambda$7(VariableDeclarationStatement variableDeclarationStatement) {
        return findName((VariableDeclarationFragment) variableDeclarationStatement.fragments().get(0));
    }

    public Optional lambda$9(VariableDeclarationStatement variableDeclarationStatement) {
        return findAssign((VariableDeclarationFragment) variableDeclarationStatement.fragments().get(0));
    }

    private int normalizedAlign(int i10) {
        return this.options.align_with_spaces ? i10 : this.f102637tm.toIndent(i10, false);
    }

    private <N extends ASTNode> Optional<N> optionalCast(ASTNode aSTNode, final Class<N> cls) {
        Optional of2 = Optional.of(aSTNode);
        cls.getClass();
        return of2.filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return Class.this.isInstance((ASTNode) obj);
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return (ASTNode) Class.this.cast((ASTNode) obj);
            }
        });
    }

    private <N extends ASTNode> List<List<N>> toAlignGroups(List<? extends ASTNode> list, Function<ASTNode, Optional<N>> function) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        N n10 = null;
        for (ASTNode aSTNode : list) {
            Optional<N> apply = function.apply(aSTNode);
            if (apply.isPresent()) {
                if (isNewGroup(aSTNode, n10)) {
                    arrayList.add(arrayList2);
                    arrayList2 = new ArrayList();
                }
                arrayList2.add(apply.get());
            }
            n10 = apply.orElse(null);
        }
        arrayList.add(arrayList2);
        arrayList.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$22;
                lambda$22 = Aligner.lambda$22((List) obj);
                return lambda$22;
            }
        });
        return arrayList;
    }

    public void alignComments() {
        boolean z10 = this.options.comment_preserve_white_space_between_code_and_line_comments;
        PositionCounter positionCounter = new PositionCounter();
        for (List<? extends ASTNode> list : this.alignGroups) {
            int i10 = 0;
            for (ASTNode aSTNode : list) {
                i10 = Math.max(i10, positionCounter.findMaxPosition(findFirstTokenInLine(aSTNode), this.f102637tm.lastIndexIn(aSTNode, -1) + 1));
            }
            int normalizedAlign = normalizedAlign(i10);
            for (ASTNode aSTNode2 : list) {
                int findFirstTokenInLine = findFirstTokenInLine(aSTNode2);
                int min = Math.min(this.f102637tm.lastIndexIn(aSTNode2, -1), this.f102637tm.size() - 2);
                while (findFirstTokenInLine <= min) {
                    Token token = this.f102637tm.get(findFirstTokenInLine);
                    int i11 = findFirstTokenInLine + 1;
                    Token token2 = this.f102637tm.get(i11);
                    if (token.getLineBreaksAfter() <= 0 && token2.getLineBreaksBefore() <= 0) {
                        int i12 = token2.tokenType;
                        if ((i12 == 1001 && !z10) || (i12 == 1002 && findFirstTokenInLine == min)) {
                            token2.setAlign(normalizedAlign);
                        }
                    } else if (token.tokenType == 1002) {
                        token.setAlign(normalizedAlign);
                    } else if (!z10) {
                        this.f102637tm.addNLSAlignIndex(findFirstTokenInLine, normalizedAlign);
                    }
                    findFirstTokenInLine = i11;
                }
            }
        }
    }

    public void handleAlign(List<BodyDeclaration> list) {
        if (!this.options.align_type_members_on_columns || areKeptOnOneLine(list)) {
            return;
        }
        List alignGroups = toAlignGroups(list, new Function() {
            @Override
            public final Object apply(Object obj) {
                Optional lambda$0;
                lambda$0 = Aligner.this.lambda$0((ASTNode) obj);
                return lambda$0;
            }
        });
        this.alignGroups.addAll(alignGroups);
        final AlignIndexFinder alignIndexFinder = new AlignIndexFinder() {
            @Override
            public final Optional findIndex(ASTNode aSTNode) {
                Optional lambda$1;
                lambda$1 = Aligner.this.lambda$1((FieldDeclaration) aSTNode);
                return lambda$1;
            }
        };
        alignGroups.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Aligner.this.lambda$2(alignIndexFinder, (List) obj);
            }
        });
        final AlignIndexFinder alignIndexFinder2 = new AlignIndexFinder() {
            @Override
            public final Optional findIndex(ASTNode aSTNode) {
                Optional lambda$3;
                lambda$3 = Aligner.this.lambda$3((FieldDeclaration) aSTNode);
                return lambda$3;
            }
        };
        alignGroups.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Aligner.this.lambda$4(alignIndexFinder2, (List) obj);
            }
        });
    }

    public void handleAlign(Block block) {
        List statements = block.statements();
        if (areKeptOnOneLine(statements)) {
            return;
        }
        if (this.options.align_variable_declarations_on_columns) {
            alignDeclarations(statements);
        }
        if (this.options.align_assignment_statements_on_columns) {
            alignAssignmentStatements(statements);
        }
    }
}
