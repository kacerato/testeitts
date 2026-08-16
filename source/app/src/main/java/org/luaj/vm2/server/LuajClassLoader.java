package org.luaj.vm2.server;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

public class LuajClassLoader extends ClassLoader {
    static final String launcherInterfaceRoot = Launcher.class.getName();
    static final String luajPackageRoot = "org.luaj.vm2.";
    Map<String, Class<?>> classes = new HashMap();

    public static Launcher NewLauncher() throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        return NewLauncher(DefaultLauncher.class);
    }

    public static boolean isUserClass(String str) {
        return str.startsWith(luajPackageRoot) && !str.startsWith(launcherInterfaceRoot);
    }

    private Class<?> loadAsUserClass(String str) throws ClassNotFoundException {
        InputStream resourceAsStream = getResourceAsStream(str.replace('.', '/').concat(".class"));
        if (resourceAsStream == null) {
            throw new ClassNotFoundException("Not found: " + str);
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = resourceAsStream.read(bArr);
                if (read < 0) {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    Class<?> defineClass = super.defineClass(str, byteArray, 0, byteArray.length);
                    this.classes.put(str, defineClass);
                    return defineClass;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } catch (IOException e10) {
            throw new ClassNotFoundException("Read failed: " + str + ": " + ((Object) e10));
        }
    }

    @Override
    public Class<?> loadClass(String str) throws ClassNotFoundException {
        return this.classes.containsKey(str) ? this.classes.get(str) : !isUserClass(str) ? super.findSystemClass(str) : loadAsUserClass(str);
    }

    public static Launcher NewLauncher(Class<? extends Launcher> cls) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        return (Launcher) new LuajClassLoader().loadAsUserClass(cls.getName()).newInstance();
    }
}
