package org.eclipse.jdt.core.util;

public interface IBytecodeVisitor {
    void _aaload(int i10);

    void _aastore(int i10);

    void _aconst_null(int i10);

    void _aload(int i10, int i11);

    void _aload_0(int i10);

    void _aload_1(int i10);

    void _aload_2(int i10);

    void _aload_3(int i10);

    void _anewarray(int i10, int i11, IConstantPoolEntry iConstantPoolEntry);

    void _areturn(int i10);

    void _arraylength(int i10);

    void _astore(int i10, int i11);

    void _astore_0(int i10);

    void _astore_1(int i10);

    void _astore_2(int i10);

    void _astore_3(int i10);

    void _athrow(int i10);

    void _baload(int i10);

    void _bastore(int i10);

    void _bipush(int i10, byte b10);

    void _breakpoint(int i10);

    void _caload(int i10);

    void _castore(int i10);

    void _checkcast(int i10, int i11, IConstantPoolEntry iConstantPoolEntry);

    void _d2f(int i10);

    void _d2i(int i10);

    void _d2l(int i10);

    void _dadd(int i10);

    void _daload(int i10);

    void _dastore(int i10);

    void _dcmpg(int i10);

    void _dcmpl(int i10);

    void _dconst_0(int i10);

    void _dconst_1(int i10);

    void _ddiv(int i10);

    void _dload(int i10, int i11);

    void _dload_0(int i10);

    void _dload_1(int i10);

    void _dload_2(int i10);

    void _dload_3(int i10);

    void _dmul(int i10);

    void _dneg(int i10);

    void _drem(int i10);

    void _dreturn(int i10);

    void _dstore(int i10, int i11);

    void _dstore_0(int i10);

    void _dstore_1(int i10);

    void _dstore_2(int i10);

    void _dstore_3(int i10);

    void _dsub(int i10);

    void _dup(int i10);

    void _dup2(int i10);

    void _dup2_x1(int i10);

    void _dup2_x2(int i10);

    void _dup_x1(int i10);

    void _dup_x2(int i10);

    void _f2d(int i10);

    void _f2i(int i10);

    void _f2l(int i10);

    void _fadd(int i10);

    void _faload(int i10);

    void _fastore(int i10);

    void _fcmpg(int i10);

    void _fcmpl(int i10);

    void _fconst_0(int i10);

    void _fconst_1(int i10);

    void _fconst_2(int i10);

    void _fdiv(int i10);

    void _fload(int i10, int i11);

    void _fload_0(int i10);

    void _fload_1(int i10);

    void _fload_2(int i10);

    void _fload_3(int i10);

    void _fmul(int i10);

    void _fneg(int i10);

    void _frem(int i10);

    void _freturn(int i10);

    void _fstore(int i10, int i11);

    void _fstore_0(int i10);

    void _fstore_1(int i10);

    void _fstore_2(int i10);

    void _fstore_3(int i10);

    void _fsub(int i10);

    void _getfield(int i10, int i11, IConstantPoolEntry iConstantPoolEntry);

    void _getstatic(int i10, int i11, IConstantPoolEntry iConstantPoolEntry);

    void _goto(int i10, int i11);

    void _goto_w(int i10, int i11);

    void _i2b(int i10);

    void _i2c(int i10);

    void _i2d(int i10);

    void _i2f(int i10);

    void _i2l(int i10);

    void _i2s(int i10);

    void _iadd(int i10);

    void _iaload(int i10);

    void _iand(int i10);

    void _iastore(int i10);

    void _iconst_0(int i10);

    void _iconst_1(int i10);

    void _iconst_2(int i10);

    void _iconst_3(int i10);

    void _iconst_4(int i10);

    void _iconst_5(int i10);

    void _iconst_m1(int i10);

    void _idiv(int i10);

    void _if_acmpeq(int i10, int i11);

    void _if_acmpne(int i10, int i11);

    void _if_icmpeq(int i10, int i11);

    void _if_icmpge(int i10, int i11);

    void _if_icmpgt(int i10, int i11);

    void _if_icmple(int i10, int i11);

    void _if_icmplt(int i10, int i11);

    void _if_icmpne(int i10, int i11);

    void _ifeq(int i10, int i11);

