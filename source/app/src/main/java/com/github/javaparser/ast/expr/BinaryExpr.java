package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.expr.AssignExpr;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.BinaryExprMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.printer.Stringable;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class BinaryExpr extends Expression {
    private Expression left;
    private Operator operator;
    private Expression right;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$github$javaparser$ast$expr$BinaryExpr$Operator;

        static {
            int[] iArr = new int[Operator.values().length];
            $SwitchMap$com$github$javaparser$ast$expr$BinaryExpr$Operator = iArr;
            try {
                iArr[Operator.BINARY_OR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$expr$BinaryExpr$Operator[Operator.BINARY_AND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$expr$BinaryExpr$Operator[Operator.XOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$expr$BinaryExpr$Operator[Operator.LEFT_SHIFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$expr$BinaryExpr$Operator[Operator.SIGNED_RIGHT_SHIFT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$expr$BinaryExpr$Operator[Operator.UNSIGNED_RIGHT_SHIFT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$expr$BinaryExpr$Operator[Operator.PLUS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$expr$BinaryExpr$Operator[Operator.MINUS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$expr$BinaryExpr$Operator[Operator.MULTIPLY.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$expr$BinaryExpr$Operator[Operator.DIVIDE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$expr$BinaryExpr$Operator[Operator.REMAINDER.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public enum Operator implements Stringable {
        OR("||"),
        AND("&&"),
        BINARY_OR("|"),
        BINARY_AND("&"),
        XOR("^"),
        EQUALS("=="),
        NOT_EQUALS("!="),
        LESS("<"),
        GREATER(">"),
        LESS_EQUALS("<="),
        GREATER_EQUALS(">="),
        LEFT_SHIFT("<<"),
        SIGNED_RIGHT_SHIFT(">>"),
        UNSIGNED_RIGHT_SHIFT(">>>"),
        PLUS("+"),
        MINUS("-"),
        MULTIPLY("*"),
        DIVIDE("/"),
        REMAINDER(ve.j.f121589a);

        private final String codeRepresentation;

        Operator(String codeRepresentation) {
            this.codeRepresentation = codeRepresentation;
        }

        @Override
        public String asString() {
            return this.codeRepresentation;
        }

        public Optional<AssignExpr.Operator> toAssignOperator() {
            switch (AnonymousClass1.$SwitchMap$com$github$javaparser$ast$expr$BinaryExpr$Operator[ordinal()]) {
                case 1:
                    return Optional.of(AssignExpr.Operator.BINARY_OR);
                case 2:
                    return Optional.of(AssignExpr.Operator.BINARY_AND);
                case 3:
                    return Optional.of(AssignExpr.Operator.XOR);
                case 4:
                    return Optional.of(AssignExpr.Operator.LEFT_SHIFT);
                case 5:
                    return Optional.of(AssignExpr.Operator.SIGNED_RIGHT_SHIFT);
                case 6:
                    return Optional.of(AssignExpr.Operator.UNSIGNED_RIGHT_SHIFT);
                case 7:
                    return Optional.of(AssignExpr.Operator.PLUS);
                case 8:
                    return Optional.of(AssignExpr.Operator.MINUS);
                case 9:
                    return Optional.of(AssignExpr.Operator.MULTIPLY);
                case 10:
                    return Optional.of(AssignExpr.Operator.DIVIDE);
                case 11:
                    return Optional.of(AssignExpr.Operator.REMAINDER);
                default:
                    return Optional.empty();
            }
        }
    }

    public BinaryExpr() {
        this(null, new BooleanLiteralExpr(), new BooleanLiteralExpr(), Operator.EQUALS);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (BinaryExpr) arg);
    }

    @Override
    public BinaryExpr asBinaryExpr() {
        return this;
    }

    public Expression getLeft() {
        return this.left;
    }

    public Operator getOperator() {
        return this.operator;
    }

    public Expression getRight() {
        return this.right;
    }

    @Override
    public void ifBinaryExpr(Consumer<BinaryExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isBinaryExpr() {
        return true;
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node == this.left) {
            setLeft((Expression) replacementNode);
            return true;
        }
        if (node != this.right) {
            return super.replace(node, replacementNode);
        }
        setRight((Expression) replacementNode);
        return true;
    }

    public BinaryExpr setLeft(final Expression left) {
        Utils.assertNotNull(left);
        Expression expression = this.left;
        if (left == expression) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.LEFT, expression, left);
        Expression expression2 = this.left;
        if (expression2 != null) {
            expression2.setParentNode((Node) null);
        }
        this.left = left;
        setAsParentNodeOf(left);
        return this;
    }

    public BinaryExpr setOperator(final Operator operator) {
        Utils.assertNotNull(operator);
        Operator operator2 = this.operator;
        if (operator == operator2) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.OPERATOR, operator2, operator);
        this.operator = operator;
        return this;
    }

    public BinaryExpr setRight(final Expression right) {
        Utils.assertNotNull(right);
        Expression expression = this.right;
        if (right == expression) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.RIGHT, expression, right);
        Expression expression2 = this.right;
        if (expression2 != null) {
            expression2.setParentNode((Node) null);
        }
        this.right = right;
        setAsParentNodeOf(right);
        return this;
    }

    @Override
    public Optional<BinaryExpr> toBinaryExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public BinaryExpr(Expression left, Expression right, Operator operator) {
        this(null, left, right, operator);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (BinaryExpr) arg);
    }

    public BinaryExpr(TokenRange tokenRange, Expression left, Expression right, Operator operator) {
        super(tokenRange);
        setLeft(left);
        setRight(right);
        setOperator(operator);
        customInitialization();
    }

    @Override
    public BinaryExprMetaModel getMetaModel() {
        return JavaParserMetaModel.binaryExprMetaModel;
    }

    @Override
    public BinaryExpr mo1220clone() {
        return (BinaryExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
