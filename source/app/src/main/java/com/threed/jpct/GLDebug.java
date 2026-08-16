package com.threed.jpct;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import javax.microedition.khronos.opengles.GL;
import javax.microedition.khronos.opengles.GL10;

public class GLDebug implements InvocationHandler {

    private GL f83614gl;

    private StringBuilder f83615sb = new StringBuilder();

    private GLDebug(GL gl2) {
        this.f83614gl = null;
        this.f83614gl = gl2;
    }

    public static GL create(GL gl2) {
        if (gl2 == null) {
            return null;
        }
        Logger.log("Creating dynamic proxy for gl!");
        return (GL) Proxy.newProxyInstance(gl2.getClass().getClassLoader(), gl2.getClass().getInterfaces(), new GLDebug(gl2));
    }

    @Override
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        this.f83615sb.setLength(0);
        StringBuilder sb2 = this.f83615sb;
        sb2.append(method.getName());
        sb2.append('(');
        int length = objArr.length;
        int i10 = 0;
        boolean z10 = true;
        while (i10 < length) {
            Object obj2 = objArr[i10];
            if (!z10) {
                this.f83615sb.append(", ");
            }
            this.f83615sb.append(obj2.toString());
            i10++;
            z10 = false;
        }
        this.f83615sb.append(')');
        long nanoTime = System.nanoTime();
        Object invoke = method.invoke(this.f83614gl, objArr);
        StringBuilder sb3 = this.f83615sb;
        sb3.append(" took ");
        sb3.append(System.nanoTime() - nanoTime);
        sb3.append("ns");
        Logger.log(this.f83615sb.toString());
        if (invoke != null) {
            Logger.log("return value: " + invoke.toString());
        }
        int glGetError = ((GL10) this.f83614gl).glGetError();
        if (glGetError != 0) {
            Logger.log("!! ERROR !! - " + glGetError, 1);
        }
        return invoke;
    }
}
