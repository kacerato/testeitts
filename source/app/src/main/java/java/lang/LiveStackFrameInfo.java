package java.lang;

import java.lang.LiveStackFrame;

final class LiveStackFrameInfo extends StackFrameInfo implements LiveStackFrame {
    private static Object[] EMPTY_ARRAY = new Object[0];
    private static final int MODE_INTERPRETED = 1;
    private static final int MODE_COMPILED = 2;
    private Object[] monitors;
    private Object[] locals;
    private Object[] operands;
    private int mode;

    LiveStackFrameInfo(StackWalker walker) {
        super(walker);
        this.monitors = EMPTY_ARRAY;
        this.locals = EMPTY_ARRAY;
        this.operands = EMPTY_ARRAY;
        this.mode = 0;
    }

    @Override
    public Object[] getMonitors() {
        return this.monitors;
    }

    @Override
    public Object[] getLocals() {
        return this.locals;
    }

    @Override
    public Object[] getStack() {
        return this.operands;
    }

    @Override
    public String toString() {
        StringBuilder retVal = new StringBuilder(super.toString());
        if (this.mode != 0) {
            retVal.append("(");
            if ((this.mode & 1) == 1) {
                retVal.append(" interpreted ");
            }
            if ((this.mode & 2) == 2) {
                retVal.append(" compiled ");
            }
            retVal.append(")");
        }
        return retVal.toString();
    }

    static LiveStackFrame.PrimitiveSlot asPrimitive(int value) {
        return new PrimitiveSlot32(value);
    }

    static LiveStackFrame.PrimitiveSlot asPrimitive(long value) {
        return new PrimitiveSlot64(value);
    }

    private static class PrimitiveSlot32 extends LiveStackFrame.PrimitiveSlot {
        final int value;

        PrimitiveSlot32(int value) {
            this.value = value;
        }

        @Override
        public int size() {
            return 4;
        }

        @Override
        public int intValue() {
            return this.value;
        }

        public String toString() {
            return String.valueOf(this.value);
        }
    }

    private static class PrimitiveSlot64 extends LiveStackFrame.PrimitiveSlot {
        final long value;

        PrimitiveSlot64(long value) {
            this.value = value;
        }

        @Override
        public int size() {
            return 8;
        }

        @Override
        public long longValue() {
            return this.value;
        }

        public String toString() {
            return String.valueOf(this.value);
        }
    }
}
