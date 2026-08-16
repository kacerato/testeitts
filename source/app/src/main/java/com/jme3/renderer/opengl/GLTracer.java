package com.jme3.renderer.opengl;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.android.dex.DexFormat;
import com.jme3.util.IntMap;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
import java.nio.ShortBuffer;
import java.util.HashMap;
import org.eclipse.jdt.internal.core.JavadocConstants;

public final class GLTracer implements InvocationHandler {
    private static final String ANSI_BLUE = "\u001b[34m";
    private static final String ANSI_BRIGHT = "\u001b[1m";
    private static final String ANSI_CYAN = "\u001b[36m";
    private static final String ANSI_GREEN = "\u001b[32m";
    private static final String ANSI_MAGENTA = "\u001b[35m";
    private static final String ANSI_RED = "\u001b[31m";
    private static final String ANSI_RESET = "\u001b[0m";
    private static final String ANSI_YELLOW = "\u001b[33m";
    private static final HashMap<String, IntMap<Void>> nonEnumArgMap = new HashMap<>();
    private final IntMap<String> constMap;
    private final Object obj;

    static {
        noEnumArgs("glViewport", 0, 1, 2, 3);
        noEnumArgs("glScissor", 0, 1, 2, 3);
        noEnumArgs("glClear", 0);
        noEnumArgs("glGetInteger", 1);
        noEnumArgs("glGetString", 1);
        noEnumArgs("glBindTexture", 1);
        noEnumArgs("glPixelStorei", 1);
        noEnumArgs("glTexImage2D", 1, 3, 4, 5);
        noEnumArgs("glTexImage3D", 1, 3, 4, 5, 6);
        noEnumArgs("glTexSubImage2D", 1, 2, 3, 4, 5);
        noEnumArgs("glTexSubImage3D", 1, 2, 3, 4, 5, 6, 7);
        noEnumArgs("glCompressedTexImage2D", 1, 3, 4, 5);
        noEnumArgs("glCompressedTexSubImage3D", 1, 2, 3, 4, 5, 6, 7);
        noEnumArgs("glDeleteTextures", 0);
        noEnumArgs("glReadPixels", 0, 1, 2, 3);
        noEnumArgs("glBindBuffer", 1);
        noEnumArgs("glEnableVertexAttribArray", 0);
        noEnumArgs("glDisableVertexAttribArray", 0);
        noEnumArgs("glVertexAttribPointer", 0, 1, 4, 5);
        noEnumArgs("glVertexAttribDivisorARB", 0, 1);
        noEnumArgs("glDrawRangeElements", 1, 2, 3, 5);
        noEnumArgs("glDrawArrays", 1, 2);
        noEnumArgs("glDeleteBuffers", 0);
        noEnumArgs("glBindVertexArray", 0);
        noEnumArgs("glGenVertexArrays", 0);
        noEnumArgs("glBindFramebufferEXT", 1);
        noEnumArgs("glBindRenderbufferEXT", 1);
        noEnumArgs("glRenderbufferStorageEXT", 2, 3);
        noEnumArgs("glRenderbufferStorageMultisampleEXT", 1, 3, 4);
        noEnumArgs("glFramebufferRenderbufferEXT", 3);
        noEnumArgs("glFramebufferTexture2DEXT", 3, 4);
        noEnumArgs("glFramebufferTextureLayerEXT", 2, 3, 4);
        noEnumArgs("glBlitFramebufferEXT", 0, 1, 2, 3, 4, 5, 6, 7, 8);
        noEnumArgs("glCreateProgram", -1);
        noEnumArgs("glCreateShader", -1);
        noEnumArgs("glShaderSource", 0);
        noEnumArgs("glCompileShader", 0);
        noEnumArgs("glGetShader", 0);
        noEnumArgs("glAttachShader", 0, 1);
        noEnumArgs("glLinkProgram", 0);
        noEnumArgs("glGetProgram", 0);
        noEnumArgs("glUseProgram", 0);
        noEnumArgs("glGetUniformLocation", 0, -1);
        noEnumArgs("glUniformMatrix3", 0);
        noEnumArgs("glUniformMatrix4", 0);
        noEnumArgs("glUniform1i", 0, 1);
        noEnumArgs("glUniform1f", 0);
        noEnumArgs("glUniform2f", 0);
        noEnumArgs("glUniform3f", 0);
        noEnumArgs("glUniform4", 0);
        noEnumArgs("glUniform4f", 0);
        noEnumArgs("glGetAttribLocation", 0, -1);
        noEnumArgs("glDetachShader", 0, 1);
        noEnumArgs("glDeleteShader", 0);
        noEnumArgs("glDeleteProgram", 0);
        noEnumArgs("glBindFragDataLocation", 0, 1);
    }

    public GLTracer(Object obj, IntMap<String> intMap) {
        this.obj = obj;
        this.constMap = intMap;
    }

    public static Object createDesktopGlTracer(Object obj, Class<?>... clsArr) {
        return Proxy.newProxyInstance(obj.getClass().getClassLoader(), clsArr, new GLTracer(obj, generateConstantMap(GL2.class, GL3.class, GL4.class, GLFbo.class, GLExt.class)));
    }

