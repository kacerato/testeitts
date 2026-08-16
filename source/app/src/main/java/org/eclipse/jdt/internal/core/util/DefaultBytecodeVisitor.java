package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.util.IBytecodeVisitor;
import org.eclipse.jdt.core.util.ICodeAttribute;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IConstantPoolEntry2;
import org.eclipse.jdt.core.util.ILocalVariableAttribute;
import org.eclipse.jdt.core.util.ILocalVariableTableEntry;
import org.eclipse.jdt.core.util.OpcodeStringValues;
import org.eclipse.jdt.internal.core.JavaElement;
import w2.C15883c;

public class DefaultBytecodeVisitor implements IBytecodeVisitor {
    private static final String EMPTY_CLASS_NAME = "\"\"";
    private static final String EMPTY_LOCAL_NAME = "";
    private static final int T_BOOLEAN = 4;
    private static final int T_BYTE = 8;
    private static final int T_CHAR = 5;
    private static final int T_DOUBLE = 7;
    private static final int T_FLOAT = 6;
    private static final int T_INT = 10;
    private static final int T_LONG = 11;
    private static final int T_SHORT = 9;
    private int[] argumentSizes;
    private StringBuffer buffer;
    private int digitNumberForPC;
    private boolean isStatic;
    private String lineSeparator;
    private int localVariableAttributeLength;
    private ILocalVariableTableEntry[] localVariableTableEntries;
    private int mode;
    private char[][] parameterNames;
    private int tabNumber;

    public DefaultBytecodeVisitor(ICodeAttribute iCodeAttribute, char[][] cArr, char[] cArr2, boolean z10, StringBuffer stringBuffer, String str, int i10, int i11) {
        char c10;
        ILocalVariableAttribute localVariableAttribute = iCodeAttribute.getLocalVariableAttribute();
        int localVariableTableLength = localVariableAttribute == null ? 0 : localVariableAttribute.getLocalVariableTableLength();
        this.localVariableAttributeLength = localVariableTableLength;
        if (localVariableTableLength != 0) {
            this.localVariableTableEntries = localVariableAttribute.getLocalVariableTable();
        } else {
            this.localVariableTableEntries = null;
        }
        this.buffer = stringBuffer;
        this.lineSeparator = str;
        this.tabNumber = i10 + 1;
        this.digitNumberForPC = Long.toString(iCodeAttribute.getCodeLength()).length();
        this.mode = i11;
        this.parameterNames = cArr;
        this.isStatic = z10;
        if (cArr != null) {
            char[][] parameterTypes = Signature.getParameterTypes(cArr2);
            int length = parameterTypes.length;
            this.argumentSizes = new int[length];
            for (int i12 = 0; i12 < length; i12++) {
                char[] cArr3 = parameterTypes[i12];
                this.argumentSizes[i12] = (cArr3.length == 1 && ((c10 = cArr3[0]) == 'D' || c10 == 'J')) ? 2 : 1;
            }
        }
    }

