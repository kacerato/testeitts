package org.eclipse.jdt.internal.core.search.processing;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public abstract class JobManager implements Runnable {
    public static boolean VERBOSE = false;
    protected Thread processingThread;
    protected Job progressJob;
    protected IJob[] awaitingJobs = new IJob[10];
    protected int jobStart = 0;
    protected int jobEnd = -1;
    protected boolean executing = false;
    private int enableCount = 1;
    public boolean activated = false;
    private int awaitingClients = 0;

    public void activateProcessing() {
        this.activated = true;
    }

    public synchronized int awaitingJobsCount() {
        return this.activated ? 1 + (this.jobEnd - this.jobStart) : 1;
    }

    public synchronized IJob currentJob() {
        int i10;
        if (this.enableCount <= 0 || (i10 = this.jobStart) > this.jobEnd) {
            return null;
        }
        return this.awaitingJobs[i10];
    }

    public synchronized void disable() {
        this.enableCount--;
        if (VERBOSE) {
            Util.verbose("DISABLING background indexing");
        }
    }

    public void discardJobs(String str) {
        IJob currentJob;
        if (VERBOSE) {
            Util.verbose("DISCARD   background job family - " + str);
        }
        try {
            synchronized (this) {
                currentJob = currentJob();
                disable();
            }
            if (currentJob != null) {
                if (str != null) {
                    if (currentJob.belongsTo(str)) {
                    }
                }
                currentJob.cancel();
                while (this.processingThread != null && this.executing) {
                    try {
                        if (VERBOSE) {
                            Util.verbose("-> waiting end of current background job - " + ((Object) currentJob));
                        }
                        Thread.sleep(50L);
                    } catch (InterruptedException unused) {
                    }
                }
            }
            synchronized (this) {
                int i10 = -1;
                for (int i11 = this.jobStart; i11 <= this.jobEnd; i11++) {
                    IJob[] iJobArr = this.awaitingJobs;
                    IJob iJob = iJobArr[i11];
                    if (iJob != null) {
                        iJobArr[i11] = null;
                        if (str == null || iJob.belongsTo(str)) {
                            if (VERBOSE) {
                                Util.verbose("-> discarding background job  - " + ((Object) iJob));
                            }
                            iJob.cancel();
                        } else {
                            i10++;
                            this.awaitingJobs[i10] = iJob;
                        }
                    }
                }
                this.jobStart = 0;
                this.jobEnd = i10;
            }
            enable();
            if (VERBOSE) {
                Util.verbose("DISCARD   DONE with background job family - " + str);
            }
        } catch (Throwable th2) {
            enable();
            throw th2;
        }
    }

    public synchronized void enable() {
        try {
            this.enableCount++;
            if (VERBOSE) {
                Util.verbose("ENABLING  background indexing");
            }
            notifyAll();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized boolean isJobWaiting(IJob iJob) {
        for (int i10 = this.jobEnd; i10 > this.jobStart; i10--) {
            if (iJob.equals(this.awaitingJobs[i10])) {
                return true;
            }
        }
        return false;
    }

    public synchronized void moveToNextJob() {
        int i10 = this.jobStart;
        int i11 = this.jobEnd;
        if (i10 <= i11) {
            IJob[] iJobArr = this.awaitingJobs;
            int i12 = i10 + 1;
            this.jobStart = i12;
            iJobArr[i10] = null;
            if (i12 > i11) {
                this.jobStart = 0;
                this.jobEnd = -1;
            }
        }
    }

    public void notifyIdle(long j10) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0107, code lost:
    
        throw new org.eclipse.core.runtime.OperationCanceledException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0073, code lost:
    
        monitor-enter(r16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0074, code lost:
    
        r16.awaitingClients--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0079, code lost:
    
        monitor-exit(r16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x007a, code lost:
    
        if (r6 == null) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x007c, code lost:
    
        if (r8 <= r7) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0082, code lost:
    
        if (r6.isAlive() == false) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0084, code lost:
    
        r6.setPriority(r8);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean performConcurrentJob(IJob iJob, int i10, IProgressMonitor iProgressMonitor) {
        SubMonitor convert;
        if (VERBOSE) {
            Util.verbose("STARTING  concurrent job - " + ((Object) iJob));
        }
        iJob.ensureReadyToRun();
        try {
            convert = SubMonitor.convert(iProgressMonitor);
        } finally {
        }
        if (awaitingJobsCount() > 0) {
            if (i10 == 1) {
                if (VERBOSE) {
                    Util.verbose("-> NOT READY - forcing immediate - " + ((Object) iJob));
                }
                try {
                    disable();
                    boolean execute = iJob.execute(convert);
                    enable();
                    if (VERBOSE) {
                        Util.verbose("FINISHED  concurrent job - " + ((Object) iJob));
                    }
                    return execute;
                } catch (Throwable th2) {
                    enable();
                    throw th2;
                }
            }
            if (i10 == 2) {
                if (VERBOSE) {
                    Util.verbose("-> NOT READY - cancelling - " + ((Object) iJob));
                }
                if (VERBOSE) {
                    Util.verbose("CANCELED concurrent job - " + ((Object) iJob));
                }
                throw new OperationCanceledException();
            }
            if (i10 == 3) {
                SubMonitor workRemaining = convert.setWorkRemaining(10).split(8).setWorkRemaining(1000);
                Thread thread = this.processingThread;
                int i11 = -1;
                int priority = thread == null ? -1 : thread.getPriority();
                if (thread != null) {
                    try {
                        thread.setPriority(Thread.currentThread().getPriority());
                    } catch (Throwable th3) {
                        synchronized (this) {
                            this.awaitingClients--;
                            if (thread != null && priority > -1 && thread.isAlive()) {
                                thread.setPriority(priority);
                            }
                            throw th3;
                        }
                    }
                }
                synchronized (this) {
                    this.awaitingClients++;
                }
                float f10 = 0.0f;
                int i12 = 1000;
                IJob iJob2 = null;
                float f11 = 0.0f;
                while (true) {
                    int awaitingJobsCount = awaitingJobsCount();
                    if (awaitingJobsCount <= 0) {
                        break;
                    }
                    if (workRemaining.isCanceled() || this.processingThread == null) {
                        break;
                    }
                    IJob currentJob = currentJob();
                    if (currentJob != null && currentJob != iJob2) {
                        if (VERBOSE) {
                            Util.verbose("-> NOT READY - waiting until ready - " + ((Object) iJob));
                        }
                        workRemaining.subTask(Messages.bind(Messages.jobmanager_filesToIndex, currentJob.getJobFamily(), Integer.toString(awaitingJobsCount)));
                        float f12 = awaitingJobsCount < 1000 ? 1.0f : 1000 / awaitingJobsCount;
                        f10 = i12 > awaitingJobsCount ? f10 + ((i12 - awaitingJobsCount) * f12) : f10 + f12;
                        float f13 = f10 - f11;
                        if (f13 >= 1.0f) {
                            workRemaining.worked((int) f13);
                            f11 = f10;
                        }
                        i12 = awaitingJobsCount;
                        iJob2 = currentJob;
                    }
                    try {
                        if (VERBOSE) {
                            Util.verbose("-> GOING TO SLEEP - " + ((Object) iJob));
                        }
                        Thread.sleep(50L);
                    } catch (InterruptedException unused) {
                    }
                    i11 = -1;
                }
            }
            SubMonitor.done(iProgressMonitor);
            if (VERBOSE) {
                Util.verbose("FINISHED  concurrent job - " + ((Object) iJob));
            }
        }
        boolean execute2 = iJob.execute(convert);
        SubMonitor.done(iProgressMonitor);
        if (VERBOSE) {
            Util.verbose("FINISHED  concurrent job - " + ((Object) iJob));
        }
        return execute2;
    }

    public abstract String processName();

    public synchronized void request(IJob iJob) {
        try {
            iJob.ensureReadyToRun();
            IJob[] iJobArr = this.awaitingJobs;
            int length = iJobArr.length;
            int i10 = this.jobEnd + 1;
            this.jobEnd = i10;
            if (i10 == length) {
                int i11 = this.jobStart;
                int i12 = i10 - i11;
                this.jobEnd = i12;
                if (i12 >= 50 || i12 >= i11) {
                    IJob[] iJobArr2 = new IJob[length * 2];
                    this.awaitingJobs = iJobArr2;
                    System.arraycopy(iJobArr, i11, iJobArr2, 0, i12);
                } else {
                    System.arraycopy(iJobArr, i11, iJobArr, 0, i12);
                    for (int i13 = this.jobStart; i13 < length; i13++) {
                        this.awaitingJobs[i13] = null;
                    }
                }
                this.jobStart = 0;
            }
            this.awaitingJobs[this.jobEnd] = iJob;
            if (VERBOSE) {
                Util.verbose("REQUEST   background job - " + ((Object) iJob));
                Util.verbose("AWAITING JOBS count: " + awaitingJobsCount());
            }
            notifyAll();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void reset() {
        Thread thread;
        if (VERBOSE) {
            Util.verbose("Reset");
        }
        synchronized (this) {
            thread = this.processingThread;
        }
        if (thread != null) {
            discardJobs(null);
            return;
        }
        synchronized (this) {
            Thread thread2 = new Thread(this, processName());
            this.processingThread = thread2;
            thread2.setDaemon(true);
            this.processingThread.setPriority(4);
            this.processingThread.setContextClassLoader(getClass().getClassLoader());
            this.processingThread.start();
        }
    }

    @Override
    public void run() {
        activateProcessing();
        try {
            this.progressJob = null;
            long j10 = -1;
            while (this.processingThread != null) {
                try {
                    synchronized (this) {
                        try {
                            if (this.processingThread != null) {
                                IJob currentJob = currentJob();
                                if (currentJob == null) {
                                    Job job = this.progressJob;
                                    if (job != null) {
                                        job.cancel();
                                        this.progressJob = null;
                                    }
                                    if (j10 < 0) {
                                        j10 = System.currentTimeMillis();
                                    } else {
                                        notifyIdle(System.currentTimeMillis() - j10);
                                    }
                                    wait();
                                } else {
                                    j10 = -1;
                                }
                                if (currentJob == null) {
                                    notifyIdle(System.currentTimeMillis() - j10);
                                    Thread.sleep(500L);
                                } else {
                                    if (VERBOSE) {
                                        Util.verbose(String.valueOf(awaitingJobsCount()) + " awaiting jobs");
                                        Util.verbose("STARTING background job - " + ((Object) currentJob));
                                    }
                                    try {
                                        this.executing = true;
                                        if (this.progressJob == null) {
                                            Job job2 = new Job(Messages.bind(Messages.jobmanager_indexing, "", "")) {
                                                public IStatus run(IProgressMonitor iProgressMonitor) {
                                                    IJob currentJob2 = JobManager.this.currentJob();
                                                    while (!iProgressMonitor.isCanceled() && currentJob2 != null) {
                                                        StringBuffer stringBuffer = new StringBuffer(Messages.jobmanager_indexing);
                                                        stringBuffer.append(Messages.bind(Messages.jobmanager_filesToIndex, currentJob2.getJobFamily(), Integer.toString(JobManager.this.awaitingJobsCount())));
                                                        String stringBuffer2 = stringBuffer.toString();
                                                        iProgressMonitor.subTask(stringBuffer2);
                                                        setName(stringBuffer2);
                                                        try {
                                                            Thread.sleep(500L);
                                                        } catch (InterruptedException unused) {
                                                        }
                                                        currentJob2 = JobManager.this.currentJob();
                                                    }
                                                    return Status.OK_STATUS;
                                                }
                                            };
                                            this.progressJob = job2;
                                            job2.setPriority(30);
                                            this.progressJob.setSystem(true);
                                            this.progressJob.schedule();
                                        }
                                        currentJob.execute(null);
                                        this.executing = false;
                                        if (VERBOSE) {
                                            Util.verbose("FINISHED background job - " + ((Object) currentJob));
                                        }
                                        moveToNextJob();
                                        if (this.awaitingClients == 0 && currentJob.waitNeeded()) {
                                            if (VERBOSE) {
                                                Util.verbose("WAITING after job - " + ((Object) currentJob));
                                            }
                                            Thread.sleep(5L);
                                        }
                                    } catch (Throwable th2) {
                                        this.executing = false;
                                        if (VERBOSE) {
                                            Util.verbose("FINISHED background job - " + ((Object) currentJob));
                                        }
                                        moveToNextJob();
                                        if (this.awaitingClients == 0 && currentJob.waitNeeded()) {
                                            if (VERBOSE) {
                                                Util.verbose("WAITING after job - " + ((Object) currentJob));
                                            }
                                            Thread.sleep(5L);
                                        }
                                        throw th2;
                                    }
                                }
                            }
                        } finally {
                        }
                    }
                } catch (InterruptedException unused) {
                }
            }
        } catch (Error e10) {
            if (this.processingThread != null && !(e10 instanceof ThreadDeath)) {
                Util.log(e10, "Background Indexer Crash Recovery");
                discardJobs(null);
                this.processingThread = null;
                reset();
            }
            throw e10;
        } catch (RuntimeException e11) {
            if (this.processingThread != null) {
                Util.log(e11, "Background Indexer Crash Recovery");
                discardJobs(null);
                this.processingThread = null;
                reset();
            }
            throw e11;
        }
    }

    public void shutdown() {
        if (VERBOSE) {
            Util.verbose("Shutdown");
        }
        disable();
        discardJobs(null);
        Thread thread = this.processingThread;
        if (thread != null) {
            try {
                synchronized (this) {
                    this.processingThread = null;
                    notifyAll();
                }
                thread.join();
            } catch (InterruptedException unused) {
                return;
            }
        }
        Job job = this.progressJob;
        if (job != null) {
            job.cancel();
            job.join();
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(10);
        stringBuffer.append("Enable count:");
        stringBuffer.append(this.enableCount);
        stringBuffer.append('\n');
        int i10 = (this.jobEnd - this.jobStart) + 1;
        stringBuffer.append("Jobs in queue:");
        stringBuffer.append(i10);
        stringBuffer.append('\n');
        for (int i11 = 0; i11 < i10 && i11 < 15; i11++) {
            stringBuffer.append(i11);
            stringBuffer.append(" - job[" + i11 + "]: ");
            stringBuffer.append((Object) this.awaitingJobs[this.jobStart + i11]);
            stringBuffer.append('\n');
        }
        return stringBuffer.toString();
    }
}