    public static Object createGlesTracer(Object obj, Class<?>... clsArr) {
        return Proxy.newProxyInstance(obj.getClass().getClassLoader(), clsArr, new GLTracer(obj, generateConstantMap(GL.class, GL2.class, GL3.class, GLFbo.class, GLExt.class)));
    }

    private static IntMap<String> generateConstantMap(Class<?>... clsArr) {
        IntMap<String> intMap = new IntMap<>();
        for (Class<?> cls : clsArr) {
            for (Field field : cls.getFields()) {
                if (field.getType() == Integer.TYPE) {
                    try {
                        intMap.put(field.getInt(null), field.getName());
                    } catch (IllegalAccessException | IllegalArgumentException unused) {
                    }
                }
            }
        }
        intMap.put(1, "GL_ONE");
        return intMap;
    }

    private static void noEnumArgs(String str, int... iArr) {
        IntMap<Void> intMap = new IntMap<>();
        for (int i10 : iArr) {
            intMap.put(i10, null);
        }
        nonEnumArgMap.put(str, intMap);
    }

    private void print(String str) {
        System.out.print(str);
    }

    private void printArgs(String str, Object[] objArr, Class<?>[] clsArr) {
        if (str.equals("glClear")) {
            printArgsClear(((Integer) objArr[0]).intValue());
            return;
        }
        if (str.equals("glTexParameteri")) {
            printArgsTexParameter(objArr);
            return;
        }
        if (str.equals("glGetInteger")) {
            printArgsGetInteger(objArr);
            return;
        }
        if (objArr == null) {
            print("()");
            return;
        }
        print("(");
        for (int i10 = 0; i10 < objArr.length; i10++) {
            Class<?> cls = clsArr[i10];
            if (cls == Integer.TYPE) {
                printIntOrEnum(str, ((Integer) objArr[i10]).intValue(), i10);
            } else if (cls == Boolean.TYPE) {
                printBoolean(((Boolean) objArr[i10]).booleanValue());
            } else if (cls == String.class) {
                printString((String) objArr[i10]);
            } else if (cls == String[].class) {
                String[] strArr = (String[]) objArr[i10];
                if (strArr.length == 1) {
                    printString(strArr[0]);
                } else {
                    print("string[" + strArr.length + "]");
                }
            } else {
                Object obj = objArr[i10];
                if (obj instanceof IntBuffer) {
                    IntBuffer intBuffer = (IntBuffer) obj;
                    if (intBuffer.capacity() == 16) {
                        int i11 = intBuffer.get(0);
                        printOut();
                        printIntOrEnum(str, i11, i10);
                    } else if (intBuffer.capacity() == 1) {
                        printOut();
                        print(Integer.toString(intBuffer.get(0)));
                    } else {
                        printBuffer(intBuffer);
                    }
                } else if (obj instanceof ByteBuffer) {
                    ByteBuffer byteBuffer = (ByteBuffer) obj;
                    if (byteBuffer.capacity() == 250) {
                        printOut();
                        printBoolean(byteBuffer.get(0) != 0);
                    } else {
                        printBuffer(byteBuffer);
                    }
                } else if (obj instanceof Buffer) {
                    printBuffer((Buffer) obj);
                } else if (obj != null) {
                    print(obj.toString());
                } else {
                    printNull();
                }
            }
            if (i10 != objArr.length - 1) {
                System.out.print(", ");
            }
        }
        print(")");
    }

    private void printArgsClear(int i10) {
        boolean z10;
        print("(");
        if ((i10 & 16384) != 0) {
            printStyle(ANSI_GREEN, "COLOR_BUFFER_BIT");
            z10 = true;
        } else {
            z10 = false;
        }
        if ((i10 & 256) != 0) {
            if (z10) {
                print(" | ");
            }
            printStyle(ANSI_GREEN, "DEPTH_BUFFER_BIT");
        }
        if ((i10 & 1024) != 0) {
            if (z10) {
                print(" | ");
            }
            printStyle(ANSI_GREEN, "STENCIL_BUFFER_BIT");
        }
        print(")");
    }

    private void printArgsGetInteger(Object[] objArr) {
        print("(");
        int intValue = ((Integer) objArr[0]).intValue();
        IntBuffer intBuffer = (IntBuffer) objArr[1];
        printEnum(intValue);
        print(", ");
        printOut();
        if (intValue == 3073 || intValue == 3074) {
            printEnum(intBuffer.get(0));
        } else {
            printInt(intBuffer.get(0));
        }
        print(")");
    }

    private void printArgsTexParameter(Object[] objArr) {
        print("(");
        int intValue = ((Integer) objArr[0]).intValue();
        int intValue2 = ((Integer) objArr[1]).intValue();
        int intValue3 = ((Integer) objArr[2]).intValue();
        printEnum(intValue);
        print(", ");
        printEnum(intValue2);
        print(", ");
        if (intValue2 == 33084 || intValue2 == 33085) {
            printInt(intValue3);
        } else {
            printEnum(intValue3);
        }
        print(")");
    }

