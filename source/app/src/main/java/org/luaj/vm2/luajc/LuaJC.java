package org.luaj.vm2.luajc;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.Hashtable;
import org.luaj.vm2.Globals;
import org.luaj.vm2.LuaFunction;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Prototype;

public class LuaJC implements Globals.Loader {
    public static final LuaJC instance = new LuaJC();

    private Hashtable compileProtoAndSubProtos(Prototype prototype, String str, String str2, boolean z10) throws IOException {
        String standardLuaFileName = toStandardLuaFileName(str2);
        Hashtable hashtable = new Hashtable();
        insert(hashtable, new JavaGen(prototype, str, standardLuaFileName, z10));
        return hashtable;
    }

    private void insert(Hashtable hashtable, JavaGen javaGen) {
        hashtable.put(javaGen.classname, javaGen.bytecode);
        JavaGen[] javaGenArr = javaGen.inners;
        int length = javaGenArr != null ? javaGenArr.length : 0;
        for (int i10 = 0; i10 < length; i10++) {
            insert(hashtable, javaGen.inners[i10]);
        }
    }

    public static final void install(Globals globals) {
        globals.loader = instance;
    }

    private static String toStandardJavaClassName(String str) {
        String stub = toStub(str);
        StringBuffer stringBuffer = new StringBuffer();
        int length = stub.length();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = stub.charAt(i10);
            if ((i10 != 0 || !Character.isJavaIdentifierStart(charAt)) && (i10 <= 0 || !Character.isJavaIdentifierPart(charAt))) {
                charAt = '_';
            }
            stringBuffer.append(charAt);
        }
        return stringBuffer.toString();
    }

    private static String toStandardLuaFileName(String str) {
        String stub = toStub(str);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(stub.replace('.', '/'));
        stringBuffer.append(".lua");
        String stringBuffer2 = stringBuffer.toString();
        return stringBuffer2.startsWith("@") ? stringBuffer2.substring(1) : stringBuffer2;
    }

    private static String toStub(String str) {
        return str.endsWith(".lua") ? str.substring(0, str.length() - 4) : str;
    }

    public Hashtable compileAll(InputStream inputStream, String str, String str2, Globals globals, boolean z10) throws IOException {
        String standardJavaClassName = toStandardJavaClassName(str);
        return compileProtoAndSubProtos(globals.loadPrototype(inputStream, standardJavaClassName, "bt"), standardJavaClassName, str2, z10);
    }

    @Override
    public LuaFunction load(Prototype prototype, String str, LuaValue luaValue) throws IOException {
        String standardLuaFileName = toStandardLuaFileName(str);
        return new JavaLoader().load(prototype, toStandardJavaClassName(standardLuaFileName), standardLuaFileName, luaValue);
    }

    public Hashtable compileAll(Reader reader, String str, String str2, Globals globals, boolean z10) throws IOException {
        String standardJavaClassName = toStandardJavaClassName(str);
        return compileProtoAndSubProtos(globals.compilePrototype(reader, standardJavaClassName), standardJavaClassName, str2, z10);
    }
}
