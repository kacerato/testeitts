package java.lang;

import java.io.PrintStream;
import java.lang.Thread;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import jdk.internal.misc.VM;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/ThreadGroup.class
 */
public class ThreadGroup implements Thread.UncaughtExceptionHandler {
    private final ThreadGroup parent;
    private final String name;
    private volatile int maxPriority;
    private volatile boolean daemon;
    private int ngroups;
    private ThreadGroup[] groups;
    private int nweaks;
    private WeakReference<ThreadGroup>[] weaks;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !ThreadGroup.class.desiredAssertionStatus();
    }

    private ThreadGroup() {
        this.parent = null;
        this.name = "system";
        this.maxPriority = 10;
    }

    public ThreadGroup(ThreadGroup parent, String name, int maxPriority, boolean daemon) {
        this.parent = parent;
        this.name = name;
        this.maxPriority = maxPriority;
        if (daemon) {
            this.daemon = true;
        }
        if (VM.isBooted()) {
            parent.synchronizedAddWeak(this);
        } else {
            parent.synchronizedAddStrong(this);
        }
    }

    public ThreadGroup(String name) {
        this(Thread.currentThread().getThreadGroup(), name);
    }

    public ThreadGroup(ThreadGroup parent, String name) {
        this(parent, name, parent.maxPriority, parent.daemon);
    }

    public final String getName() {
        return this.name;
    }

    public final ThreadGroup getParent() {
        return this.parent;
    }

    public final int getMaxPriority() {
        return this.maxPriority;
    }

    @Deprecated(since = "16", forRemoval = true)
    public final boolean isDaemon() {
        return this.daemon;
    }

    @Deprecated(since = "16", forRemoval = true)
    public boolean isDestroyed() {
        return false;
    }

    @Deprecated(since = "16", forRemoval = true)
    public final void setDaemon(boolean daemon) {
        this.daemon = daemon;
    }

    public final void setMaxPriority(int pri) {
        if (pri >= 1 && pri <= 10) {
            synchronized (this) {
                if (this.parent == null) {
                    this.maxPriority = pri;
                } else if (this != Thread.virtualThreadGroup()) {
                    this.maxPriority = Math.min(pri, this.parent.maxPriority);
                }
                subgroups().forEach(g10 -> {
                    g10.setMaxPriority(pri);
                });
            }
        }
    }

    public final boolean parentOf(ThreadGroup g10) {
        while (g10 != null) {
            if (g10 != this) {
                g10 = g10.parent;
            } else {
                return true;
            }
        }
        return false;
    }

    @Deprecated(since = "17", forRemoval = true)
    public final void checkAccess() {
    }

    public int activeCount() {
        int n10 = 0;
        for (Thread thread : Thread.getAllThreads()) {
            ThreadGroup g10 = thread.getThreadGroup();
            if (parentOf(g10)) {
                n10++;
            }
        }
        return n10;
    }

    public int enumerate(Thread[] list) {
        return enumerate(list, true);
    }

    public int enumerate(Thread[] list, boolean recurse) {
        Objects.requireNonNull(list);
        int n10 = 0;
        if (list.length > 0) {
            for (Thread thread : Thread.getAllThreads()) {
                ThreadGroup g10 = thread.getThreadGroup();
                if (g10 == this || (recurse && parentOf(g10))) {
                    int i10 = n10;
                    n10++;
                    list[i10] = thread;
                    if (n10 == list.length) {
                        break;
                    }
                }
            }
        }
        return n10;
    }

    public int activeGroupCount() {
        int n10 = 0;
        for (ThreadGroup group : synchronizedSubgroups()) {
            n10 = n10 + group.activeGroupCount() + 1;
        }
        return n10;
    }

    public int enumerate(ThreadGroup[] list) {
        return enumerate(list, true);
    }

    public int enumerate(ThreadGroup[] list, boolean recurse) {
        Objects.requireNonNull(list);
        return enumerate(list, 0, recurse);
    }

    private int enumerate(ThreadGroup[] list, int i10, boolean recurse) {
        List<ThreadGroup> subgroups = synchronizedSubgroups();
        for (int j10 = 0; j10 < subgroups.size() && i10 < list.length; j10++) {
            ThreadGroup group = subgroups.get(j10);
            int i11 = i10;
            i10++;
            list[i11] = group;
            if (recurse) {
                i10 = group.enumerate(list, i10, true);
            }
        }
        return i10;
    }

    public final void interrupt() {
        for (Thread thread : Thread.getAllThreads()) {
            ThreadGroup g10 = thread.getThreadGroup();
            if (parentOf(g10)) {
                thread.interrupt();
            }
        }
    }

    @Deprecated(since = "16", forRemoval = true)
    public final void destroy() {
    }

    public void list() {
        Map<ThreadGroup, List<Thread>> map = new HashMap<>();
        for (Thread thread : Thread.getAllThreads()) {
            ThreadGroup group = thread.getThreadGroup();
            if (group != null && parentOf(group)) {
                map.computeIfAbsent(group, k10 -> {
                    return new ArrayList();
                }).add(thread);
            }
        }
        list(map, System.out, 0);
    }

    private void list(Map<ThreadGroup, List<Thread>> map, PrintStream out, int indent) {
        out.print(" ".repeat(indent));
        out.println(this);
        int indent2 = indent + 4;
        List<Thread> threads = map.get(this);
        if (threads != null) {
            for (Thread thread : threads) {
                out.print(" ".repeat(indent2));
                out.println(thread);
            }
        }
        for (ThreadGroup group : synchronizedSubgroups()) {
            group.list(map, out, indent2);
        }
    }

    @Override
    public void uncaughtException(Thread t10, Throwable e10) {
        if (this.parent != null) {
            this.parent.uncaughtException(t10, e10);
            return;
        }
        Thread.UncaughtExceptionHandler ueh = Thread.getDefaultUncaughtExceptionHandler();
        if (ueh != null) {
            ueh.uncaughtException(t10, e10);
        } else {
            System.err.print("Exception in thread \"" + t10.getName() + "\" ");
            e10.printStackTrace(System.err);
        }
    }

    public String toString() {
        return getClass().getName() + "[name=" + getName() + ",maxpri=" + getMaxPriority() + "]";
    }

    private void synchronizedAddStrong(ThreadGroup group) {
        synchronized (this) {
            if (this.groups == null) {
                this.groups = new ThreadGroup[4];
            } else if (this.groups.length == this.ngroups) {
                this.groups = (ThreadGroup[]) Arrays.copyOf(this.groups, this.ngroups + 4);
            }
            ThreadGroup[] threadGroupArr = this.groups;
            int i10 = this.ngroups;
            this.ngroups = i10 + 1;
            threadGroupArr[i10] = group;
        }
    }

    private void synchronizedAddWeak(ThreadGroup group) {
        synchronized (this) {
            if (this.weaks == null) {
                WeakReference<ThreadGroup>[] array = new WeakReference[4];
                this.weaks = array;
            } else {
                int i10 = 0;
                while (i10 < this.nweaks) {
                    ThreadGroup g10 = this.weaks[i10].get();
                    if (g10 == null) {
                        removeWeak(i10);
                    } else {
                        i10++;
                    }
                }
                if (this.weaks.length == this.nweaks) {
                    this.weaks = (WeakReference[]) Arrays.copyOf(this.weaks, this.nweaks + 4);
                }
            }
            WeakReference<ThreadGroup>[] weakReferenceArr = this.weaks;
            int i11 = this.nweaks;
            this.nweaks = i11 + 1;
            weakReferenceArr[i11] = new WeakReference<>(group);
        }
    }

    private void removeWeak(int index) {
        if (!$assertionsDisabled && (!Thread.holdsLock(this) || index >= this.nweaks)) {
            throw new AssertionError();
        }
        int last = this.nweaks - 1;
        if (index < this.nweaks) {
            this.weaks[index] = this.weaks[last];
        }
        this.weaks[last] = null;
        this.nweaks--;
    }

    private List<ThreadGroup> synchronizedSubgroups() {
        List<ThreadGroup> subgroups;
        synchronized (this) {
            subgroups = subgroups();
        }
        return subgroups;
    }

    private ThreadGroup[] subgroupsAsArray() {
        List<ThreadGroup> groups = synchronizedSubgroups();
        int count = groups.size();
        ThreadGroup[] array = new ThreadGroup[count];
        for (int i10 = 0; i10 < count; i10++) {
            array[i10] = groups.get(i10);
        }
        return array;
    }

    private List<ThreadGroup> subgroups() {
        if (!$assertionsDisabled && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        List<ThreadGroup> snapshot = new ArrayList<>();
        for (int i10 = 0; i10 < this.ngroups; i10++) {
            snapshot.add(this.groups[i10]);
        }
        int i11 = 0;
        while (i11 < this.nweaks) {
            ThreadGroup g10 = this.weaks[i11].get();
            if (g10 == null) {
                removeWeak(i11);
            } else {
                snapshot.add(g10);
                i11++;
            }
        }
        return snapshot;
    }
}
