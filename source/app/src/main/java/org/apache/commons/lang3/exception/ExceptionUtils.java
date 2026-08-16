package org.apache.commons.lang3.exception;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.UndeclaredThrowableException;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.Validate;

public class ExceptionUtils {
    private static final String[] CAUSE_METHOD_NAMES = {"getCause", "getNextException", "getTargetException", "getException", "getSourceException", "getRootCause", "getCausedByException", "getNested", "getLinkedException", "getNestedException", "getLinkedCause", "getThrowable"};
    static final String WRAPPED_MARKER = " [wrapped] ";

    @Deprecated
    public static Throwable getCause(Throwable th2) {
        return getCause(th2, null);
    }

    private static Throwable getCauseUsingMethodName(Throwable th2, String str) {
        Method method;
        try {
            method = th2.getClass().getMethod(str, null);
        } catch (NoSuchMethodException | SecurityException unused) {
            method = null;
        }
        if (method != null && Throwable.class.isAssignableFrom(method.getReturnType())) {
            try {
                return (Throwable) method.invoke(th2, null);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused2) {
            }
        }
        return null;
    }

    @Deprecated
    public static String[] getDefaultCauseMethodNames() {
        return (String[]) ArrayUtils.clone(CAUSE_METHOD_NAMES);
    }

    public static String getMessage(Throwable th2) {
        if (th2 == null) {
            return "";
        }
        return ClassUtils.getShortClassName(th2, null) + ": " + StringUtils.defaultString(th2.getMessage());
    }

    public static Throwable getRootCause(Throwable th2) {
        List<Throwable> throwableList = getThrowableList(th2);
        if (throwableList.size() < 2) {
            return null;
        }
        return throwableList.get(throwableList.size() - 1);
    }

    public static String getRootCauseMessage(Throwable th2) {
        Throwable rootCause = getRootCause(th2);
        if (rootCause != null) {
            th2 = rootCause;
        }
        return getMessage(th2);
    }

    public static String[] getRootCauseStackTrace(Throwable th2) {
        List<String> list;
        if (th2 == null) {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        }
        Throwable[] throwables = getThrowables(th2);
        int length = throwables.length;
        ArrayList arrayList = new ArrayList();
        int i10 = length - 1;
        List<String> stackFrameList = getStackFrameList(throwables[i10]);
        while (true) {
            int i11 = length - 1;
            if (i11 < 0) {
                return (String[]) arrayList.toArray(new String[arrayList.size()]);
            }
            if (i11 != 0) {
                list = getStackFrameList(throwables[length - 2]);
                removeCommonFrames(stackFrameList, list);
            } else {
                list = stackFrameList;
            }
            if (i11 == i10) {
                arrayList.add(throwables[i11].toString());
            } else {
                arrayList.add(WRAPPED_MARKER + throwables[i11].toString());
            }
            for (int i12 = 0; i12 < stackFrameList.size(); i12++) {
                arrayList.add(stackFrameList.get(i12));
            }
            stackFrameList = list;
            length = i11;
        }
    }

