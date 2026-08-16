package com.jme3.renderer.opengl;

import android.provider.ContactsContract;
import eg.C13143u0;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;

public class GLTiming implements InvocationHandler {
    private final Object obj;
    private final GLTimingState state;

    public static class CallTimingComparator implements Comparator<Map.Entry<String, Long>> {
        private CallTimingComparator() {
        }

        @Override
        public int compare(Map.Entry<String, Long> entry, Map.Entry<String, Long> entry2) {
            return (int) (entry2.getValue().longValue() - entry.getValue().longValue());
        }
    }

    public GLTiming(Object obj, GLTimingState gLTimingState) {
        this.obj = obj;
        this.state = gLTimingState;
    }

    public static Object createGLTiming(Object obj, GLTimingState gLTimingState, Class<?>... clsArr) {
        return Proxy.newProxyInstance(obj.getClass().getClassLoader(), clsArr, new GLTiming(obj, gLTimingState));
    }

    @Override
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        GLTimingState gLTimingState;
        int i10;
        String name = method.getName();
        if (!name.equals("resetStats")) {
            Long l10 = this.state.callTiming.get(name);
            long longValue = l10 != null ? l10.longValue() : 0L;
            long nanoTime = System.nanoTime();
            Object invoke = method.invoke(this.obj, objArr);
            long nanoTime2 = System.nanoTime() - nanoTime;
            GLTimingState gLTimingState2 = this.state;
            gLTimingState2.timeSpentInGL += nanoTime2;
            gLTimingState2.callTiming.put(name, Long.valueOf(longValue + nanoTime2));
            if (nanoTime2 > C13143u0.f85788e && !name.equals("glClear")) {
                System.out.println("GL call " + name + " took " + (nanoTime2 / 1000) + "us to execute!");
            }
            return invoke;
        }
        if (this.state.lastPrintOutTime + ContactsContract.Directory.ENTERPRISE_DEFAULT > System.nanoTime() || (i10 = (gLTimingState = this.state).sampleCount) <= 0) {
            this.state.sampleCount++;
            return null;
        }
        gLTimingState.timeSpentInGL /= i10;
        System.out.println("--- TOTAL TIME SPENT IN GL CALLS: " + (this.state.timeSpentInGL / 1000) + "us");
        int size = this.state.callTiming.size();
        Map.Entry[] entryArr = new Map.Entry[size];
        Iterator<Map.Entry<String, Long>> it = this.state.callTiming.entrySet().iterator();
        int i11 = 0;
        while (it.hasNext()) {
            entryArr[i11] = it.next();
            i11++;
        }
        Arrays.sort(entryArr, new CallTimingComparator());
        int i12 = 10;
        int i13 = 0;
        while (i13 < size) {
            Map.Entry entry = entryArr[i13];
            long longValue2 = ((Long) entry.getValue()).longValue() / this.state.sampleCount;
            String substring = "                                     ".substring(0, 30 - ((String) entry.getKey()).length());
            System.out.println("\t" + ((String) entry.getKey()) + substring + (longValue2 / 1000) + "us");
            int i14 = i12 + (-1);
            if (i12 == 0) {
                break;
            }
            i13++;
            i12 = i14;
        }
        for (int i15 = 0; i15 < size; i15++) {
            this.state.callTiming.put((String) entryArr[i15].getKey(), 0L);
        }
        GLTimingState gLTimingState3 = this.state;
        gLTimingState3.sampleCount = 0;
        gLTimingState3.timeSpentInGL = 0L;
        gLTimingState3.lastPrintOutTime = System.nanoTime();
        return null;
    }
}
