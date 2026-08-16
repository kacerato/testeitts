package com.jme3.renderer.opengl;

import com.jme3.renderer.RendererException;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class GLDebug implements InvocationHandler {

    protected GL f81622gl;
    protected Method methodGlGetError = GL.class.getMethod("glGetError", null);
    protected Object obj;

    private GLDebug(GL gl2, Object obj) throws NoSuchMethodException {
        this.f81622gl = gl2;
        this.obj = obj;
    }

    public static Object createProxy(GL gl2, Object obj, Class<?>... clsArr) {
        try {
            return Proxy.newProxyInstance(GLDebug.class.getClassLoader(), clsArr, new GLDebug(gl2, obj));
        } catch (NoSuchMethodException e10) {
            throw new IllegalArgumentException("Could not initialize the proxy because the glGetError method wasn't found!", e10);
        }
    }

    public void checkError() {
        int glGetError = this.f81622gl.glGetError();
        if (glGetError == 0) {
            return;
        }
        throw new RendererException("An OpenGL error occurred - " + decodeError(glGetError));
    }

    public String decodeError(int i10) {
        String str;
        if (i10 != 0) {
            switch (i10) {
                case 1280:
                    str = "Invalid enum argument";
                    break;
                case 1281:
                    str = "Invalid numeric argument";
                    break;
                case 1282:
                    str = "Invalid operation";
                    break;
                case 1283:
                    str = "Internal stack overflow";
                    break;
                case 1284:
                    str = "Internal stack underflow";
                    break;
                case 1285:
                    str = "Out of memory";
                    break;
                case 1286:
                    str = "Framebuffer is not complete";
                    break;
                default:
                    str = "Unknown";
                    break;
            }
        } else {
            str = "No Error";
        }
        return str + " (Error Code: " + i10 + ")";
    }

    @Override
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        Object invoke = method.invoke(this.obj, objArr);
        if (method.equals(this.methodGlGetError)) {
            return invoke;
        }
        checkError();
        return invoke;
    }
}
