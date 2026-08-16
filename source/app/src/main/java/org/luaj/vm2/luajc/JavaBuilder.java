package org.luaj.vm2.luajc;

import T5.b;
import android.provider.Telephony;
import android.security.keystore.KeyProperties;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.lang.constant.ConstantDescs;
import java.util.HashMap;
import java.util.Map;
import org.apache.bcel.generic.AASTORE;
import org.apache.bcel.generic.ALOAD;
import org.apache.bcel.generic.ANEWARRAY;
import org.apache.bcel.generic.ASTORE;
import org.apache.bcel.generic.ArrayInstruction;
import org.apache.bcel.generic.ArrayType;
import org.apache.bcel.generic.BasicType;
import org.apache.bcel.generic.BranchInstruction;
import org.apache.bcel.generic.ClassGen;
import org.apache.bcel.generic.CompoundInstruction;
import org.apache.bcel.generic.ConstantPoolGen;
import org.apache.bcel.generic.FieldGen;
import org.apache.bcel.generic.FieldInstruction;
import org.apache.bcel.generic.GOTO;
import org.apache.bcel.generic.IFEQ;
import org.apache.bcel.generic.IFNE;
import org.apache.bcel.generic.Instruction;
import org.apache.bcel.generic.InstructionConstants;
import org.apache.bcel.generic.InstructionFactory;
import org.apache.bcel.generic.InstructionHandle;
import org.apache.bcel.generic.InstructionList;
import org.apache.bcel.generic.InvokeInstruction;
import org.apache.bcel.generic.LocalVariableGen;
import org.apache.bcel.generic.MethodGen;
import org.apache.bcel.generic.ObjectType;
import org.apache.bcel.generic.PUSH;
import org.apache.bcel.generic.Type;
import org.luaj.vm2.Lua;
import org.luaj.vm2.LuaString;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Prototype;

public class JavaBuilder {
    private static final String[][] ARG_NAMES_N;
    private static final Type[] ARG_TYPES_BUFFER;
    private static final Type[] ARG_TYPES_CHARARRAY;
    private static final Type[] ARG_TYPES_DOUBLE;
    private static final Type[] ARG_TYPES_INT;
    private static final Type[] ARG_TYPES_INT_INT;
    private static final Type[] ARG_TYPES_INT_LUAVALUE;
    private static final Type[] ARG_TYPES_INT_VARARGS;
    private static final Type[] ARG_TYPES_LUAVALUE;
    private static final Type[] ARG_TYPES_LUAVALUEARRAY;
    private static final Type[] ARG_TYPES_LUAVALUEARRAY_VARARGS;
    private static final Type[] ARG_TYPES_LUAVALUE_LUAVALUE;
    private static final Type[] ARG_TYPES_LUAVALUE_LUAVALUE_LUAVALUE;
    private static final Type[] ARG_TYPES_LUAVALUE_LUAVALUE_VARARGS;
    private static final Type[] ARG_TYPES_LUAVALUE_STRINGARRAY;
    private static final Type[] ARG_TYPES_LUAVALUE_VARARGS;
    private static final Type[][] ARG_TYPES_N;
    private static final Type[] ARG_TYPES_NONE;
    private static final Type[] ARG_TYPES_STRING;
    private static final Type[] ARG_TYPES_STRINGARRAY;
    private static final Type[] ARG_TYPES_VARARGS;
    public static final int BRANCH_GOTO = 1;
    public static final int BRANCH_IFEQ = 3;
    public static final int BRANCH_IFNE = 2;
    private static final String[] METH_NAME_N;
    private static final String NAME_VARRESULT = "v";
    private static final String PREFIX_CONSTANT = "k";
    private static final String PREFIX_PLAIN_SLOT = "s";
    private static final String PREFIX_UPVALUE = "u";
    private static final String PREFIX_UPVALUE_SLOT = "a";
    private static final ObjectType[] RETURN_TYPE_N;
    private static final String STR_BUFFER;
    private static final String STR_FUNC0;
    private static final String STR_FUNC1;
    private static final String STR_FUNC2;
    private static final String STR_FUNC3;
    private static final String STR_FUNCV;
    private static final String STR_JSEPLATFORM = "org.luaj.vm2.lib.jse.JsePlatform";
    private static final String STR_LUABOOLEAN;
    private static final String STR_LUAINTEGER;
    private static final String STR_LUANUMBER;
    private static final String STR_LUASTRING;
    private static final String STR_LUATABLE;
    private static final String STR_LUAVALUE;
    private static final String STR_STRING;
    private static final String STR_VARARGS;
    private static int SUPERTYPE_VARARGS;
    private static final String[] SUPER_NAME_N;
    private static final ObjectType TYPE_BUFFER;
    private static final ArrayType TYPE_CHARARRAY;
    private static final ArrayType TYPE_LOCALUPVALUE;
    private static final ObjectType TYPE_LUABOOLEAN;
    private static final ObjectType TYPE_LUAINTEGER;
    private static final ObjectType TYPE_LUANUMBER;
    private static final ObjectType TYPE_LUASTRING;
    private static final ObjectType TYPE_LUATABLE;
    private static final ObjectType TYPE_LUAVALUE;
    private static final ObjectType TYPE_STRING;
    private static final ArrayType TYPE_STRINGARRAY;
    private static final ObjectType TYPE_VARARGS;
    static Class class$java$lang$String;
    static Class class$org$luaj$vm2$Buffer;
    static Class class$org$luaj$vm2$LuaBoolean;
    static Class class$org$luaj$vm2$LuaInteger;
    static Class class$org$luaj$vm2$LuaNumber;
    static Class class$org$luaj$vm2$LuaString;
    static Class class$org$luaj$vm2$LuaTable;
    static Class class$org$luaj$vm2$LuaValue;
    static Class class$org$luaj$vm2$Varargs;
    static Class class$org$luaj$vm2$lib$OneArgFunction;
    static Class class$org$luaj$vm2$lib$ThreeArgFunction;
    static Class class$org$luaj$vm2$lib$TwoArgFunction;
    static Class class$org$luaj$vm2$lib$VarArgFunction;
    static Class class$org$luaj$vm2$lib$ZeroArgFunction;
    private InstructionHandle beginningOfLuaInstruction;
    private final InstructionHandle[] branchDestHandles;
    private final BranchInstruction[] branches;

