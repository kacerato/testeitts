package org.eclipse.jdt.internal.compiler.ast;

public enum ExpressionContext {
    ASSIGNMENT_CONTEXT {
        @Override
        public boolean definesTargetType() {
            return true;
        }

        @Override
        public String toString() {
            return "assignment context";
        }
    },
    INVOCATION_CONTEXT {
        @Override
        public boolean definesTargetType() {
            return true;
        }

        @Override
        public String toString() {
            return "invocation context";
        }
    },
    CASTING_CONTEXT {
        @Override
        public boolean definesTargetType() {
            return false;
        }

        @Override
        public String toString() {
            return "casting context";
        }
    },
    VANILLA_CONTEXT {
        @Override
        public boolean definesTargetType() {
            return false;
        }

        @Override
        public String toString() {
            return "vanilla context";
        }
    };

    public static ExpressionContext[] valuesCustom() {
        ExpressionContext[] valuesCustom = values();
        int length = valuesCustom.length;
        ExpressionContext[] expressionContextArr = new ExpressionContext[length];
        System.arraycopy(valuesCustom, 0, expressionContextArr, 0, length);
        return expressionContextArr;
    }

    public abstract boolean definesTargetType();

    ExpressionContext(ExpressionContext expressionContext) {
        this();
    }
}
