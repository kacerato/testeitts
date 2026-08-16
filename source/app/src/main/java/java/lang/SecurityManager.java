package java.lang;

import java.io.FileDescriptor;
import java.lang.StackWalker;
import java.net.InetAddress;
import java.security.AccessController;
import java.security.Permission;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/SecurityManager.class
 */
@Deprecated(since = "17", forRemoval = true)
public class SecurityManager {
    public Class<?>[] getClassContext() {
        return (Class[]) StackWalkerHolder.STACK_WALKER.walk(s10 -> {
            return (Class[]) s10.map((v0) -> {
                return v0.getDeclaringClass();
            }).skip(1L).toArray(x$0 -> {
                return new Class[x$0];
            });
        });
    }

    private static class StackWalkerHolder {
        static final StackWalker STACK_WALKER = StackWalker.getInstance((Set<StackWalker.Option>) Set.of(StackWalker.Option.RETAIN_CLASS_REFERENCE, StackWalker.Option.DROP_METHOD_INFO));

        private StackWalkerHolder() {
        }
    }

    public Object getSecurityContext() {
        return AccessController.getContext();
    }

    public void checkPermission(Permission perm) {
        throw new SecurityException();
    }

    public void checkPermission(Permission perm, Object context) {
        throw new SecurityException();
    }

    public void checkCreateClassLoader() {
        throw new SecurityException();
    }

    public void checkAccess(Thread t10) {
        throw new SecurityException();
    }

    public void checkAccess(ThreadGroup g10) {
        throw new SecurityException();
    }

    public void checkExit(int status) {
        throw new SecurityException();
    }

    public void checkExec(String cmd) {
        throw new SecurityException();
    }

    public void checkLink(String lib) {
        throw new SecurityException();
    }

    public void checkRead(FileDescriptor fd2) {
        throw new SecurityException();
    }

    public void checkRead(String file) {
        throw new SecurityException();
    }

    public void checkRead(String file, Object context) {
        throw new SecurityException();
    }

    public void checkWrite(FileDescriptor fd2) {
        throw new SecurityException();
    }

    public void checkWrite(String file) {
        throw new SecurityException();
    }

    public void checkDelete(String file) {
        throw new SecurityException();
    }

    public void checkConnect(String host, int port) {
        throw new SecurityException();
    }

    public void checkConnect(String host, int port, Object context) {
        throw new SecurityException();
    }

    public void checkListen(int port) {
        throw new SecurityException();
    }

    public void checkAccept(String host, int port) {
        throw new SecurityException();
    }

    public void checkMulticast(InetAddress maddr) {
        throw new SecurityException();
    }

    public void checkMulticast(InetAddress maddr, byte ttl) {
        throw new SecurityException();
    }

    public void checkPropertiesAccess() {
        throw new SecurityException();
    }

    public void checkPropertyAccess(String key) {
        throw new SecurityException();
    }

    public void checkPrintJobAccess() {
        throw new SecurityException();
    }

    public void checkPackageAccess(String pkg) {
        throw new SecurityException();
    }

    public void checkPackageDefinition(String pkg) {
        throw new SecurityException();
    }

    public void checkSetFactory() {
        throw new SecurityException();
    }

    public void checkSecurityAccess(String target) {
        throw new SecurityException();
    }

    public ThreadGroup getThreadGroup() {
        return Thread.currentThread().getThreadGroup();
    }
}
