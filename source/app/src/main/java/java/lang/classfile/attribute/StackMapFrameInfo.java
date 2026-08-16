package java.lang.classfile.attribute;

import java.lang.classfile.Label;
import java.lang.classfile.constantpool.ClassEntry;
import java.lang.constant.ClassDesc;
import java.util.List;
import jdk.internal.classfile.impl.StackMapDecoder;
import jdk.internal.classfile.impl.TemporaryConstantPool;

public interface StackMapFrameInfo {

    public interface VerificationTypeInfo {
        public static final int ITEM_TOP = 0;
        public static final int ITEM_INTEGER = 1;
        public static final int ITEM_FLOAT = 2;
        public static final int ITEM_DOUBLE = 3;
        public static final int ITEM_LONG = 4;
        public static final int ITEM_NULL = 5;
        public static final int ITEM_UNINITIALIZED_THIS = 6;
        public static final int ITEM_OBJECT = 7;
        public static final int ITEM_UNINITIALIZED = 8;

        int tag();
    }

    int frameType();

    Label target();

    List<VerificationTypeInfo> locals();

    List<VerificationTypeInfo> stack();

    static StackMapFrameInfo of(Label target, List<VerificationTypeInfo> locals, List<VerificationTypeInfo> stack) {
        return new StackMapDecoder.StackMapFrameImpl(255, target, locals, stack);
    }

    public enum SimpleVerificationTypeInfo implements VerificationTypeInfo {
        TOP(0),
        INTEGER(1),
        FLOAT(2),
        DOUBLE(3),
        LONG(4),
        NULL(5),
        UNINITIALIZED_THIS(6);

        private final int tag;

        SimpleVerificationTypeInfo(int tag) {
            this.tag = tag;
        }

        @Override
        public int tag() {
            return this.tag;
        }
    }

    public interface ObjectVerificationTypeInfo extends VerificationTypeInfo {
        ClassEntry className();

        static ObjectVerificationTypeInfo of(ClassEntry className) {
            return new StackMapDecoder.ObjectVerificationTypeInfoImpl(className);
        }

        static ObjectVerificationTypeInfo of(ClassDesc classDesc) {
            return of(TemporaryConstantPool.INSTANCE.classEntry(classDesc));
        }

        default ClassDesc classSymbol() {
            return className().asSymbol();
        }
    }

    public interface UninitializedVerificationTypeInfo extends VerificationTypeInfo {
        Label newTarget();

        static UninitializedVerificationTypeInfo of(Label newTarget) {
            return new StackMapDecoder.UninitializedVerificationTypeInfoImpl(newTarget);
        }
    }
}
