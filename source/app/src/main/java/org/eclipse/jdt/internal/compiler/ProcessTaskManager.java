package org.eclipse.jdt.internal.compiler;

import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;

public class ProcessTaskManager implements Runnable {
    public static final int PROCESSED_QUEUE_SIZE = 12;
    private Throwable caughtException;
    Compiler compiler;
    private Thread processingThread;
    private int unitIndex;
    CompilationUnitDeclaration unitToProcess;
    volatile int currentIndex = 0;
    volatile int availableIndex = 0;
    volatile int size = 12;
    volatile int sleepCount = 0;
    CompilationUnitDeclaration[] units = new CompilationUnitDeclaration[this.size];

    public ProcessTaskManager(Compiler compiler, int i10) {
        this.compiler = compiler;
        this.unitIndex = i10;
        synchronized (this) {
            Thread thread = new Thread(this, "Compiler Processing Task");
            this.processingThread = thread;
            thread.setDaemon(true);
            this.processingThread.start();
        }
    }

    private synchronized void addNextUnit(CompilationUnitDeclaration compilationUnitDeclaration) {
        while (this.units[this.availableIndex] != null) {
            try {
                this.sleepCount = 1;
                try {
                    wait(250L);
                } catch (InterruptedException unused) {
                }
                this.sleepCount = 0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        CompilationUnitDeclaration[] compilationUnitDeclarationArr = this.units;
        int i10 = this.availableIndex;
        this.availableIndex = i10 + 1;
        compilationUnitDeclarationArr[i10] = compilationUnitDeclaration;
        if (this.availableIndex >= this.size) {
            this.availableIndex = 0;
        }
        if (this.sleepCount <= -1) {
            notify();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048 A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:3:0x0001, B:5:0x000b, B:8:0x0038, B:10:0x0048, B:11:0x004a, B:13:0x004f, B:15:0x0057, B:18:0x0061, B:24:0x0012, B:37:0x0016, B:39:0x001a, B:41:0x001e, B:42:0x0020, B:43:0x0021, B:44:0x0023, B:45:0x0024, B:26:0x0026, B:29:0x002b, B:30:0x002e), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x004f A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:3:0x0001, B:5:0x000b, B:8:0x0038, B:10:0x0048, B:11:0x004a, B:13:0x004f, B:15:0x0057, B:18:0x0061, B:24:0x0012, B:37:0x0016, B:39:0x001a, B:41:0x001e, B:42:0x0020, B:43:0x0021, B:44:0x0023, B:45:0x0024, B:26:0x0026, B:29:0x002b, B:30:0x002e), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CompilationUnitDeclaration removeNextUnit() throws Error {
        synchronized (this) {
            try {
                CompilationUnitDeclaration compilationUnitDeclaration = this.units[this.currentIndex];
                boolean z10 = false;
                if (compilationUnitDeclaration != null) {
                    if (this.caughtException != null) {
                    }
                    CompilationUnitDeclaration[] compilationUnitDeclarationArr = this.units;
                    int i10 = this.currentIndex;
                    this.currentIndex = i10 + 1;
                    compilationUnitDeclarationArr[i10] = null;
                    if (this.currentIndex >= this.size) {
                        this.currentIndex = 0;
                    }
                    if (this.sleepCount >= 1) {
                        int i11 = this.sleepCount + 1;
                        this.sleepCount = i11;
                        if (i11 > 4) {
                            notify();
                            if (this.sleepCount > 8) {
                                z10 = true;
                            }
                        }
                    }
                    if (z10) {
                        Thread.yield();
                    }
                    return compilationUnitDeclaration;
                }
                while (this.processingThread != null) {
                    this.sleepCount = -1;
                    try {
                        wait(100L);
                    } catch (InterruptedException unused) {
                    }
                    this.sleepCount = 0;
                    compilationUnitDeclaration = this.units[this.currentIndex];
                    if (compilationUnitDeclaration != null) {
                        CompilationUnitDeclaration[] compilationUnitDeclarationArr2 = this.units;
                        int i102 = this.currentIndex;
                        this.currentIndex = i102 + 1;
                        compilationUnitDeclarationArr2[i102] = null;
                        if (this.currentIndex >= this.size) {
                        }
                        if (this.sleepCount >= 1) {
                        }
                        if (z10) {
                        }
                        return compilationUnitDeclaration;
                    }
                }
                Throwable th2 = this.caughtException;
                if (th2 == null) {
                    return null;
                }
                if (th2 instanceof Error) {
                    throw ((Error) th2);
                }
                throw ((RuntimeException) th2);
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x004b, code lost:
    
        r12.compiler.reportProgress(org.eclipse.jdt.internal.compiler.util.Messages.bind(org.eclipse.jdt.internal.compiler.util.Messages.compilation_processing, new java.lang.String(r5.getFileName())));
        r5 = r12.compiler;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0065, code lost:
    
        if (r5.options.verbose == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0067, code lost:
    
        r5.out.println(org.eclipse.jdt.internal.compiler.util.Messages.bind(org.eclipse.jdt.internal.compiler.util.Messages.compilation_process, (java.lang.Object[]) new java.lang.String[]{java.lang.String.valueOf(r7), java.lang.String.valueOf(r12.compiler.totalUnits), new java.lang.String(r12.unitToProcess.getFileName())}));
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0090, code lost:
    
        r12.compiler.process(r12.unitToProcess, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0097, code lost:
    
        r5 = r12.unitToProcess;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0099, code lost:
    
        if (r5 == null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x009b, code lost:
    
        if (r4 == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x009d, code lost:
    
        r5.cleanUp();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a5, code lost:
    
        addNextUnit(r12.unitToProcess);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x008e, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ac, code lost:
    
        r1 = r12.unitToProcess;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ae, code lost:
    
        if (r1 != null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b2, code lost:
    
        r1.cleanUp();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b5, code lost:
    
        throw r0;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        boolean z10 = this.compiler.annotationProcessorManager == null;
        while (this.processingThread != null) {
            this.unitToProcess = null;
            boolean z11 = z10 || this.compiler.shouldCleanup(this.unitIndex);
            try {
                synchronized (this) {
                    try {
                        if (this.processingThread == null) {
                            return;
                        }
                        CompilationUnitDeclaration unitToProcess = this.compiler.getUnitToProcess(this.unitIndex);
                        this.unitToProcess = unitToProcess;
                        if (unitToProcess == null) {
                            this.processingThread = null;
                            return;
                        }
                        int i10 = this.unitIndex;
                        int i11 = i10 + 1;
                        this.unitIndex = i11;
                        if (unitToProcess.compilationResult.hasBeenAccepted) {
                        }
                    } finally {
                    }
                }
            } catch (Error e10) {
                synchronized (this) {
                    this.processingThread = null;
                    this.caughtException = e10;
                    return;
                }
            } catch (RuntimeException e11) {
                synchronized (this) {
                    this.processingThread = null;
                    this.caughtException = e11;
                    return;
                }
            }
        }
    }

    public void shutdown() {
        Thread thread;
        try {
            synchronized (this) {
                try {
                    thread = this.processingThread;
                    if (thread != null) {
                        this.processingThread = null;
                        notifyAll();
                    } else {
                        thread = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (thread != null) {
                thread.join(250L);
            }
        } catch (InterruptedException unused) {
        }
    }
}