    private final ClassGen f102802cg;
    private final String classname;
    private final ConstantPoolGen cp;
    private final InstructionFactory factory;
    private final InstructionList init;
    private final InstructionHandle[] lastInstrHandles;
    private final InstructionList main;

    private final MethodGen f102803mg;

    private final Prototype f102804p;

    private final ProtoInfo f102805pi;
    private int superclassType;
    private final int[] targets;
    private LocalVariableGen varresult = null;
    private int prev_line = -1;
    private Map plainSlotVars = new HashMap();
    private Map upvalueSlotVars = new HashMap();
    private Map localVarGenBySlot = new HashMap();
    private Map constants = new HashMap();

    static {
        Class cls = class$org$luaj$vm2$Varargs;
        if (cls == null) {
            cls = class$("org.luaj.vm2.Varargs");
            class$org$luaj$vm2$Varargs = cls;
        }
        String name = cls.getName();
        STR_VARARGS = name;
        Class cls2 = class$org$luaj$vm2$LuaValue;
        if (cls2 == null) {
            cls2 = class$("org.luaj.vm2.LuaValue");
            class$org$luaj$vm2$LuaValue = cls2;
        }
        String name2 = cls2.getName();
        STR_LUAVALUE = name2;
        Class cls3 = class$org$luaj$vm2$LuaString;
        if (cls3 == null) {
            cls3 = class$("org.luaj.vm2.LuaString");
            class$org$luaj$vm2$LuaString = cls3;
        }
        String name3 = cls3.getName();
        STR_LUASTRING = name3;
        Class cls4 = class$org$luaj$vm2$LuaInteger;
        if (cls4 == null) {
            cls4 = class$("org.luaj.vm2.LuaInteger");
            class$org$luaj$vm2$LuaInteger = cls4;
        }
        String name4 = cls4.getName();
        STR_LUAINTEGER = name4;
        Class cls5 = class$org$luaj$vm2$LuaNumber;
        if (cls5 == null) {
            cls5 = class$("org.luaj.vm2.LuaNumber");
            class$org$luaj$vm2$LuaNumber = cls5;
        }
        String name5 = cls5.getName();
        STR_LUANUMBER = name5;
        Class cls6 = class$org$luaj$vm2$LuaBoolean;
        if (cls6 == null) {
            cls6 = class$("org.luaj.vm2.LuaBoolean");
            class$org$luaj$vm2$LuaBoolean = cls6;
        }
        String name6 = cls6.getName();
        STR_LUABOOLEAN = name6;
        Class cls7 = class$org$luaj$vm2$LuaTable;
        if (cls7 == null) {
            cls7 = class$("org.luaj.vm2.LuaTable");
            class$org$luaj$vm2$LuaTable = cls7;
        }
        String name7 = cls7.getName();
        STR_LUATABLE = name7;
        Class cls8 = class$org$luaj$vm2$Buffer;
        if (cls8 == null) {
            cls8 = class$("org.luaj.vm2.Buffer");
            class$org$luaj$vm2$Buffer = cls8;
        }
        String name8 = cls8.getName();
        STR_BUFFER = name8;
        Class cls9 = class$java$lang$String;
        if (cls9 == null) {
            cls9 = class$("java.lang.String");
            class$java$lang$String = cls9;
        }
        String name9 = cls9.getName();
        STR_STRING = name9;
        ObjectType objectType = new ObjectType(name);
        TYPE_VARARGS = objectType;
        ObjectType objectType2 = new ObjectType(name2);
        TYPE_LUAVALUE = objectType2;
        TYPE_LUASTRING = new ObjectType(name3);
        TYPE_LUAINTEGER = new ObjectType(name4);
        TYPE_LUANUMBER = new ObjectType(name5);
        TYPE_LUABOOLEAN = new ObjectType(name6);
        TYPE_LUATABLE = new ObjectType(name7);
        Type objectType3 = new ObjectType(name8);
        TYPE_BUFFER = objectType3;
        ObjectType objectType4 = new ObjectType(name9);
        TYPE_STRING = objectType4;
        TYPE_LOCALUPVALUE = new ArrayType(objectType2, 1);
        Type arrayType = new ArrayType(Type.CHAR, 1);
        TYPE_CHARARRAY = arrayType;
        Type arrayType2 = new ArrayType(objectType4, 1);
        TYPE_STRINGARRAY = arrayType2;
        Class cls10 = class$org$luaj$vm2$lib$VarArgFunction;
        if (cls10 == null) {
            cls10 = class$("org.luaj.vm2.lib.VarArgFunction");
            class$org$luaj$vm2$lib$VarArgFunction = cls10;
        }
        String name10 = cls10.getName();
        STR_FUNCV = name10;
        Class cls11 = class$org$luaj$vm2$lib$ZeroArgFunction;
        if (cls11 == null) {
            cls11 = class$("org.luaj.vm2.lib.ZeroArgFunction");
            class$org$luaj$vm2$lib$ZeroArgFunction = cls11;
        }
        String name11 = cls11.getName();
        STR_FUNC0 = name11;
        Class cls12 = class$org$luaj$vm2$lib$OneArgFunction;
        if (cls12 == null) {
            cls12 = class$("org.luaj.vm2.lib.OneArgFunction");
            class$org$luaj$vm2$lib$OneArgFunction = cls12;
        }
        String name12 = cls12.getName();
        STR_FUNC1 = name12;
        Class cls13 = class$org$luaj$vm2$lib$TwoArgFunction;
        if (cls13 == null) {
            cls13 = class$("org.luaj.vm2.lib.TwoArgFunction");
            class$org$luaj$vm2$lib$TwoArgFunction = cls13;
        }
        String name13 = cls13.getName();
        STR_FUNC2 = name13;
        Class cls14 = class$org$luaj$vm2$lib$ThreeArgFunction;
        if (cls14 == null) {
            cls14 = class$("org.luaj.vm2.lib.ThreeArgFunction");
            class$org$luaj$vm2$lib$ThreeArgFunction = cls14;
        }
        String name14 = cls14.getName();
        STR_FUNC3 = name14;
        Type[] typeArr = new Type[0];
        ARG_TYPES_NONE = typeArr;
        ARG_TYPES_INT = new Type[]{Type.INT};
        ARG_TYPES_DOUBLE = new Type[]{Type.DOUBLE};
        ARG_TYPES_STRING = new Type[]{Type.STRING};
        ARG_TYPES_CHARARRAY = new Type[]{arrayType};
        ARG_TYPES_INT_LUAVALUE = new Type[]{Type.INT, objectType2};
        ARG_TYPES_INT_VARARGS = new Type[]{Type.INT, objectType};
        ARG_TYPES_LUAVALUE_VARARGS = new Type[]{objectType2, objectType};
        ARG_TYPES_LUAVALUE_LUAVALUE_VARARGS = new Type[]{objectType2, objectType2, objectType};
        ARG_TYPES_LUAVALUEARRAY = new Type[]{new ArrayType(objectType2, 1)};
        ARG_TYPES_LUAVALUEARRAY_VARARGS = new Type[]{new ArrayType(objectType2, 1), objectType};
        Type[] typeArr2 = {objectType2, objectType2, objectType2};
        ARG_TYPES_LUAVALUE_LUAVALUE_LUAVALUE = typeArr2;
        Type[] typeArr3 = {objectType};
        ARG_TYPES_VARARGS = typeArr3;
        Type[] typeArr4 = {objectType2, objectType2};
        ARG_TYPES_LUAVALUE_LUAVALUE = typeArr4;
        ARG_TYPES_INT_INT = new Type[]{Type.INT, Type.INT};
        Type[] typeArr5 = {objectType2};
        ARG_TYPES_LUAVALUE = typeArr5;
        ARG_TYPES_BUFFER = new Type[]{objectType3};
        ARG_TYPES_STRINGARRAY = new Type[]{arrayType2};
        ARG_TYPES_LUAVALUE_STRINGARRAY = new Type[]{objectType2, arrayType2};
        SUPER_NAME_N = new String[]{name11, name12, name13, name14, name10};
        RETURN_TYPE_N = new ObjectType[]{objectType2, objectType2, objectType2, objectType2, objectType};
        ARG_TYPES_N = new Type[][]{typeArr, typeArr5, typeArr4, typeArr2, typeArr3};
        ARG_NAMES_N = new String[][]{new String[0], new String[]{"arg"}, new String[]{"arg1", "arg2"}, new String[]{"arg1", "arg2", "arg3"}, new String[]{"args"}};
        METH_NAME_N = new String[]{"call", "call", "call", "call", "onInvoke"};
        SUPERTYPE_VARARGS = 4;
    }

