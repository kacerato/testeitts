package org.eclipse.jdt.internal.core.search.indexing;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import org.eclipse.core.runtime.ICoreRunnable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.core.index.DiskIndex;
import org.eclipse.jdt.internal.core.search.processing.JobManager;
import org.eclipse.jdt.internal.core.util.Util;

public class IndexNamesRegistry {
    private final IPath javaPluginWorkingLocation;
    private char[][] pendingWrite;
    private final Object queueMutex = new Object();
    private final File savedIndexNamesFile;
    private final Job writeJob;

    public IndexNamesRegistry(File file, IPath iPath) {
        this.savedIndexNamesFile = file;
        Job create = Job.create("Updating index names", new ICoreRunnable() {
            public final void a(IProgressMonitor iProgressMonitor) {
                IndexNamesRegistry.this.save(iProgressMonitor);
            }
        });
        this.writeJob = create;
        create.setSystem(true);
        this.javaPluginWorkingLocation = iPath;
    }

    public void save(IProgressMonitor iProgressMonitor) {
        char[][] cArr;
        Throwable th2;
        SubMonitor convert = SubMonitor.convert(iProgressMonitor);
        synchronized (this.queueMutex) {
            cArr = this.pendingWrite;
        }
        if (cArr == null) {
            return;
        }
        convert.setWorkRemaining(cArr.length);
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(this.savedIndexNamesFile));
            try {
                bufferedWriter.write(DiskIndex.SIGNATURE);
                bufferedWriter.write(43);
                bufferedWriter.write(this.javaPluginWorkingLocation.toOSString());
                bufferedWriter.write(10);
                for (char[] cArr2 : cArr) {
                    convert.split(1);
                    bufferedWriter.write(cArr2);
                    bufferedWriter.write(10);
                }
                bufferedWriter.close();
                synchronized (this.queueMutex) {
                    try {
                        if (this.pendingWrite == cArr) {
                            this.pendingWrite = null;
                        }
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                try {
                    bufferedWriter.close();
                    throw th4;
                } catch (Throwable th5) {
                    th2 = th4;
                    th = th5;
                    if (th2 == null) {
                        throw th;
                    }
                    if (th2 != th) {
                        try {
                            th2.addSuppressed(th);
                        } catch (IOException unused) {
                            if (JobManager.VERBOSE) {
                                Util.verbose("Failed to write saved index file names", System.err);
                            }
                        }
                    }
                    throw th2;
                }
            }
        } catch (Throwable th6) {
            th = th6;
            th2 = null;
        }
    }

    public void delete() {
        synchronized (this.queueMutex) {
            this.pendingWrite = null;
        }
        this.writeJob.cancel();
        try {
            this.writeJob.join();
        } catch (InterruptedException unused) {
        }
        synchronized (this.queueMutex) {
            this.pendingWrite = null;
        }
        this.savedIndexNamesFile.delete();
    }

    public char[][] read(IProgressMonitor iProgressMonitor) {
        char[][] cArr;
        synchronized (this.queueMutex) {
            cArr = this.pendingWrite;
        }
        if (cArr != null) {
            return cArr;
        }
        try {
            char[] fileCharContent = org.eclipse.jdt.internal.compiler.util.Util.getFileCharContent(this.savedIndexNamesFile, null);
            if (fileCharContent.length > 0) {
                char[][] splitOn = CharOperation.splitOn('\n', fileCharContent);
                if (splitOn.length > 1) {
                    if (("INDEX VERSION 1.131+" + this.javaPluginWorkingLocation.toOSString()).equals(new String(splitOn[0]))) {
                        return splitOn;
                    }
                }
            }
        } catch (IOException unused) {
            if (JobManager.VERBOSE) {
                Util.verbose("Failed to read saved index file names");
            }
        }
        return null;
    }

    public void write(char[][] cArr) {
        synchronized (this.queueMutex) {
            this.pendingWrite = cArr;
        }
        this.writeJob.schedule();
    }
}
