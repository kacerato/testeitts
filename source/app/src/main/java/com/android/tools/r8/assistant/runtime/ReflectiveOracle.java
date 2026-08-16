package com.android.tools.r8.assistant.runtime;

import com.android.tools.r8.keepanno.annotations.KeepForApi;
import java.util.Arrays;

@KeepForApi
public class ReflectiveOracle {
    private static volatile ReflectiveOperationReceiver INSTANCE;
    private static Object instanceLock = new Object();

    @KeepForApi
    public static class ReflectiveOperationLogger implements ReflectiveOperationReceiver {
        @Override
        public void onClassForName(Stack stack, String str) {
            System.out.println("Reflectively called Class.forName on " + str);
        }

        @Override
        public void onClassGetDeclaredMethod(Stack stack, Class<?> cls, String str, Class<?>... clsArr) {
            System.out.println("Reflectively got declared method " + str + " on " + cls.getName());
        }

        @Override
        public void onClassNewInstance(Stack stack, Class<?> cls) {
            System.out.println("Reflectively created new instance of " + cls.getName());
        }

        @Override
        public boolean requiresStackInformation() {
            return true;
        }
    }

    @KeepForApi
    public static class Stack {
        static final boolean $assertionsDisabled = false;
        private final StackTraceElement[] stackTraceElements;

        private Stack(StackTraceElement[] stackTraceElementArr) {
            this.stackTraceElements = stackTraceElementArr;
        }

        public static Stack createStack() {
            if (!ReflectiveOracle.INSTANCE.requiresStackInformation()) {
                return new Stack(null);
            }
            StackTraceElement[] stackTrace = new RuntimeException().getStackTrace();
            return new Stack((StackTraceElement[]) Arrays.copyOfRange(stackTrace, 2, stackTrace.length));
        }

        public StackTraceElement[] getStackTraceElements() {
            return this.stackTraceElements;
        }

        public String toStringStackTrace() {
            if (this.stackTraceElements == null) {
                return "Stack extraction not enabled.";
            }
            StringBuilder sb2 = new StringBuilder();
            for (StackTraceElement stackTraceElement : this.stackTraceElements) {
                sb2.append(" at ");
                sb2.append((Object) stackTraceElement);
                sb2.append("\n");
            }
            return sb2.toString();
        }
    }

    private static ReflectiveOperationReceiver getInstance() {
        if (INSTANCE == null) {
            synchronized (instanceLock) {
                try {
                    if (INSTANCE == null) {
                        INSTANCE = getReceiver();
                    }
                } finally {
                }
            }
        }
        return INSTANCE;
    }

    private static ReflectiveOperationReceiver getReceiver() {
        return new ReflectiveOperationLogger();
    }

    public static void onClassForName(String str) {
        getInstance().onClassForName(Stack.createStack(), str);
    }

    public static void onClassGetDeclaredMethod(Class<?> cls, String str, Class<?>... clsArr) {
        getInstance().onClassGetDeclaredMethod(Stack.createStack(), cls, str, clsArr);
    }

    public static void onClassNewInstance(Class<?> cls) {
        getInstance().onClassNewInstance(Stack.createStack(), cls);
    }
}
