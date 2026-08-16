package java.lang.classfile.instruction;

import java.lang.classfile.Label;
import java.lang.classfile.PseudoInstruction;
import jdk.internal.classfile.impl.AbstractPseudoInstruction;

public interface CharacterRange extends PseudoInstruction {
    public static final int FLAG_STATEMENT = 1;
    public static final int FLAG_BLOCK = 2;
    public static final int FLAG_ASSIGNMENT = 4;
    public static final int FLAG_FLOW_CONTROLLER = 8;
    public static final int FLAG_FLOW_TARGET = 16;
    public static final int FLAG_INVOKE = 32;
    public static final int FLAG_CREATE = 64;
    public static final int FLAG_BRANCH_TRUE = 128;
    public static final int FLAG_BRANCH_FALSE = 256;

    Label startScope();

    Label endScope();

    int characterRangeStart();

    int characterRangeEnd();

    int flags();

    static CharacterRange of(Label startScope, Label endScope, int characterRangeStart, int characterRangeEnd, int flags) {
        return new AbstractPseudoInstruction.UnboundCharacterRange(startScope, endScope, characterRangeStart, characterRangeEnd, flags);
    }
}