    private void printBoolean(boolean z10) {
        printStyle(ANSI_BLUE, z10 ? "true" : "false");
    }

    private void printBuffer(Buffer buffer) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(ANSI_MAGENTA);
        if (buffer instanceof ByteBuffer) {
            sb2.append("byte");
        } else if (buffer instanceof ShortBuffer) {
            sb2.append("short");
        } else if (buffer instanceof CharBuffer) {
            sb2.append("char");
        } else if (buffer instanceof FloatBuffer) {
            sb2.append(TypedValues.Custom.S_FLOAT);
        } else if (buffer instanceof IntBuffer) {
            sb2.append("int");
        } else if (buffer instanceof LongBuffer) {
            sb2.append("long");
        } else {
            if (!(buffer instanceof DoubleBuffer)) {
                throw new UnsupportedOperationException();
            }
            sb2.append("double");
        }
        sb2.append(ANSI_RESET);
        sb2.append("[");
        if (buffer.position() == 0 && buffer.limit() == buffer.capacity()) {
            sb2.append(buffer.capacity());
        } else {
            sb2.append("pos=");
            sb2.append(buffer.position());
            sb2.append(" lim=");
            sb2.append(buffer.limit());
            sb2.append(" cap=");
            sb2.append(buffer.capacity());
        }
        sb2.append("]");
        print(sb2.toString());
    }

    private void printEnum(int i10) {
        String str = this.constMap.get(i10);
        if (str == null) {
            printStyle(ANSI_GREEN, "ENUM_" + Integer.toHexString(i10));
            return;
        }
        if (str.startsWith("GL_")) {
            str = str.substring(3);
        }
        if (str.endsWith("_EXT") || str.endsWith("_ARB")) {
            str = str.substring(0, str.length() - 4);
        }
        printStyle(ANSI_GREEN, str);
    }

    private void printInt(int i10) {
        print(Integer.toString(i10));
    }

    private void printIntOrEnum(String str, int i10, int i11) {
        IntMap<Void> intMap = nonEnumArgMap.get(str);
        if (intMap == null || !intMap.containsKey(i11)) {
            printEnum(i10);
        } else {
            printInt(i10);
        }
    }

    private void printMethodName(String str) {
        if (!str.startsWith("gl")) {
            if (str.equals("resetStats")) {
                printStyle(ANSI_RED, "-- frame boundary --");
                return;
            }
            return;
        }
        String substring = str.substring(2);
        if (substring.equals("Clear") || substring.equals("DrawRangeElements") || substring.equals("DrawElementsInstancedARB")) {
            print(substring);
            return;
        }
        if (substring.endsWith("EXT")) {
            substring = substring.substring(0, substring.length() - 3);
        }
        printStyle(ANSI_BRIGHT, substring);
    }

    private void printNewLine() {
        System.out.println();
    }

    private void printNull() {
        printStyle(ANSI_BLUE, "null");
    }

    private void printOut() {
        printStyle(ANSI_CYAN, "out=");
    }

    private void printResult(String str, Object obj, Class<?> cls) {
        if (cls != Void.TYPE) {
            print(" = ");
            if (obj instanceof String) {
                printString((String) obj);
                return;
            }
            if (cls == Integer.TYPE) {
                printIntOrEnum(str, ((Integer) obj).intValue(), -1);
            } else if (cls == Boolean.TYPE) {
                printBoolean(((Boolean) obj).booleanValue());
            } else {
                print(" = ???");
            }
        }
    }

    private void printString(String str) {
        if (str.length() > 150) {
            str = str.substring(0, 150) + "...";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(ANSI_YELLOW);
        sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
        sb2.append(ANSI_RESET);
        for (String str2 : str.split("\n")) {
            sb2.append(ANSI_YELLOW);
            sb2.append(str2.replaceAll(DexFormat.MAGIC_SUFFIX, "\\\\0"));
            sb2.append(ANSI_RESET);
            sb2.append("\n");
        }
        if (sb2.length() > 1 && sb2.charAt(sb2.length() - 1) == '\n') {
            sb2.setLength(sb2.length() - 1);
        }
        sb2.append(ANSI_YELLOW);
        sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
        sb2.append(ANSI_RESET);
        print(sb2.toString());
    }

    private void printStyle(String str, String str2) {
        System.out.print(str + str2 + ANSI_RESET);
    }

    @Override
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        String name = method.getName();
        printMethodName(name);
        if (!name.startsWith("gl")) {
            printNewLine();
            return method.invoke(this.obj, objArr);
        }
        try {
            Object invoke = method.invoke(this.obj, objArr);
            printArgs(name, objArr, method.getParameterTypes());
            printResult(name, invoke, method.getReturnType());
            printNewLine();
            return invoke;
        } catch (Throwable th2) {
            printArgs(name, objArr, method.getParameterTypes());
            printNewLine();
            PrintStream printStream = System.out;
            printStream.println("\tException occurred!");
            printStream.println(th2.toString());
            throw th2;
        }
    }
}