    void _ifge(int i10, int i11);

    void _ifgt(int i10, int i11);

    void _ifle(int i10, int i11);

    void _iflt(int i10, int i11);

    void _ifne(int i10, int i11);

    void _ifnonnull(int i10, int i11);

    void _ifnull(int i10, int i11);

    void _iinc(int i10, int i11, int i12);

    void _iload(int i10, int i11);

    void _iload_0(int i10);

    void _iload_1(int i10);

    void _iload_2(int i10);

    void _iload_3(int i10);

    void _impdep1(int i10);

    void _impdep2(int i10);

    void _imul(int i10);

    void _ineg(int i10);

    void _instanceof(int i10, int i11, IConstantPoolEntry iConstantPoolEntry);

    void _invokedynamic(int i10, int i11, IConstantPoolEntry iConstantPoolEntry);

    void _invokedynamic(int i10, int i11, IConstantPoolEntry iConstantPoolEntry, IConstantPoolEntry iConstantPoolEntry2);

    void _invokeinterface(int i10, int i11, byte b10, IConstantPoolEntry iConstantPoolEntry);

    void _invokespecial(int i10, int i11, IConstantPoolEntry iConstantPoolEntry);

    void _invokestatic(int i10, int i11, IConstantPoolEntry iConstantPoolEntry);

    void _invokevirtual(int i10, int i11, IConstantPoolEntry iConstantPoolEntry);

    void _ior(int i10);

    void _irem(int i10);

    void _ireturn(int i10);

    void _ishl(int i10);

    void _ishr(int i10);

    void _istore(int i10, int i11);

    void _istore_0(int i10);

    void _istore_1(int i10);

    void _istore_2(int i10);

    void _istore_3(int i10);

    void _isub(int i10);

    void _iushr(int i10);

    void _ixor(int i10);

    void _jsr(int i10, int i11);

    void _jsr_w(int i10, int i11);

    void _l2d(int i10);

    void _l2f(int i10);

    void _l2i(int i10);

    void _ladd(int i10);

    void _laload(int i10);

    void _land(int i10);

    void _lastore(int i10);

    void _lcmp(int i10);

    void _lconst_0(int i10);

    void _lconst_1(int i10);

    void _ldc(int i10, int i11, IConstantPoolEntry iConstantPoolEntry);

    void _ldc2_w(int i10, int i11, IConstantPoolEntry iConstantPoolEntry);

    void _ldc_w(int i10, int i11, IConstantPoolEntry iConstantPoolEntry);

    void _ldiv(int i10);

    void _lload(int i10, int i11);

    void _lload_0(int i10);

    void _lload_1(int i10);

    void _lload_2(int i10);

    void _lload_3(int i10);

    void _lmul(int i10);

    void _lneg(int i10);

    void _lookupswitch(int i10, int i11, int i12, int[][] iArr);

    void _lor(int i10);

    void _lrem(int i10);

    void _lreturn(int i10);

    void _lshl(int i10);

    void _lshr(int i10);

    void _lstore(int i10, int i11);

    void _lstore_0(int i10);

    void _lstore_1(int i10);

    void _lstore_2(int i10);

    void _lstore_3(int i10);

    void _lsub(int i10);

    void _lushr(int i10);

    void _lxor(int i10);

    void _monitorenter(int i10);

    void _monitorexit(int i10);

    void _multianewarray(int i10, int i11, int i12, IConstantPoolEntry iConstantPoolEntry);

    void _new(int i10, int i11, IConstantPoolEntry iConstantPoolEntry);

    void _newarray(int i10, int i11);

    void _nop(int i10);

    void _pop(int i10);

    void _pop2(int i10);

    void _putfield(int i10, int i11, IConstantPoolEntry iConstantPoolEntry);

    void _putstatic(int i10, int i11, IConstantPoolEntry iConstantPoolEntry);

    void _ret(int i10, int i11);

    void _return(int i10);

    void _saload(int i10);

    void _sastore(int i10);

    void _sipush(int i10, short s10);

    void _swap(int i10);

    void _tableswitch(int i10, int i11, int i12, int i13, int[] iArr);

    void _wide(int i10, int i11, int i12);

    void _wide(int i10, int i11, int i12, int i13);
}