    public JavaBuilder(ProtoInfo protoInfo, String str, String str2) {
        this.f102805pi = protoInfo;
        Prototype prototype = protoInfo.prototype;
        this.f102804p = prototype;
        this.classname = str;
        int i10 = prototype.numparams;
        this.superclassType = i10;
        if (prototype.is_vararg != 0 || i10 >= SUPERTYPE_VARARGS) {
            this.superclassType = SUPERTYPE_VARARGS;
        }
        int length = prototype.code.length;
        for (int i11 = 0; i11 < length; i11++) {
            int i12 = this.f102804p.code[i11];
            int GET_OPCODE = Lua.GET_OPCODE(i12);
            if (GET_OPCODE == 30 || (GET_OPCODE == 31 && (Lua.GETARG_B(i12) < 1 || Lua.GETARG_B(i12) > 2))) {
                this.superclassType = SUPERTYPE_VARARGS;
                break;
            }
        }
        ClassGen classGen = new ClassGen(str, SUPER_NAME_N[this.superclassType], str2, 33, (String[]) null);
        this.f102802cg = classGen;
        this.cp = classGen.getConstantPool();
        this.factory = new InstructionFactory(classGen);
        this.init = new InstructionList();
        this.main = new InstructionList();
        for (int i13 = 0; i13 < this.f102804p.upvalues.length; i13++) {
            this.f102802cg.addField(new FieldGen(0, protoInfo.isReadWriteUpvalue(protoInfo.upvals[i13]) ? TYPE_LOCALUPVALUE : TYPE_LUAVALUE, upvalueName(i13), this.cp).getField());
        }
        Type[] typeArr = RETURN_TYPE_N;
        int i14 = this.superclassType;
        this.f102803mg = new MethodGen(17, typeArr[i14], ARG_TYPES_N[i14], ARG_NAMES_N[i14], METH_NAME_N[i14], STR_LUAVALUE, this.main, this.cp);
        initializeSlots();
        int length2 = this.f102804p.code.length;
        this.targets = new int[length2];
        this.branches = new BranchInstruction[length2];
        this.branchDestHandles = new InstructionHandle[length2];
        this.lastInstrHandles = new InstructionHandle[length2];
    }

    private void append(BranchInstruction branchInstruction) {
        conditionalSetBeginningOfLua(this.main.append(branchInstruction));
    }

    public static Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    private void conditionalSetBeginningOfLua(InstructionHandle instructionHandle) {
        if (this.beginningOfLuaInstruction == null) {
            this.beginningOfLuaInstruction = instructionHandle;
        }
    }

