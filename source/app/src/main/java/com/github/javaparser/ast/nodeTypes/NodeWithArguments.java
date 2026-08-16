package com.github.javaparser.ast.nodeTypes;

import com.github.javaparser.StaticJavaParser;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.Expression;
import java.util.function.Function;

public interface NodeWithArguments<N extends Node> {
    static Expression lambda$getArgumentPosition$0(Expression expr) {
        return expr;
    }

    default N addArgument(String arg) {
        return addArgument(StaticJavaParser.parseExpression(arg));
    }

    default Expression getArgument(int i10) {
        return getArguments().get(i10);
    }

    default int getArgumentPosition(Expression argument) {
        return getArgumentPosition(argument, new Function() {
            @Override
            public final Object apply(Object obj) {
                Expression lambda$getArgumentPosition$0;
                lambda$getArgumentPosition$0 = NodeWithArguments.lambda$getArgumentPosition$0((Expression) obj);
                return lambda$getArgumentPosition$0;
            }
        });
    }

    NodeList<Expression> getArguments();

    default N setArgument(int i10, Expression arg) {
        getArguments().set(i10, (int) arg);
        return (N) this;
    }

    N setArguments(NodeList<Expression> arguments);

    default N addArgument(Expression arg) {
        getArguments().add((NodeList<Expression>) arg);
        return (N) this;
    }

    default int getArgumentPosition(Expression argument, Function<Expression, Expression> converter) {
        if (argument != null) {
            for (int i10 = 0; i10 < getArguments().size(); i10++) {
                if (converter.apply(getArguments().get(i10)) == argument) {
                    return i10;
                }
            }
            throw new IllegalStateException();
        }
        throw new IllegalStateException();
    }
}
