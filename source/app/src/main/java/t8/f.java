package t8;

import java.util.Iterator;

public class f extends ClassLoader {
    public f(ClassLoader parent) {
        super(parent);
    }

    @Override
    public Class<?> loadClass(String name, boolean resolve) throws ClassNotFoundException {
        Iterator<String> it = c.f117186a.iterator();
        while (it.hasNext()) {
            if (name.startsWith(it.next())) {
                throw new SecurityException("Access denied to class: " + name);
            }
        }
        return super.loadClass(name, resolve);
    }
}