    private String createLuaDoubleField(double d10) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(PREFIX_CONSTANT);
        stringBuffer.append(this.constants.size());
        String stringBuffer2 = stringBuffer.toString();
        ObjectType objectType = TYPE_LUAVALUE;
        this.f102802cg.addField(new FieldGen(24, objectType, stringBuffer2, this.cp).getField());
        this.init.append(new PUSH(this.cp, d10));
        this.init.append(this.factory.createInvoke(STR_LUAVALUE, "valueOf", TYPE_LUANUMBER, ARG_TYPES_DOUBLE, (short) 184));
        this.init.append(this.factory.createPutStatic(this.classname, stringBuffer2, objectType));
        return stringBuffer2;
    }

    private String createLuaIntegerField(int i10) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(PREFIX_CONSTANT);
        stringBuffer.append(this.constants.size());
        String stringBuffer2 = stringBuffer.toString();
        ObjectType objectType = TYPE_LUAVALUE;
        this.f102802cg.addField(new FieldGen(24, objectType, stringBuffer2, this.cp).getField());
        this.init.append(new PUSH(this.cp, i10));
        this.init.append(this.factory.createInvoke(STR_LUAVALUE, "valueOf", TYPE_LUAINTEGER, ARG_TYPES_INT, (short) 184));
        this.init.append(this.factory.createPutStatic(this.classname, stringBuffer2, objectType));
        return stringBuffer2;
    }

    private String createLuaStringField(LuaString luaString) {
        InstructionList instructionList;
        InvokeInstruction createInvoke;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(PREFIX_CONSTANT);
        stringBuffer.append(this.constants.size());
        String stringBuffer2 = stringBuffer.toString();
        this.f102802cg.addField(new FieldGen(24, TYPE_LUAVALUE, stringBuffer2, this.cp).getField());
        LuaString checkstring = luaString.checkstring();
        if (checkstring.isValidUtf8()) {
            this.init.append(new PUSH(this.cp, luaString.tojstring()));
            instructionList = this.init;
            createInvoke = this.factory.createInvoke(STR_LUASTRING, "valueOf", TYPE_LUASTRING, ARG_TYPES_STRING, (short) 184);
        } else {
            char[] cArr = new char[checkstring.m_length];
            for (int i10 = 0; i10 < checkstring.m_length; i10++) {
                cArr[i10] = (char) (checkstring.m_bytes[checkstring.m_offset + i10] & 255);
            }
            this.init.append(new PUSH(this.cp, new String(cArr)));
            this.init.append(this.factory.createInvoke(STR_STRING, "toCharArray", TYPE_CHARARRAY, Type.NO_ARGS, (short) 182));
            instructionList = this.init;
            createInvoke = this.factory.createInvoke(STR_LUASTRING, "valueOf", TYPE_LUASTRING, ARG_TYPES_CHARARRAY, (short) 184);
        }
        instructionList.append(createInvoke);
        this.init.append(this.factory.createPutStatic(this.classname, stringBuffer2, TYPE_LUAVALUE));
        return stringBuffer2;
    }

    private int findSlot(int i10, Map map, String str, Type type) {
        Integer valueOf = Integer.valueOf(i10);
        if (map.containsKey(valueOf)) {
            return ((Integer) map.get(valueOf)).intValue();
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append(i10);
        LocalVariableGen addLocalVariable = this.f102803mg.addLocalVariable(stringBuffer.toString(), type, (InstructionHandle) null, (InstructionHandle) null);
        int index = addLocalVariable.getIndex();
        map.put(valueOf, Integer.valueOf(index));
        this.localVarGenBySlot.put(valueOf, addLocalVariable);
        return index;
    }

    private int findSlotIndex(int i10, boolean z10) {
        Map map;
        String str;
        ArrayType arrayType;
        if (z10) {
            map = this.upvalueSlotVars;
            str = PREFIX_UPVALUE_SLOT;
            arrayType = TYPE_LOCALUPVALUE;
        } else {
            map = this.plainSlotVars;
            str = "s";
            arrayType = TYPE_LUAVALUE;
        }
        return findSlot(i10, map, str, arrayType);
    }

    private int getVarresultIndex() {
        if (this.varresult == null) {
            this.varresult = this.f102803mg.addLocalVariable("v", TYPE_VARARGS, (InstructionHandle) null, (InstructionHandle) null);
        }
        return this.varresult.getIndex();
    }

    private void resolveBranches() {
        InstructionHandle[] instructionHandleArr;
        int length = this.f102804p.code.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (this.branches[i10] != null) {
                int i11 = this.targets[i10];
                while (true) {
                    instructionHandleArr = this.branchDestHandles;
                    if (i11 >= instructionHandleArr.length || instructionHandleArr[i11] != null) {
                        break;
                    } else {
                        i11++;
                    }
                }
                if (i11 >= instructionHandleArr.length) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("no target at or after ");
                    stringBuffer.append(this.targets[i10]);
                    stringBuffer.append(" op=");
                    stringBuffer.append(Lua.GET_OPCODE(this.f102804p.code[this.targets[i10]]));
                    throw new IllegalArgumentException(stringBuffer.toString());
                }
                this.branches[i10].setTarget(instructionHandleArr[i11]);
            }
        }
    }

    private static String upvalueName(int i10) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(PREFIX_UPVALUE);
        stringBuffer.append(i10);
        return stringBuffer.toString();
    }

    public void addBranch(int i10, int i11, int i12) {
        if (i11 == 2) {
            this.branches[i10] = new IFNE((InstructionHandle) null);
        } else if (i11 != 3) {
            this.branches[i10] = new GOTO((InstructionHandle) null);
        } else {
            this.branches[i10] = new IFEQ((InstructionHandle) null);
        }
        this.targets[i10] = i12;
        append(this.branches[i10]);
    }

    public void areturn() {
        append((Instruction) InstructionConstants.ARETURN);
    }

    public void arg(int i10) {
        InvokeInstruction createInvoke;
        if (i10 == 1) {
            createInvoke = this.factory.createInvoke(STR_VARARGS, "arg1", TYPE_LUAVALUE, ARG_TYPES_NONE, (short) 182);
        } else {
            append((CompoundInstruction) new PUSH(this.cp, i10));
            createInvoke = this.factory.createInvoke(STR_VARARGS, "arg", TYPE_LUAVALUE, ARG_TYPES_INT, (short) 182);
        }
        append((Instruction) createInvoke);
    }

    public void binaryop(int i10) {
        String str;
        switch (i10) {
            case 14:
                str = Telephony.BaseMmsColumns.SUBJECT;
                break;
            case 15:
                str = "mul";
                break;
            case 16:
                str = "div";
                break;
            case 17:
                str = "mod";
                break;
            case 18:
                str = "pow";
                break;
            default:
                str = "add";
                break;
        }
        append((Instruction) this.factory.createInvoke(STR_LUAVALUE, str, TYPE_LUAVALUE, ARG_TYPES_LUAVALUE, (short) 182));
    }

    public void call(int i10) {
        InvokeInstruction createInvoke;
        if (i10 == 0) {
            createInvoke = this.factory.createInvoke(STR_LUAVALUE, "call", TYPE_LUAVALUE, ARG_TYPES_NONE, (short) 182);
        } else if (i10 == 1) {
            createInvoke = this.factory.createInvoke(STR_LUAVALUE, "call", TYPE_LUAVALUE, ARG_TYPES_LUAVALUE, (short) 182);
        } else if (i10 == 2) {
            createInvoke = this.factory.createInvoke(STR_LUAVALUE, "call", TYPE_LUAVALUE, ARG_TYPES_LUAVALUE_LUAVALUE, (short) 182);
        } else {
            if (i10 != 3) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("can't call with ");
                stringBuffer.append(i10);
                stringBuffer.append(" args");
                throw new IllegalArgumentException(stringBuffer.toString());
            }
            createInvoke = this.factory.createInvoke(STR_LUAVALUE, "call", TYPE_LUAVALUE, ARG_TYPES_LUAVALUE_LUAVALUE_LUAVALUE, (short) 182);
        }
        append((Instruction) createInvoke);
    }

    public void closeUpvalue(int i10, int i11) {
    }

    public void closureCreate(String str) {
        append((Instruction) this.factory.createNew(new ObjectType(str)));
        append((Instruction) InstructionConstants.DUP);
        append((Instruction) this.factory.createInvoke(str, ConstantDescs.INIT_NAME, Type.VOID, Type.NO_ARGS, (short) 183));
    }

    public void closureInitUpvalueFromLocal(String str, int i10, int i11, int i12) {
        ProtoInfo protoInfo = this.f102805pi;
        boolean isReadWriteUpvalue = protoInfo.isReadWriteUpvalue(protoInfo.vars[i12][i11].upvalue);
        ArrayType arrayType = isReadWriteUpvalue ? TYPE_LOCALUPVALUE : TYPE_LUAVALUE;
        String upvalueName = upvalueName(i10);
        append((Instruction) new ALOAD(findSlotIndex(i12, isReadWriteUpvalue)));
        append((Instruction) this.factory.createFieldAccess(str, upvalueName, arrayType, (short) 181));
    }

    public void closureInitUpvalueFromUpvalue(String str, int i10, int i11) {
        ProtoInfo protoInfo = this.f102805pi;
        ArrayType arrayType = protoInfo.isReadWriteUpvalue(protoInfo.upvals[i11]) ? TYPE_LOCALUPVALUE : TYPE_LUAVALUE;
        String upvalueName = upvalueName(i11);
        String upvalueName2 = upvalueName(i10);
        append((Instruction) InstructionConstants.THIS);
        append((Instruction) this.factory.createFieldAccess(this.classname, upvalueName, arrayType, (short) 180));
        append((Instruction) this.factory.createFieldAccess(str, upvalueName2, arrayType, (short) 181));
    }

    public void compareop(int i10) {
        append((Instruction) this.factory.createInvoke(STR_LUAVALUE, i10 != 25 ? i10 != 26 ? "eq_b" : "lteq_b" : "lt_b", Type.BOOLEAN, ARG_TYPES_LUAVALUE, (short) 182));
    }

    public byte[] completeClass(boolean z10) {
        FieldInstruction createFieldAccess;
        if (!this.init.isEmpty()) {
            MethodGen methodGen = new MethodGen(8, Type.VOID, ARG_TYPES_NONE, new String[0], ConstantDescs.CLASS_INIT_NAME, this.f102802cg.getClassName(), this.init, this.f102802cg.getConstantPool());
            this.init.append(InstructionConstants.RETURN);
            methodGen.setMaxStack();
            this.f102802cg.addMethod(methodGen.getMethod());
            this.init.dispose();
        }
        this.f102802cg.addEmptyConstructor(1);
        resolveBranches();
        this.f102803mg.setMaxStack();
        this.f102802cg.addMethod(this.f102803mg.getMethod());
        this.main.dispose();
        if (this.f102804p.upvalues.length == 1 && this.superclassType == SUPERTYPE_VARARGS) {
            BasicType basicType = Type.VOID;
            Type[] typeArr = ARG_TYPES_LUAVALUE;
            MethodGen methodGen2 = new MethodGen(17, basicType, typeArr, new String[]{"env"}, "initupvalue1", STR_LUAVALUE, this.main, this.cp);
            ProtoInfo protoInfo = this.f102805pi;
            boolean isReadWriteUpvalue = protoInfo.isReadWriteUpvalue(protoInfo.upvals[0]);
            append((Instruction) InstructionConstants.THIS);
            append((Instruction) new ALOAD(1));
            if (isReadWriteUpvalue) {
                InstructionFactory instructionFactory = this.factory;
                String str = this.classname;
                ArrayType arrayType = TYPE_LOCALUPVALUE;
                append((Instruction) instructionFactory.createInvoke(str, "newupl", arrayType, typeArr, (short) 184));
                createFieldAccess = this.factory.createFieldAccess(this.classname, upvalueName(0), arrayType, (short) 181);
            } else {
                createFieldAccess = this.factory.createFieldAccess(this.classname, upvalueName(0), TYPE_LUAVALUE, (short) 181);
            }
            append((Instruction) createFieldAccess);
            append((Instruction) InstructionConstants.RETURN);
            methodGen2.setMaxStack();
            this.f102802cg.addMethod(methodGen2.getMethod());
            this.main.dispose();
        }
        if (z10) {
            MethodGen methodGen3 = new MethodGen(9, Type.VOID, ARG_TYPES_STRINGARRAY, new String[]{"arg"}, b.f24045b, this.classname, this.main, this.cp);
            append((Instruction) this.factory.createNew(this.classname));
            append((Instruction) InstructionConstants.DUP);
            append((Instruction) this.factory.createInvoke(this.classname, ConstantDescs.INIT_NAME, Type.VOID, ARG_TYPES_NONE, (short) 183));
            append((Instruction) new ALOAD(0));
            append((Instruction) this.factory.createInvoke(STR_JSEPLATFORM, "luaMain", Type.VOID, ARG_TYPES_LUAVALUE_STRINGARRAY, (short) 184));
            append((Instruction) InstructionConstants.RETURN);
            methodGen3.setMaxStack();
            this.f102802cg.addMethod(methodGen3.getMethod());
            this.main.dispose();
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            this.f102802cg.getJavaClass().dump(byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e10) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("JavaClass.dump() threw ");
            stringBuffer.append((Object) e10);
            throw new RuntimeException(stringBuffer.toString());
        }
    }

    public void concatbuffer() {
        append((Instruction) this.factory.createInvoke(STR_LUAVALUE, "concat", TYPE_BUFFER, ARG_TYPES_BUFFER, (short) 182));
    }

    public void concatvalue() {
        append((Instruction) this.factory.createInvoke(STR_LUAVALUE, "concat", TYPE_LUAVALUE, ARG_TYPES_LUAVALUE, (short) 182));
    }

    public void convertToUpvalue(int i10, int i11) {
        if (this.f102805pi.isUpvalueAssign(i10, i11)) {
            append((Instruction) new ALOAD(findSlotIndex(i11, false)));
            append((Instruction) this.factory.createInvoke(this.classname, "newupl", TYPE_LOCALUPVALUE, ARG_TYPES_LUAVALUE, (short) 184));
            append((Instruction) new ASTORE(findSlotIndex(i11, true)));
        }
    }

    public void createUpvalues(int i10, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = i11 + i13;
            if (this.f102805pi.isUpvalueCreate(i10, i14)) {
                int findSlotIndex = findSlotIndex(i14, true);
                append((Instruction) this.factory.createInvoke(this.classname, "newupn", TYPE_LOCALUPVALUE, ARG_TYPES_NONE, (short) 184));
                append((Instruction) new ASTORE(findSlotIndex));
            }
        }
    }

    public void dup() {
        append((Instruction) InstructionConstants.DUP);
    }

    public void getTable() {
        append((Instruction) this.factory.createInvoke(STR_LUAVALUE, "get", TYPE_LUAVALUE, ARG_TYPES_LUAVALUE, (short) 182));
    }

    public void initializeSlots() {
        int i10 = 0;
        createUpvalues(-1, 0, this.f102804p.maxstacksize);
        if (this.superclassType == SUPERTYPE_VARARGS) {
            while (i10 < this.f102804p.numparams) {
                if (this.f102805pi.isInitialValueUsed(i10)) {
                    append((Instruction) new ALOAD(1));
                    append((CompoundInstruction) new PUSH(this.cp, i10 + 1));
                    append((Instruction) this.factory.createInvoke(STR_VARARGS, "arg", TYPE_LUAVALUE, ARG_TYPES_INT, (short) 182));
                    storeLocal(-1, i10);
                }
                i10++;
            }
            append((Instruction) new ALOAD(1));
            append((CompoundInstruction) new PUSH(this.cp, this.f102804p.numparams + 1));
            append((Instruction) this.factory.createInvoke(STR_VARARGS, "subargs", TYPE_VARARGS, ARG_TYPES_INT, (short) 182));
            append((Instruction) new ASTORE(1));
        } else {
            while (i10 < this.f102804p.numparams) {
                int i11 = i10 + 1;
                this.plainSlotVars.put(Integer.valueOf(i10), Integer.valueOf(i11));
                if (this.f102805pi.isUpvalueCreate(-1, i10)) {
                    append((Instruction) new ALOAD(i11));
                    storeLocal(-1, i10);
                }
                i10 = i11;
            }
        }
        while (i10 < this.f102804p.maxstacksize) {
            if (this.f102805pi.isInitialValueUsed(i10)) {
                loadNil();
                storeLocal(-1, i10);
            }
            i10++;
        }
    }

    public void invoke(int i10) {
        InvokeInstruction createInvoke;
        if (i10 == -1) {
            createInvoke = this.factory.createInvoke(STR_LUAVALUE, "invoke", TYPE_VARARGS, ARG_TYPES_VARARGS, (short) 182);
        } else if (i10 == 0) {
            createInvoke = this.factory.createInvoke(STR_LUAVALUE, "invoke", TYPE_VARARGS, ARG_TYPES_NONE, (short) 182);
        } else if (i10 == 1) {
            createInvoke = this.factory.createInvoke(STR_LUAVALUE, "invoke", TYPE_VARARGS, ARG_TYPES_VARARGS, (short) 182);
        } else if (i10 == 2) {
            createInvoke = this.factory.createInvoke(STR_LUAVALUE, "invoke", TYPE_VARARGS, ARG_TYPES_LUAVALUE_VARARGS, (short) 182);
        } else {
            if (i10 != 3) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("can't invoke with ");
                stringBuffer.append(i10);
                stringBuffer.append(" args");
                throw new IllegalArgumentException(stringBuffer.toString());
            }
            createInvoke = this.factory.createInvoke(STR_LUAVALUE, "invoke", TYPE_VARARGS, ARG_TYPES_LUAVALUE_LUAVALUE_VARARGS, (short) 182);
        }
        append((Instruction) createInvoke);
    }

    public void isNil() {
        append((Instruction) this.factory.createInvoke(STR_LUAVALUE, "isnil", Type.BOOLEAN, Type.NO_ARGS, (short) 182));
    }

    public void loadArrayArgs(int i10, int i11, int i12) {
        append((CompoundInstruction) new PUSH(this.cp, i12));
        append((Instruction) new ANEWARRAY(this.cp.addClass(STR_LUAVALUE)));
        int i13 = 0;
        while (i13 < i12) {
            append((Instruction) InstructionConstants.DUP);
            append((CompoundInstruction) new PUSH(this.cp, i13));
            loadLocal(i10, i11);
            append((Instruction) new AASTORE());
            i13++;
            i11++;
        }
    }

    public void loadBoolean(boolean z10) {
        append((Instruction) this.factory.createFieldAccess(STR_LUAVALUE, z10 ? "TRUE" : "FALSE", TYPE_LUABOOLEAN, (short) 178));
    }

    public void loadConstant(LuaValue luaValue) {
        int type = luaValue.type();
        if (type == 0) {
            loadNil();
            return;
        }
        if (type == 1) {
            loadBoolean(luaValue.toboolean());
            return;
        }
        if (type != 3 && type != 4) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("bad constant type: ");
            stringBuffer.append(luaValue.type());
            throw new IllegalArgumentException(stringBuffer.toString());
        }
        String str = (String) this.constants.get(luaValue);
        if (str == null) {
            str = luaValue.type() == 3 ? luaValue.isinttype() ? createLuaIntegerField(luaValue.checkint()) : createLuaDoubleField(luaValue.checkdouble()) : createLuaStringField(luaValue.checkstring());
            this.constants.put(luaValue, str);
        }
        append((Instruction) this.factory.createGetStatic(this.classname, str, TYPE_LUAVALUE));
    }

    public void loadLocal(int i10, int i11) {
        boolean isUpvalueRefer = this.f102805pi.isUpvalueRefer(i10, i11);
        append((Instruction) new ALOAD(findSlotIndex(i11, isUpvalueRefer)));
        if (isUpvalueRefer) {
            append((CompoundInstruction) new PUSH(this.cp, 0));
            append((Instruction) InstructionConstants.AALOAD);
        }
    }

    public void loadNil() {
        append((Instruction) this.factory.createFieldAccess(STR_LUAVALUE, "NIL", TYPE_LUAVALUE, (short) 178));
    }

    public void loadNone() {
        append((Instruction) this.factory.createFieldAccess(STR_LUAVALUE, KeyProperties.DIGEST_NONE, TYPE_LUAVALUE, (short) 178));
    }

    public void loadUpvalue(int i10) {
        ArrayInstruction createFieldAccess;
        ProtoInfo protoInfo = this.f102805pi;
        boolean isReadWriteUpvalue = protoInfo.isReadWriteUpvalue(protoInfo.upvals[i10]);
        append((Instruction) InstructionConstants.THIS);
        if (isReadWriteUpvalue) {
            append((Instruction) this.factory.createFieldAccess(this.classname, upvalueName(i10), TYPE_LOCALUPVALUE, (short) 180));
            append((CompoundInstruction) new PUSH(this.cp, 0));
            createFieldAccess = InstructionConstants.AALOAD;
        } else {
            createFieldAccess = this.factory.createFieldAccess(this.classname, upvalueName(i10), TYPE_LUAVALUE, (short) 180);
        }
        append((Instruction) createFieldAccess);
    }

    public void loadVarargs() {
        append((Instruction) new ALOAD(1));
    }

    public void loadVarresult() {
        append((Instruction) new ALOAD(getVarresultIndex()));
    }

    public void newTable(int i10, int i11) {
        append((CompoundInstruction) new PUSH(this.cp, i10));
        append((CompoundInstruction) new PUSH(this.cp, i11));
        append((Instruction) this.factory.createInvoke(STR_LUAVALUE, "tableOf", TYPE_LUATABLE, ARG_TYPES_INT_INT, (short) 184));
    }

    public void newTailcallVarargs() {
        append((Instruction) this.factory.createInvoke(STR_LUAVALUE, "tailcallOf", TYPE_VARARGS, ARG_TYPES_LUAVALUE_VARARGS, (short) 184));
    }

    public void newVarargs(int i10, int i11, int i12) {
        InvokeInstruction createInvoke;
        if (i12 == 0) {
            loadNone();
            return;
        }
        if (i12 == 1) {
            loadLocal(i10, i11);
            return;
        }
        if (i12 == 2) {
            loadLocal(i10, i11);
            loadLocal(i10, i11 + 1);
            createInvoke = this.factory.createInvoke(STR_LUAVALUE, "varargsOf", TYPE_VARARGS, ARG_TYPES_LUAVALUE_VARARGS, (short) 184);
        } else if (i12 != 3) {
            loadArrayArgs(i10, i11, i12);
            createInvoke = this.factory.createInvoke(STR_LUAVALUE, "varargsOf", TYPE_VARARGS, ARG_TYPES_LUAVALUEARRAY, (short) 184);
        } else {
            loadLocal(i10, i11);
            loadLocal(i10, i11 + 1);
            loadLocal(i10, i11 + 2);
            createInvoke = this.factory.createInvoke(STR_LUAVALUE, "varargsOf", TYPE_VARARGS, ARG_TYPES_LUAVALUE_LUAVALUE_VARARGS, (short) 184);
        }
        append((Instruction) createInvoke);
    }

    public void newVarargsVarresult(int i10, int i11, int i12) {
        loadArrayArgs(i10, i11, i12);
        loadVarresult();
        append((Instruction) this.factory.createInvoke(STR_LUAVALUE, "varargsOf", TYPE_VARARGS, ARG_TYPES_LUAVALUEARRAY_VARARGS, (short) 184));
    }

    public void onEndOfLuaInstruction(int i10, int i11) {
        this.branchDestHandles[i10] = this.beginningOfLuaInstruction;
        this.lastInstrHandles[i10] = this.main.getEnd();
        if (i11 != this.prev_line) {
            MethodGen methodGen = this.f102803mg;
            InstructionHandle instructionHandle = this.beginningOfLuaInstruction;
            this.prev_line = i11;
            methodGen.addLineNumber(instructionHandle, i11);
        }
        this.beginningOfLuaInstruction = null;
    }

    public void pop() {
        append((Instruction) InstructionConstants.POP);
    }

    public void setTable() {
        append((Instruction) this.factory.createInvoke(STR_LUAVALUE, "set", Type.VOID, ARG_TYPES_LUAVALUE_LUAVALUE, (short) 182));
    }

    public void setVarStartEnd(int i10, int i11, int i12, String str) {
        Integer valueOf = Integer.valueOf(i10);
        if (this.localVarGenBySlot.containsKey(valueOf)) {
            String replaceAll = str.replaceAll("[^a-zA-Z0-9]", ConstantDescs.DEFAULT_NAME);
            LocalVariableGen localVariableGen = (LocalVariableGen) this.localVarGenBySlot.get(valueOf);
            localVariableGen.setEnd(this.lastInstrHandles[i12 - 1]);
            if (i11 > 1) {
                localVariableGen.setStart(this.lastInstrHandles[i11 - 2]);
            }
            localVariableGen.setName(replaceAll);
        }
    }

    public void setlistStack(int i10, int i11, int i12, int i13) {
        for (int i14 = 0; i14 < i13; i14++) {
            dup();
            append((CompoundInstruction) new PUSH(this.cp, i12 + i14));
            loadLocal(i10, i11 + i14);
            append((Instruction) this.factory.createInvoke(STR_LUAVALUE, "rawset", Type.VOID, ARG_TYPES_INT_LUAVALUE, (short) 182));
        }
    }

    public void setlistVarargs(int i10, int i11) {
        append((CompoundInstruction) new PUSH(this.cp, i10));
        loadVarresult();
        append((Instruction) this.factory.createInvoke(STR_LUAVALUE, "rawsetlist", Type.VOID, ARG_TYPES_INT_VARARGS, (short) 182));
    }

    public void storeLocal(int i10, int i11) {
        ArrayInstruction astore;
        ASTORE aload;
        boolean isUpvalueAssign = this.f102805pi.isUpvalueAssign(i10, i11);
        int findSlotIndex = findSlotIndex(i11, isUpvalueAssign);
        if (isUpvalueAssign) {
            if (this.f102805pi.isUpvalueCreate(i10, i11)) {
                append((Instruction) this.factory.createInvoke(this.classname, "newupe", TYPE_LOCALUPVALUE, ARG_TYPES_NONE, (short) 184));
                append((Instruction) InstructionConstants.DUP);
                aload = new ASTORE(findSlotIndex);
            } else {
                aload = new ALOAD(findSlotIndex);
            }
            append((Instruction) aload);
            append((Instruction) InstructionConstants.SWAP);
            append((CompoundInstruction) new PUSH(this.cp, 0));
            append((Instruction) InstructionConstants.SWAP);
            astore = InstructionConstants.AASTORE;
        } else {
            astore = new ASTORE(findSlotIndex);
        }
        append((Instruction) astore);
    }

    public void storeUpvalue(int i10, int i11, int i12) {
        ArrayInstruction createFieldAccess;
        ProtoInfo protoInfo = this.f102805pi;
        boolean isReadWriteUpvalue = protoInfo.isReadWriteUpvalue(protoInfo.upvals[i11]);
        append((Instruction) InstructionConstants.THIS);
        if (isReadWriteUpvalue) {
            append((Instruction) this.factory.createFieldAccess(this.classname, upvalueName(i11), TYPE_LOCALUPVALUE, (short) 180));
            append((CompoundInstruction) new PUSH(this.cp, 0));
            loadLocal(i10, i12);
            createFieldAccess = InstructionConstants.AASTORE;
        } else {
            loadLocal(i10, i12);
            createFieldAccess = this.factory.createFieldAccess(this.classname, upvalueName(i11), TYPE_LUAVALUE, (short) 181);
        }
        append((Instruction) createFieldAccess);
    }

    public void storeVarresult() {
        append((Instruction) new ASTORE(getVarresultIndex()));
    }

    public void subargs(int i10) {
        append((CompoundInstruction) new PUSH(this.cp, i10));
        append((Instruction) this.factory.createInvoke(STR_VARARGS, "subargs", TYPE_VARARGS, ARG_TYPES_INT, (short) 182));
    }

    public void testForLoop() {
        append((Instruction) this.factory.createInvoke(STR_LUAVALUE, "testfor_b", Type.BOOLEAN, ARG_TYPES_LUAVALUE_LUAVALUE, (short) 182));
    }

    public void toBoolean() {
        append((Instruction) this.factory.createInvoke(STR_LUAVALUE, "toboolean", Type.BOOLEAN, Type.NO_ARGS, (short) 182));
    }

    public void tobuffer() {
        append((Instruction) this.factory.createInvoke(STR_LUAVALUE, "buffer", TYPE_BUFFER, Type.NO_ARGS, (short) 182));
    }

    public void tostring() {
        append((Instruction) this.factory.createInvoke(STR_BUFFER, "tostring", TYPE_LUASTRING, Type.NO_ARGS, (short) 182));
    }

    public void tovalue() {
        append((Instruction) this.factory.createInvoke(STR_BUFFER, "value", TYPE_LUAVALUE, Type.NO_ARGS, (short) 182));
    }

    public void unaryop(int i10) {
        append((Instruction) this.factory.createInvoke(STR_LUAVALUE, i10 != 20 ? i10 != 21 ? "neg" : "len" : "not", TYPE_LUAVALUE, Type.NO_ARGS, (short) 182));
    }

    private void append(CompoundInstruction compoundInstruction) {
        conditionalSetBeginningOfLua(this.main.append(compoundInstruction));
    }

    public void loadVarargs(int i10) {
        loadVarargs();
        arg(i10);
    }

    private void append(Instruction instruction) {
        conditionalSetBeginningOfLua(this.main.append(instruction));
    }
}
