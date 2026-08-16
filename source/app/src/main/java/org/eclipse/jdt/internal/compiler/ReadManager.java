package org.eclipse.jdt.internal.compiler;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;

public class ReadManager implements Runnable {
    static final int CACHE_SIZE = 15;
    static final int START_CUSHION = 5;
    public static final int THRESHOLD = 10;
    private Throwable caughtException;
    char[][] contentsRead;
    ICompilationUnit[] filesRead;
    int nextAvailablePosition;
    int nextFileToRead;
    char[] readInProcessMarker = new char[0];
    Thread[] readingThreads;
    int readyToReadPosition;
    int sleepingThreadCount;
    ICompilationUnit[] units;

    /* JADX WARN: Removed duplicated region for block: B:11:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0074 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ReadManager(ICompilationUnit[] iCompilationUnitArr, int i10) {
        int i11;
        Method declaredMethod;
        try {
            declaredMethod = Class.forName("java.lang.Runtime").getDeclaredMethod("availableProcessors", null);
        } catch (ClassNotFoundException | IllegalAccessException | IllegalArgumentException | NoSuchMethodException | SecurityException | InvocationTargetException unused) {
        }
        if (declaredMethod != null) {
            i11 = ((Integer) declaredMethod.invoke(Runtime.getRuntime(), null)).intValue() + 1;
            if (i11 >= 2) {
                if (i11 > 15) {
                    i11 = 15;
                }
                if (i11 <= 0) {
                    synchronized (this) {
                        try {
                            ICompilationUnit[] iCompilationUnitArr2 = new ICompilationUnit[i10];
                            this.units = iCompilationUnitArr2;
                            System.arraycopy(iCompilationUnitArr, 0, iCompilationUnitArr2, 0, i10);
                            this.nextFileToRead = 5;
                            this.filesRead = new ICompilationUnit[15];
                            this.contentsRead = new char[15];
                            this.readyToReadPosition = 0;
                            this.nextAvailablePosition = 0;
                            this.sleepingThreadCount = 0;
                            this.readingThreads = new Thread[i11];
                            while (true) {
                                i11--;
                                if (i11 >= 0) {
                                    this.readingThreads[i11] = new Thread(this, "Compiler Source File Reader");
                                    this.readingThreads[i11].setDaemon(true);
                                    this.readingThreads[i11].start();
                                }
                            }
                        } finally {
                        }
                    }
                    return;
                }
                return;
            }
        }
        i11 = 0;
        if (i11 <= 0) {
        }
    }

    public char[] getContents(ICompilationUnit iCompilationUnit) throws Error {
        char[] cArr;
        Thread[] threadArr = this.readingThreads;
        if (threadArr == null || this.units.length == 0) {
            Throwable th2 = this.caughtException;
            if (th2 == null) {
                return iCompilationUnit.getContents();
            }
            if (th2 instanceof Error) {
                throw ((Error) th2);
            }
            throw ((RuntimeException) th2);
        }
        boolean z10 = this.sleepingThreadCount == threadArr.length;
        synchronized (this) {
            try {
                ICompilationUnit[] iCompilationUnitArr = this.filesRead;
                int i10 = this.readyToReadPosition;
                cArr = null;
                if (iCompilationUnit == iCompilationUnitArr[i10]) {
                    char[] cArr2 = this.contentsRead[i10];
                    while (true) {
                        if (cArr2 == this.readInProcessMarker || cArr2 == null) {
                            this.contentsRead[this.readyToReadPosition] = null;
                            try {
                                wait(250L);
                            } catch (InterruptedException unused) {
                            }
                            Throwable th3 = this.caughtException;
                            if (th3 != null) {
                                if (th3 instanceof Error) {
                                    throw ((Error) th3);
                                }
                                throw ((RuntimeException) th3);
                            }
                            cArr2 = this.contentsRead[this.readyToReadPosition];
                        } else {
                            ICompilationUnit[] iCompilationUnitArr2 = this.filesRead;
                            int i11 = this.readyToReadPosition;
                            iCompilationUnitArr2[i11] = null;
                            char[][] cArr3 = this.contentsRead;
                            cArr3[i11] = null;
                            int i12 = i11 + 1;
                            this.readyToReadPosition = i12;
                            if (i12 >= cArr3.length) {
                                this.readyToReadPosition = 0;
                            }
                            if (this.sleepingThreadCount > 0) {
                                notify();
                            }
                            cArr = cArr2;
                        }
                    }
                } else {
                    int length = this.units.length;
                    int i13 = 0;
                    while (i13 < length && this.units[i13] != iCompilationUnit) {
                        i13++;
                    }
                    if (i13 == this.units.length) {
                        this.units = new ICompilationUnit[0];
                    } else if (i13 >= this.nextFileToRead) {
                        this.nextFileToRead = i13 + 5;
                        this.readyToReadPosition = 0;
                        this.nextAvailablePosition = 0;
                        this.filesRead = new ICompilationUnit[15];
                        this.contentsRead = new char[15];
                        notifyAll();
                    }
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
        if (z10) {
            Thread.yield();
        }
        return cArr != null ? cArr : iCompilationUnit.getContents();
    }

    @Override
    public void run() {
        int i10;
        ICompilationUnit iCompilationUnit;
        while (this.readingThreads != null && this.nextFileToRead < this.units.length) {
            try {
                synchronized (this) {
                    try {
                        if (this.readingThreads == null) {
                            return;
                        }
                        do {
                            ICompilationUnit[] iCompilationUnitArr = this.filesRead;
                            i10 = this.nextAvailablePosition;
                            if (iCompilationUnitArr[i10] == null) {
                                int i11 = this.nextFileToRead;
                                ICompilationUnit[] iCompilationUnitArr2 = this.units;
                                if (i11 >= iCompilationUnitArr2.length) {
                                    return;
                                }
                                this.nextFileToRead = i11 + 1;
                                iCompilationUnit = iCompilationUnitArr2[i11];
                                int i12 = i10 + 1;
                                this.nextAvailablePosition = i12;
                                char[][] cArr = this.contentsRead;
                                if (i12 >= cArr.length) {
                                    this.nextAvailablePosition = 0;
                                }
                                iCompilationUnitArr[i10] = iCompilationUnit;
                                cArr[i10] = this.readInProcessMarker;
                            } else {
                                this.sleepingThreadCount++;
                                try {
                                    wait(250L);
                                } catch (InterruptedException unused) {
                                }
                                this.sleepingThreadCount--;
                            }
                        } while (this.readingThreads != null);
                        return;
                    } finally {
                    }
                }
                char[] contents = iCompilationUnit.getContents();
                synchronized (this) {
                    try {
                        if (this.filesRead[i10] == iCompilationUnit) {
                            if (this.contentsRead[i10] == null) {
                                notifyAll();
                            }
                            this.contentsRead[i10] = contents;
                        }
                    } finally {
                    }
                }
            } catch (Error e10) {
                synchronized (this) {
                    this.caughtException = e10;
                    shutdown();
                    return;
                }
            } catch (RuntimeException e11) {
                synchronized (this) {
                    this.caughtException = e11;
                    shutdown();
                    return;
                }
            }
        }
    }

    public synchronized void shutdown() {
        this.readingThreads = null;
        notifyAll();
    }
}