    public static List<String> getStackFrameList(Throwable th2) {
        StringTokenizer stringTokenizer = new StringTokenizer(getStackTrace(th2), System.lineSeparator());
        ArrayList arrayList = new ArrayList();
        boolean z10 = false;
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            int indexOf = nextToken.indexOf("at");
            if (indexOf != -1 && nextToken.substring(0, indexOf).trim().isEmpty()) {
                arrayList.add(nextToken);
                z10 = true;
            } else if (z10) {
                break;
            }
        }
        return arrayList;
    }

    public static String[] getStackFrames(Throwable th2) {
        if (th2 == null) {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        }
        return getStackFrames(getStackTrace(th2));
    }

    public static String getStackTrace(Throwable th2) {
        StringWriter stringWriter = new StringWriter();
        th2.printStackTrace(new PrintWriter((Writer) stringWriter, true));
        return stringWriter.getBuffer().toString();
    }

    public static int getThrowableCount(Throwable th2) {
        return getThrowableList(th2).size();
    }

    public static List<Throwable> getThrowableList(Throwable th2) {
        ArrayList arrayList = new ArrayList();
        while (th2 != null && !arrayList.contains(th2)) {
            arrayList.add(th2);
            th2 = getCause(th2);
        }
        return arrayList;
    }

    public static Throwable[] getThrowables(Throwable th2) {
        List<Throwable> throwableList = getThrowableList(th2);
        return (Throwable[]) throwableList.toArray(new Throwable[throwableList.size()]);
    }

    public static boolean hasCause(Throwable th2, Class<? extends Throwable> cls) {
        if (th2 instanceof UndeclaredThrowableException) {
            th2 = th2.getCause();
        }
        return cls.isInstance(th2);
    }

    private static int indexOf(Throwable th2, Class<?> cls, int i10, boolean z10) {
        if (th2 != null && cls != null) {
            if (i10 < 0) {
                i10 = 0;
            }
            Throwable[] throwables = getThrowables(th2);
            if (i10 >= throwables.length) {
                return -1;
            }
            if (z10) {
                while (i10 < throwables.length) {
                    if (cls.isAssignableFrom(throwables[i10].getClass())) {
                        return i10;
                    }
                    i10++;
                }
            } else {
                while (i10 < throwables.length) {
                    if (cls.equals(throwables[i10].getClass())) {
                        return i10;
                    }
                    i10++;
                }
            }
        }
        return -1;
    }

    public static int indexOfThrowable(Throwable th2, Class<?> cls) {
        return indexOf(th2, cls, 0, false);
    }

    public static int indexOfType(Throwable th2, Class<?> cls) {
        return indexOf(th2, cls, 0, true);
    }

    public static void printRootCauseStackTrace(Throwable th2) {
        printRootCauseStackTrace(th2, System.err);
    }

    public static void removeCommonFrames(List<String> list, List<String> list2) {
        if (list == null || list2 == null) {
            throw new IllegalArgumentException("The List must not be null");
        }
        int size = list.size() - 1;
        for (int size2 = list2.size() - 1; size >= 0 && size2 >= 0; size2--) {
            if (list.get(size).equals(list2.get(size2))) {
                list.remove(size);
            }
            size--;
        }
    }

    public static <R> R rethrow(Throwable th2) {
        return (R) typeErasure(th2);
    }

    private static <R, T extends Throwable> R typeErasure(Throwable th2) throws Throwable {
        throw th2;
    }

    public static <R> R wrapAndThrow(Throwable th2) {
        if (th2 instanceof RuntimeException) {
            throw ((RuntimeException) th2);
        }
        if (th2 instanceof Error) {
            throw ((Error) th2);
        }
        throw new UndeclaredThrowableException(th2);
    }

    @Deprecated
    public static Throwable getCause(Throwable th2, String[] strArr) {
        Throwable causeUsingMethodName;
        if (th2 == null) {
            return null;
        }
        if (strArr == null) {
            Throwable cause = th2.getCause();
            if (cause != null) {
                return cause;
            }
            strArr = CAUSE_METHOD_NAMES;
        }
        for (String str : strArr) {
            if (str != null && (causeUsingMethodName = getCauseUsingMethodName(th2, str)) != null) {
                return causeUsingMethodName;
            }
        }
        return null;
    }

    public static int indexOfThrowable(Throwable th2, Class<?> cls, int i10) {
        return indexOf(th2, cls, i10, false);
    }

    public static int indexOfType(Throwable th2, Class<?> cls, int i10) {
        return indexOf(th2, cls, i10, true);
    }

    public static void printRootCauseStackTrace(Throwable th2, PrintStream printStream) {
        if (th2 == null) {
            return;
        }
        Validate.isTrue(printStream != null, "The PrintStream must not be null", new Object[0]);
        for (String str : getRootCauseStackTrace(th2)) {
            printStream.println(str);
        }
        printStream.flush();
    }

    public static String[] getStackFrames(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, System.lineSeparator());
        ArrayList arrayList = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            arrayList.add(stringTokenizer.nextToken());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static void printRootCauseStackTrace(Throwable th2, PrintWriter printWriter) {
        if (th2 == null) {
            return;
        }
        Validate.isTrue(printWriter != null, "The PrintWriter must not be null", new Object[0]);
        for (String str : getRootCauseStackTrace(th2)) {
            printWriter.println(str);
        }
        printWriter.flush();
    }
}