    private StringBuffer appendConstantDynamic(StringBuffer stringBuffer, String str, int i10, int i11, IConstantPoolEntry iConstantPoolEntry) {
        stringBuffer.append(Messages.bind(str, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[i10], Integer.toString(i11), Integer.toString(((IConstantPoolEntry2) iConstantPoolEntry).getBootstrapMethodAttributeIndex()), new String(iConstantPoolEntry.getFieldName()), returnClassName(Signature.toCharArray(iConstantPoolEntry.getFieldDescriptor()))}));
        return stringBuffer;
    }

    private StringBuffer appendConstantMethodHandle(StringBuffer stringBuffer, String str, int i10, int i11, IConstantPoolEntry iConstantPoolEntry) {
        IConstantPoolEntry2 iConstantPoolEntry2 = (IConstantPoolEntry2) iConstantPoolEntry;
        stringBuffer.append(Messages.bind(str, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[i10], Integer.toString(i11), Integer.toString(iConstantPoolEntry2.getReferenceKind()), Integer.toString(iConstantPoolEntry2.getReferenceIndex())}));
        return stringBuffer;
    }

    private StringBuffer appendConstantMethodType(StringBuffer stringBuffer, String str, int i10, int i11, IConstantPoolEntry iConstantPoolEntry) {
        stringBuffer.append(Messages.bind(str, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[i10], Integer.toString(i11), new String(iConstantPoolEntry.getMethodDescriptor())}));
        return stringBuffer;
    }

    private void dumpPcNumber(int i10) {
        writeTabs();
        int length = this.digitNumberForPC - (i10 != 0 ? Integer.toString(i10).length() : 1);
        for (int i11 = 0; i11 < length; i11++) {
            this.buffer.append(C15883c.f126249O);
        }
        this.buffer.append(i10);
        this.buffer.append(Messages.disassembler_indentation);
    }

    private String getLocalVariableName(int i10, int i11) {
        return getLocalVariableName(i10, i11, false);
    }

    private boolean isCompact() {
        return (this.mode & 8) != 0;
    }

    private String returnClassName(char[] cArr) {
        int lastIndexOf;
        if (cArr.length == 0) {
            return EMPTY_CLASS_NAME;
        }
        if (isCompact() && (lastIndexOf = CharOperation.lastIndexOf('/', cArr)) != -1) {
            return new String(cArr, lastIndexOf + 1, (cArr.length - lastIndexOf) - 1);
        }
        CharOperation.replace(cArr, '/', '.');
        return new String(cArr);
    }

    private String returnConstantClassName(IConstantPoolEntry iConstantPoolEntry) {
        char[] classInfoName = iConstantPoolEntry.getClassInfoName();
        if (classInfoName.length == 0) {
            return EMPTY_CLASS_NAME;
        }
        if (classInfoName[0] != '[') {
            return returnClassName(classInfoName);
        }
        StringBuffer stringBuffer = new StringBuffer();
        Util.appendTypeSignature(classInfoName, 0, stringBuffer, isCompact());
        return stringBuffer.toString();
    }

    private String returnDeclaringClassName(IConstantPoolEntry iConstantPoolEntry) {
        return returnClassName(iConstantPoolEntry.getClassName());
    }

    private String returnMethodSignature(IConstantPoolEntry iConstantPoolEntry) {
        char[] methodDescriptor = iConstantPoolEntry.getMethodDescriptor();
        CharOperation.replace(methodDescriptor, '$', JavaElement.JEM_IMPORTDECLARATION);
        char[] charArray = Util.toString(iConstantPoolEntry.getClassName(), iConstantPoolEntry.getMethodName(), methodDescriptor, true, isCompact()).toCharArray();
        CharOperation.replace(charArray, JavaElement.JEM_IMPORTDECLARATION, '$');
        return String.valueOf(charArray);
    }

    private void writeExtraTabs(int i10) {
        int i11 = this.tabNumber + i10;
        for (int i12 = 0; i12 < i11; i12++) {
            this.buffer.append(Messages.disassembler_indentation);
        }
    }

    private void writeNewLine() {
        this.buffer.append(this.lineSeparator);
    }

    private void writeTabs() {
        int i10 = this.tabNumber;
        for (int i11 = 0; i11 < i10; i11++) {
            this.buffer.append(Messages.disassembler_indentation);
        }
    }

    @Override
    public void _aaload(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[50]);
        writeNewLine();
    }

    @Override
    public void _aastore(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[83]);
        writeNewLine();
    }

    @Override
    public void _aconst_null(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[1]);
        writeNewLine();
    }

    @Override
    public void _aload(int i10, int i11) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_load, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[25], getLocalVariableName(i10, i11, true)}));
        writeNewLine();
    }

    @Override
    public void _aload_0(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_load, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[42], getLocalVariableName(i10, 0)}));
        writeNewLine();
    }

    @Override
    public void _aload_1(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_load, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[43], getLocalVariableName(i10, 1)}));
        writeNewLine();
    }

    @Override
    public void _aload_2(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_load, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[44], getLocalVariableName(i10, 2)}));
        writeNewLine();
    }

    @Override
    public void _aload_3(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_load, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[45], getLocalVariableName(i10, 3)}));
        writeNewLine();
    }

    @Override
    public void _anewarray(int i10, int i11, IConstantPoolEntry iConstantPoolEntry) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_anewarray, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[189], Integer.toString(i11), returnConstantClassName(iConstantPoolEntry)}));
        writeNewLine();
    }

    @Override
    public void _areturn(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[176]);
        writeNewLine();
    }

    @Override
    public void _arraylength(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[190]);
        writeNewLine();
    }

    @Override
    public void _astore(int i10, int i11) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_store, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[58], getLocalVariableName(i10, i11, true)}));
        writeNewLine();
    }

    @Override
    public void _astore_0(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_store, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[75], getLocalVariableName(i10, 0)}));
        writeNewLine();
    }

    @Override
    public void _astore_1(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_store, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[76], getLocalVariableName(i10, 1)}));
        writeNewLine();
    }

    @Override
    public void _astore_2(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_store, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[77], getLocalVariableName(i10, 2)}));
        writeNewLine();
    }

    @Override
    public void _astore_3(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_store, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[78], getLocalVariableName(i10, 3)}));
        writeNewLine();
    }

    @Override
    public void _athrow(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[191]);
        writeNewLine();
    }

    @Override
    public void _baload(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[51]);
        writeNewLine();
    }

    @Override
    public void _bastore(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[84]);
        writeNewLine();
    }

    @Override
    public void _bipush(int i10, byte b10) {
        dumpPcNumber(i10);
        StringBuffer stringBuffer = this.buffer;
        stringBuffer.append(OpcodeStringValues.BYTECODE_NAMES[16]);
        stringBuffer.append(Messages.disassembler_space);
        stringBuffer.append((int) b10);
        writeNewLine();
    }

    @Override
    public void _breakpoint(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[202]);
        writeNewLine();
    }

    @Override
    public void _caload(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[52]);
        writeNewLine();
    }

    @Override
    public void _castore(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[85]);
        writeNewLine();
    }

    @Override
    public void _checkcast(int i10, int i11, IConstantPoolEntry iConstantPoolEntry) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_checkcast, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[192], Integer.toString(i11), returnConstantClassName(iConstantPoolEntry)}));
        writeNewLine();
    }

    @Override
    public void _d2f(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[144]);
        writeNewLine();
    }

    @Override
    public void _d2i(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[142]);
        writeNewLine();
    }

    @Override
    public void _d2l(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[143]);
        writeNewLine();
    }

    @Override
    public void _dadd(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[99]);
        writeNewLine();
    }

    @Override
    public void _daload(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[49]);
        writeNewLine();
    }

    @Override
    public void _dastore(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[82]);
        writeNewLine();
    }

    @Override
    public void _dcmpg(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[152]);
        writeNewLine();
    }

    @Override
    public void _dcmpl(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[151]);
        writeNewLine();
    }

    @Override
    public void _dconst_0(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[14]);
        writeNewLine();
    }

    @Override
    public void _dconst_1(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[15]);
        writeNewLine();
    }

    @Override
    public void _ddiv(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[111]);
        writeNewLine();
    }

    @Override
    public void _dload(int i10, int i11) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_load, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[24], getLocalVariableName(i10, i11, true)}));
        writeNewLine();
    }

    @Override
    public void _dload_0(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_load, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[38], getLocalVariableName(i10, 0)}));
        writeNewLine();
    }

    @Override
    public void _dload_1(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_load, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[39], getLocalVariableName(i10, 1)}));
        writeNewLine();
    }

    @Override
    public void _dload_2(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_load, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[40], getLocalVariableName(i10, 2)}));
        writeNewLine();
    }

    @Override
    public void _dload_3(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_load, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[41], getLocalVariableName(i10, 3)}));
        writeNewLine();
    }

    @Override
    public void _dmul(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[107]);
        writeNewLine();
    }

    @Override
    public void _dneg(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[119]);
        writeNewLine();
    }

    @Override
    public void _drem(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[115]);
        writeNewLine();
    }

    @Override
    public void _dreturn(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[175]);
        writeNewLine();
    }

    @Override
    public void _dstore(int i10, int i11) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_store, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[57], getLocalVariableName(i10, i11, true)}));
        writeNewLine();
    }

    @Override
    public void _dstore_0(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_store, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[71], getLocalVariableName(i10, 0)}));
        writeNewLine();
    }

    @Override
    public void _dstore_1(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_store, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[72], getLocalVariableName(i10, 1)}));
        writeNewLine();
    }

    @Override
    public void _dstore_2(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_store, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[73], getLocalVariableName(i10, 2)}));
        writeNewLine();
    }

    @Override
    public void _dstore_3(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_store, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[74], getLocalVariableName(i10, 3)}));
        writeNewLine();
    }

    @Override
    public void _dsub(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[103]);
        writeNewLine();
    }

    @Override
    public void _dup(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[89]);
        writeNewLine();
    }

    @Override
    public void _dup2(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[92]);
        writeNewLine();
    }

    @Override
    public void _dup2_x1(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[93]);
        writeNewLine();
    }

    @Override
    public void _dup2_x2(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[94]);
        writeNewLine();
    }

    @Override
    public void _dup_x1(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[90]);
        writeNewLine();
    }

    @Override
    public void _dup_x2(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[91]);
        writeNewLine();
    }

    @Override
    public void _f2d(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[141]);
        writeNewLine();
    }

    @Override
    public void _f2i(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[139]);
        writeNewLine();
    }

    @Override
    public void _f2l(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[140]);
        writeNewLine();
    }

    @Override
    public void _fadd(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[98]);
        writeNewLine();
    }

    @Override
    public void _faload(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[48]);
        writeNewLine();
    }

    @Override
    public void _fastore(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[81]);
        writeNewLine();
    }

    @Override
    public void _fcmpg(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[150]);
        writeNewLine();
    }

    @Override
    public void _fcmpl(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[149]);
        writeNewLine();
    }

    @Override
    public void _fconst_0(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[11]);
        writeNewLine();
    }

    @Override
    public void _fconst_1(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[12]);
        writeNewLine();
    }

    @Override
    public void _fconst_2(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[13]);
        writeNewLine();
    }

    @Override
    public void _fdiv(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[110]);
        writeNewLine();
    }

    @Override
    public void _fload(int i10, int i11) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_load, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[23], getLocalVariableName(i10, i11, true)}));
        writeNewLine();
    }

    @Override
    public void _fload_0(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_load, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[34], getLocalVariableName(i10, 0)}));
        writeNewLine();
    }

    @Override
    public void _fload_1(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_load, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[35], getLocalVariableName(i10, 1)}));
        writeNewLine();
    }

    @Override
    public void _fload_2(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_load, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[36], getLocalVariableName(i10, 2)}));
        writeNewLine();
    }

    @Override
    public void _fload_3(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_load, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[37], getLocalVariableName(i10, 3)}));
        writeNewLine();
    }

    @Override
    public void _fmul(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[106]);
        writeNewLine();
    }

    @Override
    public void _fneg(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[118]);
        writeNewLine();
    }

    @Override
    public void _frem(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[114]);
        writeNewLine();
    }

    @Override
    public void _freturn(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[174]);
        writeNewLine();
    }

    @Override
    public void _fstore(int i10, int i11) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_store, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[56], getLocalVariableName(i10, i11, true)}));
        writeNewLine();
    }

    @Override
    public void _fstore_0(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_store, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[67], getLocalVariableName(i10, 0)}));
        writeNewLine();
    }

    @Override
    public void _fstore_1(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_store, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[68], getLocalVariableName(i10, 1)}));
        writeNewLine();
    }

    @Override
    public void _fstore_2(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_store, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[69], getLocalVariableName(i10, 2)}));
        writeNewLine();
    }

    @Override
    public void _fstore_3(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_store, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[70], getLocalVariableName(i10, 3)}));
        writeNewLine();
    }

    @Override
    public void _fsub(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[102]);
        writeNewLine();
    }

    @Override
    public void _getfield(int i10, int i11, IConstantPoolEntry iConstantPoolEntry) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_getfield, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[180], Integer.toString(i11), returnDeclaringClassName(iConstantPoolEntry), new String(iConstantPoolEntry.getFieldName()), returnClassName(Signature.toCharArray(iConstantPoolEntry.getFieldDescriptor()))}));
        writeNewLine();
    }

    @Override
    public void _getstatic(int i10, int i11, IConstantPoolEntry iConstantPoolEntry) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_getstatic, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[178], Integer.toString(i11), returnDeclaringClassName(iConstantPoolEntry), new String(iConstantPoolEntry.getFieldName()), returnClassName(Signature.toCharArray(iConstantPoolEntry.getFieldDescriptor()))}));
        writeNewLine();
    }

    @Override
    public void _goto(int i10, int i11) {
        dumpPcNumber(i10);
        StringBuffer stringBuffer = this.buffer;
        stringBuffer.append(OpcodeStringValues.BYTECODE_NAMES[167]);
        stringBuffer.append(Messages.disassembler_space);
        stringBuffer.append(i11 + i10);
        writeNewLine();
    }

    @Override
    public void _goto_w(int i10, int i11) {
        dumpPcNumber(i10);
        StringBuffer stringBuffer = this.buffer;
        stringBuffer.append(OpcodeStringValues.BYTECODE_NAMES[200]);
        stringBuffer.append(Messages.disassembler_space);
        stringBuffer.append(i11 + i10);
        writeNewLine();
    }

    @Override
    public void _i2b(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[145]);
        writeNewLine();
    }

    @Override
    public void _i2c(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[146]);
        writeNewLine();
    }

    @Override
    public void _i2d(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[135]);
        writeNewLine();
    }

    @Override
    public void _i2f(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[134]);
        writeNewLine();
    }

    @Override
    public void _i2l(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[133]);
        writeNewLine();
    }

    @Override
    public void _i2s(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[147]);
        writeNewLine();
    }

    @Override
    public void _iadd(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[96]);
        writeNewLine();
    }

    @Override
    public void _iaload(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[46]);
        writeNewLine();
    }

    @Override
    public void _iand(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[126]);
        writeNewLine();
    }

    @Override
    public void _iastore(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[79]);
        writeNewLine();
    }

    @Override
    public void _iconst_0(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[3]);
        writeNewLine();
    }

    @Override
    public void _iconst_1(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[4]);
        writeNewLine();
    }

    @Override
    public void _iconst_2(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[5]);
        writeNewLine();
    }

    @Override
    public void _iconst_3(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[6]);
        writeNewLine();
    }

    @Override
    public void _iconst_4(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[7]);
        writeNewLine();
    }

    @Override
    public void _iconst_5(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[8]);
        writeNewLine();
    }

    @Override
    public void _iconst_m1(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[2]);
        writeNewLine();
    }

    @Override
    public void _idiv(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[108]);
        writeNewLine();
    }

    @Override
    public void _if_acmpeq(int i10, int i11) {
        dumpPcNumber(i10);
        StringBuffer stringBuffer = this.buffer;
        stringBuffer.append(OpcodeStringValues.BYTECODE_NAMES[165]);
        stringBuffer.append(Messages.disassembler_space);
        stringBuffer.append(i11 + i10);
        writeNewLine();
    }

    @Override
    public void _if_acmpne(int i10, int i11) {
        dumpPcNumber(i10);
        StringBuffer stringBuffer = this.buffer;
        stringBuffer.append(OpcodeStringValues.BYTECODE_NAMES[166]);
        stringBuffer.append(Messages.disassembler_space);
        stringBuffer.append(i11 + i10);
        writeNewLine();
    }

    @Override
    public void _if_icmpeq(int i10, int i11) {
        dumpPcNumber(i10);
        StringBuffer stringBuffer = this.buffer;
        stringBuffer.append(OpcodeStringValues.BYTECODE_NAMES[159]);
        stringBuffer.append(Messages.disassembler_space);
        stringBuffer.append(i11 + i10);
        writeNewLine();
    }

    @Override
    public void _if_icmpge(int i10, int i11) {
        dumpPcNumber(i10);
        StringBuffer stringBuffer = this.buffer;
        stringBuffer.append(OpcodeStringValues.BYTECODE_NAMES[162]);
        stringBuffer.append(Messages.disassembler_space);
        stringBuffer.append(i11 + i10);
        writeNewLine();
    }

    @Override
    public void _if_icmpgt(int i10, int i11) {
        dumpPcNumber(i10);
        StringBuffer stringBuffer = this.buffer;
        stringBuffer.append(OpcodeStringValues.BYTECODE_NAMES[163]);
        stringBuffer.append(Messages.disassembler_space);
        stringBuffer.append(i11 + i10);
        writeNewLine();
    }

    @Override
    public void _if_icmple(int i10, int i11) {
        dumpPcNumber(i10);
        StringBuffer stringBuffer = this.buffer;
        stringBuffer.append(OpcodeStringValues.BYTECODE_NAMES[164]);
        stringBuffer.append(Messages.disassembler_space);
        stringBuffer.append(i11 + i10);
        writeNewLine();
    }

    @Override
    public void _if_icmplt(int i10, int i11) {
        dumpPcNumber(i10);
        StringBuffer stringBuffer = this.buffer;
        stringBuffer.append(OpcodeStringValues.BYTECODE_NAMES[161]);
        stringBuffer.append(Messages.disassembler_space);
        stringBuffer.append(i11 + i10);
        writeNewLine();
    }

    @Override
    public void _if_icmpne(int i10, int i11) {
        dumpPcNumber(i10);
        StringBuffer stringBuffer = this.buffer;
        stringBuffer.append(OpcodeStringValues.BYTECODE_NAMES[160]);
        stringBuffer.append(Messages.disassembler_space);
        stringBuffer.append(i11 + i10);
        writeNewLine();
    }

    @Override
    public void _ifeq(int i10, int i11) {
        dumpPcNumber(i10);
        StringBuffer stringBuffer = this.buffer;
        stringBuffer.append(OpcodeStringValues.BYTECODE_NAMES[153]);
        stringBuffer.append(Messages.disassembler_space);
        stringBuffer.append(i11 + i10);
        writeNewLine();
    }

    @Override
    public void _ifge(int i10, int i11) {
        dumpPcNumber(i10);
        StringBuffer stringBuffer = this.buffer;
        stringBuffer.append(OpcodeStringValues.BYTECODE_NAMES[156]);
        stringBuffer.append(Messages.disassembler_space);
        stringBuffer.append(i11 + i10);
        writeNewLine();
    }

    @Override
    public void _ifgt(int i10, int i11) {
        dumpPcNumber(i10);
        StringBuffer stringBuffer = this.buffer;
        stringBuffer.append(OpcodeStringValues.BYTECODE_NAMES[157]);
        stringBuffer.append(Messages.disassembler_space);
        stringBuffer.append(i11 + i10);
        writeNewLine();
    }

    @Override
    public void _ifle(int i10, int i11) {
        dumpPcNumber(i10);
        StringBuffer stringBuffer = this.buffer;
        stringBuffer.append(OpcodeStringValues.BYTECODE_NAMES[158]);
        stringBuffer.append(Messages.disassembler_space);
        stringBuffer.append(i11 + i10);
        writeNewLine();
    }

    @Override
    public void _iflt(int i10, int i11) {
        dumpPcNumber(i10);
        StringBuffer stringBuffer = this.buffer;
        stringBuffer.append(OpcodeStringValues.BYTECODE_NAMES[155]);
        stringBuffer.append(Messages.disassembler_space);
        stringBuffer.append(i11 + i10);
        writeNewLine();
    }

    @Override
    public void _ifne(int i10, int i11) {
        dumpPcNumber(i10);
        StringBuffer stringBuffer = this.buffer;
        stringBuffer.append(OpcodeStringValues.BYTECODE_NAMES[154]);
        stringBuffer.append(Messages.disassembler_space);
        stringBuffer.append(i11 + i10);
        writeNewLine();
    }

    @Override
    public void _ifnonnull(int i10, int i11) {
        dumpPcNumber(i10);
        StringBuffer stringBuffer = this.buffer;
        stringBuffer.append(OpcodeStringValues.BYTECODE_NAMES[199]);
        stringBuffer.append(Messages.disassembler_space);
        stringBuffer.append(i11 + i10);
        writeNewLine();
    }

    @Override
    public void _ifnull(int i10, int i11) {
        dumpPcNumber(i10);
        StringBuffer stringBuffer = this.buffer;
        stringBuffer.append(OpcodeStringValues.BYTECODE_NAMES[198]);
        stringBuffer.append(Messages.disassembler_space);
        stringBuffer.append(i11 + i10);
        writeNewLine();
    }

    @Override
    public void _iinc(int i10, int i11, int i12) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_iinc, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[132], Integer.toString(i11), Integer.toString(i12), getLocalVariableName(i10, i11, false)}));
        writeNewLine();
    }

    @Override
    public void _iload(int i10, int i11) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_load, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[21], getLocalVariableName(i10, i11, true)}));
        writeNewLine();
    }

    @Override
    public void _iload_0(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_load, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[26], getLocalVariableName(i10, 0)}));
        writeNewLine();
    }

    @Override
    public void _iload_1(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_load, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[27], getLocalVariableName(i10, 1)}));
        writeNewLine();
    }

    @Override
    public void _iload_2(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_load, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[28], getLocalVariableName(i10, 2)}));
        writeNewLine();
    }

    @Override
    public void _iload_3(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_load, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[29], getLocalVariableName(i10, 3)}));
        writeNewLine();
    }

    @Override
    public void _impdep1(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[254]);
        writeNewLine();
    }

    @Override
    public void _impdep2(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[255]);
        writeNewLine();
    }

    @Override
    public void _imul(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[104]);
        writeNewLine();
    }

    @Override
    public void _ineg(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[116]);
        writeNewLine();
    }

    @Override
    public void _instanceof(int i10, int i11, IConstantPoolEntry iConstantPoolEntry) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_instanceof, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[193], Integer.toString(i11), returnConstantClassName(iConstantPoolEntry)}));
        writeNewLine();
    }

    @Override
    public void _invokedynamic(int i10, int i11, IConstantPoolEntry iConstantPoolEntry, IConstantPoolEntry iConstantPoolEntry2) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_invokedynamic, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[186], Integer.toString(i11), Util.toString(null, iConstantPoolEntry.getUtf8Value(), iConstantPoolEntry2.getUtf8Value(), true, isCompact())}));
        writeNewLine();
    }

    @Override
    public void _invokeinterface(int i10, int i11, byte b10, IConstantPoolEntry iConstantPoolEntry) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_invokeinterface, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[185], Integer.toString(i11), Integer.toString(b10), Util.toString(iConstantPoolEntry.getClassName(), iConstantPoolEntry.getMethodName(), iConstantPoolEntry.getMethodDescriptor(), true, isCompact())}));
        writeNewLine();
    }

    @Override
    public void _invokespecial(int i10, int i11, IConstantPoolEntry iConstantPoolEntry) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_invokespecial, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[183], Integer.toString(i11), returnMethodSignature(iConstantPoolEntry)}));
        writeNewLine();
    }

    @Override
    public void _invokestatic(int i10, int i11, IConstantPoolEntry iConstantPoolEntry) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_invokestatic, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[184], Integer.toString(i11), returnMethodSignature(iConstantPoolEntry)}));
        writeNewLine();
    }

    @Override
    public void _invokevirtual(int i10, int i11, IConstantPoolEntry iConstantPoolEntry) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_invokevirtual, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[182], Integer.toString(i11), returnMethodSignature(iConstantPoolEntry)}));
        writeNewLine();
    }

    @Override
    public void _ior(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[128]);
        writeNewLine();
    }

    @Override
    public void _irem(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[112]);
        writeNewLine();
    }

    @Override
    public void _ireturn(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[172]);
        writeNewLine();
    }

    @Override
    public void _ishl(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[120]);
        writeNewLine();
    }

    @Override
    public void _ishr(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[122]);
        writeNewLine();
    }

    @Override
    public void _istore(int i10, int i11) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_store, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[54], getLocalVariableName(i10, i11, true)}));
        writeNewLine();
    }

    @Override
    public void _istore_0(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_store, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[59], getLocalVariableName(i10, 0)}));
        writeNewLine();
    }

    @Override
    public void _istore_1(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_store, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[60], getLocalVariableName(i10, 1)}));
        writeNewLine();
    }

    @Override
    public void _istore_2(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_store, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[61], getLocalVariableName(i10, 2)}));
        writeNewLine();
    }

    @Override
    public void _istore_3(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_store, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[62], getLocalVariableName(i10, 3)}));
        writeNewLine();
    }

    @Override
    public void _isub(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[100]);
        writeNewLine();
    }

    @Override
    public void _iushr(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[124]);
        writeNewLine();
    }

    @Override
    public void _ixor(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[130]);
        writeNewLine();
    }

    @Override
    public void _jsr(int i10, int i11) {
        dumpPcNumber(i10);
        StringBuffer stringBuffer = this.buffer;
        stringBuffer.append(OpcodeStringValues.BYTECODE_NAMES[168]);
        stringBuffer.append(Messages.disassembler_space);
        stringBuffer.append(i11 + i10);
        writeNewLine();
    }

    @Override
    public void _jsr_w(int i10, int i11) {
        dumpPcNumber(i10);
        StringBuffer stringBuffer = this.buffer;
        stringBuffer.append(OpcodeStringValues.BYTECODE_NAMES[201]);
        stringBuffer.append(Messages.disassembler_space);
        stringBuffer.append(i11 + i10);
        writeNewLine();
    }

    @Override
    public void _l2d(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[138]);
        writeNewLine();
    }

    @Override
    public void _l2f(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[137]);
        writeNewLine();
    }

    @Override
    public void _l2i(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[136]);
        writeNewLine();
    }

    @Override
    public void _ladd(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[97]);
        writeNewLine();
    }

    @Override
    public void _laload(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[47]);
        writeNewLine();
    }

    @Override
    public void _land(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[127]);
        writeNewLine();
    }

    @Override
    public void _lastore(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[80]);
        writeNewLine();
    }

    @Override
    public void _lcmp(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[148]);
        writeNewLine();
    }

    @Override
    public void _lconst_0(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[9]);
        writeNewLine();
    }

    @Override
    public void _lconst_1(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[10]);
        writeNewLine();
    }

    @Override
    public void _ldc(int i10, int i11, IConstantPoolEntry iConstantPoolEntry) {
        dumpPcNumber(i10);
        int kind = iConstantPoolEntry.getKind();
        if (kind == 3) {
            this.buffer.append(Messages.bind(Messages.classformat_ldc_w_integer, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[18], Integer.toString(i11), Integer.toString(iConstantPoolEntry.getIntegerValue())}));
        } else if (kind == 4) {
            this.buffer.append(Messages.bind(Messages.classformat_ldc_w_float, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[18], Integer.toString(i11), Float.toString(iConstantPoolEntry.getFloatValue())}));
        } else if (kind == 7) {
            this.buffer.append(Messages.bind(Messages.classformat_ldc_w_class, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[18], Integer.toString(i11), returnConstantClassName(iConstantPoolEntry)}));
        } else if (kind != 8) {
            switch (kind) {
                case 15:
                    appendConstantMethodHandle(this.buffer, Messages.classformat_ldc_w_methodhandle, 18, i11, iConstantPoolEntry);
                    break;
                case 16:
                    appendConstantMethodType(this.buffer, Messages.classformat_ldc_w_methodhandle, 18, i11, iConstantPoolEntry);
                    break;
                case 17:
                    appendConstantDynamic(this.buffer, Messages.classformat_ldc_w_dynamic, 18, i11, iConstantPoolEntry);
                    break;
            }
        } else {
            this.buffer.append(Messages.bind(Messages.classformat_ldc_w_string, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[18], Integer.toString(i11), Disassembler.escapeString(iConstantPoolEntry.getStringValue())}));
        }
        writeNewLine();
    }

    @Override
    public void _ldc2_w(int i10, int i11, IConstantPoolEntry iConstantPoolEntry) {
        dumpPcNumber(i10);
        int kind = iConstantPoolEntry.getKind();
        if (kind == 5) {
            this.buffer.append(Messages.bind(Messages.classformat_ldc2_w_long, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[20], Integer.toString(i11), Long.toString(iConstantPoolEntry.getLongValue())}));
        } else if (kind != 6) {
            switch (kind) {
                case 15:
                    appendConstantMethodHandle(this.buffer, Messages.classformat_ldc_w_methodhandle, 20, i11, iConstantPoolEntry);
                    break;
                case 16:
                    appendConstantMethodType(this.buffer, Messages.classformat_ldc_w_methodhandle, 20, i11, iConstantPoolEntry);
                    break;
                case 17:
                    appendConstantDynamic(this.buffer, Messages.classformat_ldc_w_dynamic, 20, i11, iConstantPoolEntry);
                    break;
            }
        } else {
            this.buffer.append(Messages.bind(Messages.classformat_ldc2_w_double, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[20], Integer.toString(i11), Double.toString(iConstantPoolEntry.getDoubleValue())}));
        }
        writeNewLine();
    }

    @Override
    public void _ldc_w(int i10, int i11, IConstantPoolEntry iConstantPoolEntry) {
        dumpPcNumber(i10);
        int kind = iConstantPoolEntry.getKind();
        if (kind == 3) {
            this.buffer.append(Messages.bind(Messages.classformat_ldc_w_integer, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[19], Integer.toString(i11), Integer.toString(iConstantPoolEntry.getIntegerValue())}));
        } else if (kind == 4) {
            this.buffer.append(Messages.bind(Messages.classformat_ldc_w_float, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[19], Integer.toString(i11), Float.toString(iConstantPoolEntry.getFloatValue())}));
        } else if (kind == 7) {
            this.buffer.append(Messages.bind(Messages.classformat_ldc_w_class, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[19], Integer.toString(i11), returnConstantClassName(iConstantPoolEntry)}));
        } else if (kind == 8) {
            this.buffer.append(Messages.bind(Messages.classformat_ldc_w_string, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[19], Integer.toString(i11), Disassembler.escapeString(iConstantPoolEntry.getStringValue())}));
        } else if (kind == 15) {
            appendConstantMethodHandle(this.buffer, Messages.classformat_ldc_w_methodhandle, 19, i11, iConstantPoolEntry);
        } else if (kind == 16) {
            appendConstantMethodType(this.buffer, Messages.classformat_ldc_w_methodhandle, 19, i11, iConstantPoolEntry);
        }
        writeNewLine();
    }

    @Override
    public void _ldiv(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[109]);
        writeNewLine();
    }

    @Override
    public void _lload(int i10, int i11) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_load, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[22], getLocalVariableName(i10, i11, true)}));
        writeNewLine();
    }

    @Override
    public void _lload_0(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_load, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[30], getLocalVariableName(i10, 0)}));
        writeNewLine();
    }

    @Override
    public void _lload_1(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_load, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[31], getLocalVariableName(i10, 1)}));
        writeNewLine();
    }

    @Override
    public void _lload_2(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_load, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[32], getLocalVariableName(i10, 2)}));
        writeNewLine();
    }

    @Override
    public void _lload_3(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_load, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[33], getLocalVariableName(i10, 3)}));
        writeNewLine();
    }

    @Override
    public void _lmul(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[105]);
        writeNewLine();
    }

    @Override
    public void _lneg(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[117]);
        writeNewLine();
    }

    @Override
    public void _lookupswitch(int i10, int i11, int i12, int[][] iArr) {
        dumpPcNumber(i10);
        StringBuffer stringBuffer = this.buffer;
        stringBuffer.append(OpcodeStringValues.BYTECODE_NAMES[171]);
        stringBuffer.append(" default: ");
        stringBuffer.append(i11 + i10);
        writeNewLine();
        for (int i13 = 0; i13 < i12; i13++) {
            writeExtraTabs(3);
            StringBuffer stringBuffer2 = this.buffer;
            stringBuffer2.append("case ");
            stringBuffer2.append(iArr[i13][0]);
            stringBuffer2.append(": ");
            stringBuffer2.append(iArr[i13][1] + i10);
            writeNewLine();
        }
    }

    @Override
    public void _lor(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[129]);
        writeNewLine();
    }

    @Override
    public void _lrem(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[113]);
        writeNewLine();
    }

    @Override
    public void _lreturn(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[173]);
        writeNewLine();
    }

    @Override
    public void _lshl(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[121]);
        writeNewLine();
    }

    @Override
    public void _lshr(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[123]);
        writeNewLine();
    }

    @Override
    public void _lstore(int i10, int i11) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_store, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[55], getLocalVariableName(i10, i11, true)}));
        writeNewLine();
    }

    @Override
    public void _lstore_0(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_store, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[63], getLocalVariableName(i10, 0)}));
        writeNewLine();
    }

    @Override
    public void _lstore_1(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_store, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[64], getLocalVariableName(i10, 1)}));
        writeNewLine();
    }

    @Override
    public void _lstore_2(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_store, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[65], getLocalVariableName(i10, 2)}));
        writeNewLine();
    }

    @Override
    public void _lstore_3(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_store, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[66], getLocalVariableName(i10, 3)}));
        writeNewLine();
    }

    @Override
    public void _lsub(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[101]);
        writeNewLine();
    }

    @Override
    public void _lushr(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[125]);
        writeNewLine();
    }

    @Override
    public void _lxor(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[131]);
        writeNewLine();
    }

    @Override
    public void _monitorenter(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[194]);
        writeNewLine();
    }

    @Override
    public void _monitorexit(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[195]);
        writeNewLine();
    }

    @Override
    public void _multianewarray(int i10, int i11, int i12, IConstantPoolEntry iConstantPoolEntry) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_multianewarray, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[197], Integer.toString(i11), returnConstantClassName(iConstantPoolEntry)}));
        writeNewLine();
    }

    @Override
    public void _new(int i10, int i11, IConstantPoolEntry iConstantPoolEntry) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_new, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[187], Integer.toString(i11), returnConstantClassName(iConstantPoolEntry)}));
        writeNewLine();
    }

    @Override
    public void _newarray(int i10, int i11) {
        dumpPcNumber(i10);
        switch (i11) {
            case 4:
                this.buffer.append(Messages.bind(Messages.classformat_newarray_boolean, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[188], Integer.toString(i11)}));
                break;
            case 5:
                this.buffer.append(Messages.bind(Messages.classformat_newarray_char, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[188], Integer.toString(i11)}));
                break;
            case 6:
                this.buffer.append(Messages.bind(Messages.classformat_newarray_float, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[188], Integer.toString(i11)}));
                break;
            case 7:
                this.buffer.append(Messages.bind(Messages.classformat_newarray_double, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[188], Integer.toString(i11)}));
                break;
            case 8:
                this.buffer.append(Messages.bind(Messages.classformat_newarray_byte, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[188], Integer.toString(i11)}));
                break;
            case 9:
                this.buffer.append(Messages.bind(Messages.classformat_newarray_short, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[188], Integer.toString(i11)}));
                break;
            case 10:
                this.buffer.append(Messages.bind(Messages.classformat_newarray_int, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[188], Integer.toString(i11)}));
                break;
            case 11:
                this.buffer.append(Messages.bind(Messages.classformat_newarray_long, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[188], Integer.toString(i11)}));
                break;
        }
        writeNewLine();
    }

    @Override
    public void _nop(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[0]);
        writeNewLine();
    }

    @Override
    public void _pop(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[87]);
        writeNewLine();
    }

    @Override
    public void _pop2(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[88]);
        writeNewLine();
    }

    @Override
    public void _putfield(int i10, int i11, IConstantPoolEntry iConstantPoolEntry) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_putfield, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[181], Integer.toString(i11), returnDeclaringClassName(iConstantPoolEntry), new String(iConstantPoolEntry.getFieldName()), returnClassName(Signature.toCharArray(iConstantPoolEntry.getFieldDescriptor()))}));
        writeNewLine();
    }

    @Override
    public void _putstatic(int i10, int i11, IConstantPoolEntry iConstantPoolEntry) {
        dumpPcNumber(i10);
        this.buffer.append(Messages.bind(Messages.classformat_putstatic, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[179], Integer.toString(i11), returnDeclaringClassName(iConstantPoolEntry), new String(iConstantPoolEntry.getFieldName()), returnClassName(Signature.toCharArray(iConstantPoolEntry.getFieldDescriptor()))}));
        writeNewLine();
    }

    @Override
    public void _ret(int i10, int i11) {
        dumpPcNumber(i10);
        StringBuffer stringBuffer = this.buffer;
        stringBuffer.append(OpcodeStringValues.BYTECODE_NAMES[169]);
        stringBuffer.append(Messages.disassembler_space);
        stringBuffer.append(i11);
        writeNewLine();
    }

    @Override
    public void _return(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[177]);
        writeNewLine();
    }

    @Override
    public void _saload(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[53]);
        writeNewLine();
    }

    @Override
    public void _sastore(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[86]);
        writeNewLine();
    }

    @Override
    public void _sipush(int i10, short s10) {
        dumpPcNumber(i10);
        StringBuffer stringBuffer = this.buffer;
        stringBuffer.append(OpcodeStringValues.BYTECODE_NAMES[17]);
        stringBuffer.append(Messages.disassembler_space);
        stringBuffer.append((int) s10);
        writeNewLine();
    }

    @Override
    public void _swap(int i10) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[95]);
        writeNewLine();
    }

    @Override
    public void _tableswitch(int i10, int i11, int i12, int i13, int[] iArr) {
        dumpPcNumber(i10);
        StringBuffer stringBuffer = this.buffer;
        stringBuffer.append(OpcodeStringValues.BYTECODE_NAMES[170]);
        stringBuffer.append(" default: ");
        stringBuffer.append(i11 + i10);
        writeNewLine();
        for (int i14 = i12; i14 < i13 + 1; i14++) {
            writeExtraTabs(3);
            StringBuffer stringBuffer2 = this.buffer;
            stringBuffer2.append("case ");
            stringBuffer2.append(i14);
            stringBuffer2.append(": ");
            stringBuffer2.append(iArr[i14 - i12] + i10);
            writeNewLine();
        }
    }

    @Override
    public void _wide(int i10, int i11, int i12, int i13) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[196]);
        writeNewLine();
        _iinc(i10 + 1, i12, i13);
    }

    private String getLocalVariableName(int i10, int i11, boolean z10) {
        int i12 = i10 + 1;
        if (i11 != 0 && i11 != 1 && i11 != 2 && i11 != 3) {
            i12 = i11 <= 255 ? i10 + 2 : i10 + 3;
        }
        int i13 = this.localVariableAttributeLength;
        int i14 = 0;
        for (int i15 = 0; i15 < i13; i15++) {
            ILocalVariableTableEntry iLocalVariableTableEntry = this.localVariableTableEntries[i15];
            int startPC = iLocalVariableTableEntry.getStartPC();
            if (iLocalVariableTableEntry.getIndex() == i11 && startPC <= i12 && startPC + iLocalVariableTableEntry.getLength() > i12) {
                StringBuffer stringBuffer = new StringBuffer();
                if (z10) {
                    stringBuffer.append(C15883c.f126249O);
                    stringBuffer.append(i11);
                }
                stringBuffer.append(C15883c.f126249O);
                stringBuffer.append('[');
                stringBuffer.append(iLocalVariableTableEntry.getName());
                stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
                return String.valueOf(stringBuffer);
            }
        }
        if (this.parameterNames != null) {
            if (i11 == 0 && !this.isStatic) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append(C15883c.f126249O);
                stringBuffer2.append('[');
                stringBuffer2.append("this");
                stringBuffer2.append(JavaElement.JEM_TYPE_PARAMETER);
                return String.valueOf(stringBuffer2);
            }
            if (i11 != 0) {
                int i16 = !this.isStatic ? 1 : 0;
                int length = this.argumentSizes.length;
                while (i14 < length && i11 != i16) {
                    i16 += this.argumentSizes[i14];
                    i14++;
                }
            } else {
                i14 = i11;
            }
            char[][] cArr = this.parameterNames;
            if (i14 < cArr.length && cArr[i14] != null) {
                StringBuffer stringBuffer3 = new StringBuffer();
                if (z10) {
                    stringBuffer3.append(C15883c.f126249O);
                    stringBuffer3.append(i11);
                }
                stringBuffer3.append(C15883c.f126249O);
                stringBuffer3.append('[');
                stringBuffer3.append(this.parameterNames[i14]);
                stringBuffer3.append(JavaElement.JEM_TYPE_PARAMETER);
                return String.valueOf(stringBuffer3);
            }
        }
        if (z10) {
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append(C15883c.f126249O);
            stringBuffer4.append(i11);
            return String.valueOf(stringBuffer4);
        }
        return "";
    }

    @Override
    public void _wide(int i10, int i11, int i12) {
        dumpPcNumber(i10);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[196]);
        writeNewLine();
        if (i11 != 169) {
            switch (i11) {
                case 21:
                    _iload(i10 + 1, i12);
                    return;
                case 22:
                    _lload(i10 + 1, i12);
                    return;
                case 23:
                    _fload(i10 + 1, i12);
                    return;
                case 24:
                    _dload(i10 + 1, i12);
                    return;
                case 25:
                    _aload(i10 + 1, i12);
                    return;
                default:
                    switch (i11) {
                        case 54:
                            _istore(i10 + 1, i12);
                            return;
                        case 55:
                            _lstore(i10 + 1, i12);
                            return;
                        case 56:
                            _fstore(i10 + 1, i12);
                            return;
                        case 57:
                            _dstore(i10 + 1, i12);
                            return;
                        case 58:
                            _astore(i10 + 1, i12);
                            return;
                        default:
                            return;
                    }
            }
        }
        _ret(i10 + 1, i12);
    }

    @Override
    public void _invokedynamic(int i10, int i11, IConstantPoolEntry iConstantPoolEntry) {
        dumpPcNumber(i10);
        IConstantPoolEntry2 iConstantPoolEntry2 = (IConstantPoolEntry2) iConstantPoolEntry;
        this.buffer.append(Messages.bind(Messages.classformat_invokedynamic, (Object[]) new String[]{OpcodeStringValues.BYTECODE_NAMES[186], Integer.toString(i11), Integer.toString(iConstantPoolEntry2.getBootstrapMethodAttributeIndex()), Util.toString(null, iConstantPoolEntry2.getMethodName(), iConstantPoolEntry2.getMethodDescriptor(), true, isCompact())}));
        writeNewLine();
    }
}
