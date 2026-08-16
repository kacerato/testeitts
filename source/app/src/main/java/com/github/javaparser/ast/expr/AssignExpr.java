package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.expr.BinaryExpr;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.AssignExprMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.printer.Stringable;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class AssignExpr extends Expression {
    private Operator operator;
    private Expression target;
    private Expression value;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$github$javaparser$ast$expr$AssignExpr$Operator;

        static {
            int[] iArr = new int[Operator.values().length];
            $SwitchMap$com$github$javaparser$ast$expr$AssignExpr$Operator = iArr;
            try {
                iArr[Operator.PLUS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$expr$AssignExpr$Operator[Operator.MINUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$expr$AssignExpr$Operator[Operator.MULTIPLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$expr$AssignExpr$Operator[Operator.DIVIDE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$expr$AssignExpr$Operator[Operator.BINARY_AND.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$expr$AssignExpr$Operator[Operator.BINARY_OR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$expr$AssignExpr$Operator[Operator.XOR.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$expr$AssignExpr$Operator[Operator.REMAINDER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$expr$AssignExpr$Operator[Operator.LEFT_SHIFT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$expr$AssignExpr$Operator[Operator.SIGNED_RIGHT_SHIFT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$expr$AssignExpr$Operator[Operator.UNSIGNED_RIGHT_SHIFT.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public enum Operator implements Stringable {
        ASSIGN("="),
        PLUS("+="),
        MINUS("-="),
        MULTIPLY("*="),
        DIVIDE("/="),
        BINARY_AND("&="),
        BINARY_OR("|="),
        XOR("^="),
        REMAINDER("%="),
        LEFT_SHIFT("<<="),
        SIGNED_RIGHT_SHIFT(">>="),
        UNSIGNED_RIGHT_SHIFT(">>>=");

        private final String codeRepresentation;

        Operator(String codeRepresentation) {
            this.codeRepresentation = codeRepresentation;
        }

        @Override
        public String asString() {
            return this.codeRepresentation;
        }

        public Optional<BinaryExpr.Operator> toBinaryOperator() {
            switch (AnonymousClass1.$SwitchMap$com$github$javaparser$ast$expr$AssignExpr$Operator[ordinal()]) {
                case 1:
                    return Optional.of(BinaryExpr.Operator.PLUS);
                case 2:
                    return Optional.of(BinaryExpr.Operator.MINUS);
                case 3:
                    return Optional.of(BinaryExpr.Operator.MULTIPLY);
                case 4:
                    return Optional.of(BinaryExpr.Operator.DIVIDE);
                case 5:
                    return Optional.of(BinaryExpr.Operator.BINARY_AND);
                case 6:
                    return Optional.of(BinaryExpr.Operator.BINARY_OR);
                case 7:
                    return Optional.of(BinaryExpr.Operator.XOR);
                case 8:
                    return Optional.of(BinaryExpr.Operator.REMAINDER);
                case 9:
                    return Optional.of(BinaryExpr.Operator.LEFT_SHIFT);
                case 10:
                    return Optional.of(BinaryExpr.Operator.SIGNED_RIGHT_SHIFT);
                case 11:
                    return Optional.of(BinaryExpr.Operator.UNSIGNED_RIGHT_SHIFT);
                default:
                    return Optional.empty();
            }
        }
    }

    public AssignExpr() {
        this(null, new NameExpr(), new StringLiteralExpr(), Operator.ASSIGN);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (AssignExpr) arg);
    }

    @Override
    public AssignExpr asAssignExpr() {
        return this;
    }

    public Operator getOperator() {
        return this.operator;
    }

    public Expression getTarget() {
        return this.target;
    }

    public Expression getValue() {
        return this.value;
    }

    @Override
    public void ifAssignExpr(Consumer<AssignExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isAssignExpr() {
        return true;
    }

    @Override
    public boolean isAssignmentContext() {
        return true;
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node == this.target) {
            setTarget((Expression) replacementNode);
            return true;
        }
        if (node != this.value) {
            return super.replace(node, replacementNode);
        }
        setValue((Expression) replacementNode);
        return true;
    }

    public AssignExpr setOperator(final Operator operator) {
        Utils.assertNotNull(operator);
        Operator operator2 = this.operator;
        if (operator == operator2) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.OPERATOR, operator2, operator);
        this.operator = operator;
        return this;
    }

    public AssignExpr setTarget(final Expression target) {
        Utils.assertNotNull(target);
        Expression expression = this.target;
        if (target == expression) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.TARGET, expression, target);
        Expression expression2 = this.target;
        if (expression2 != null) {
            expression2.setParentNode((Node) null);
        }
        this.target = target;
        setAsParentNodeOf(target);
        return this;
    }

    public AssignExpr setValue(final Expression value) {
        Utils.assertNotNull(value);
        Expression expression = this.value;
        if (value == expression) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.VALUE, expression, value);
        Expression expression2 = this.value;
        if (expression2 != null) {
            expression2.setParentNode((Node) null);
        }
        this.value = value;
        setAsParentNodeOf(value);
        return this;
    }

    @Override
    public Optional<AssignExpr> toAssignExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public AssignExpr(Expression target, Expression value, Operator operator) {
        this(null, target, value, operator);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (AssignExpr) arg);
    }

    public AssignExpr(TokenRange tokenRange, Expression target, Expression value, Operator operator) {
        super(tokenRange);
        setTarget(target);
        setValue(value);
        setOperator(operator);
        customInitialization();
    }

    @Override
    public AssignExprMetaModel getMetaModel() {
        return JavaParserMetaModel.assignExprMetaModel;
    }

    @Override
    public AssignExpr mo1220clone() {
        return (AssignExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
