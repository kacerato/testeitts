package com.tonyodev.fetch2.downloader;

import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.EnqueueAction;
import com.tonyodev.fetch2.Error;
import com.tonyodev.fetch2.FetchErrorUtils;
import com.tonyodev.fetch2.database.DownloadInfo;
import com.tonyodev.fetch2.downloader.FileDownloader;
import com.tonyodev.fetch2.exception.FetchException;
import com.tonyodev.fetch2.helper.FileDownloaderDelegate;
import com.tonyodev.fetch2.provider.NetworkInfoProvider;
import com.tonyodev.fetch2.util.FetchUtils;
import com.tonyodev.fetch2core.AverageCalculator;
import com.tonyodev.fetch2core.DownloadBlock;
import com.tonyodev.fetch2core.DownloadBlockInfo;
import com.tonyodev.fetch2core.Downloader;
import com.tonyodev.fetch2core.FetchCoreUtils;
import com.tonyodev.fetch2core.FetchErrorStrings;
import com.tonyodev.fetch2core.FileSlice;
import com.tonyodev.fetch2core.FileSliceInfo;
import com.tonyodev.fetch2core.InterruptMonitor;
import com.tonyodev.fetch2core.Logger;
import com.tonyodev.fetch2core.OutputResourceWrapper;
import com.tonyodev.fetch2core.StorageResolver;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.I;
import nf.K;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.G;
import pf.H;

@t0({"SMAP\nParallelFileDownloaderImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParallelFileDownloaderImpl.kt\ncom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,549:1\n766#2:550\n857#2,2:551\n1549#2:553\n1620#2,3:554\n1855#2,2:557\n1855#2,2:559\n*S KotlinDebug\n*F\n+ 1 ParallelFileDownloaderImpl.kt\ncom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl\n*L\n122#1:550\n122#1:551,2\n126#1:553\n126#1:554,3\n142#1:557,2\n178#1:559,2\n*E\n"})
public final class ParallelFileDownloaderImpl implements FileDownloader {
    private volatile int actionsCounter;
    private int actionsTotal;
    private double averageDownloadedBytesPerSecond;

    @Nullable
    private FileDownloader.Delegate delegate;

    @NotNull
    private final I downloadInfo$delegate;
    private volatile long downloaded;

    @NotNull
    private final Downloader<?, ?> downloader;
    private long estimatedTimeRemainingInMilliseconds;

    @Nullable
    private ExecutorService executorService;

    @NotNull
    private List<FileSlice> fileSlices;

    @NotNull
    private final String fileTempDir;
    private final boolean hashCheckingEnabled;

    @NotNull
    private final Download initialDownload;

    @NotNull
    private final ParallelFileDownloaderImpl$interruptMonitor$1 interruptMonitor;
    private volatile boolean interrupted;

    @NotNull
    private final Object lock;

    @NotNull
    private final Logger logger;

    @NotNull
    private final AverageCalculator movingAverageCalculator;

    @NotNull
    private final NetworkInfoProvider networkInfoProvider;

    @Nullable
    private OutputResourceWrapper outputResourceWrapper;
    private final boolean preAllocateFileOnCreation;
    private final long progressReportingIntervalMillis;
    private final boolean retryOnNetworkGain;

    @NotNull
    private final StorageResolver storageResolver;
    private volatile boolean terminated;

    @Nullable
    private volatile Throwable throwable;
    private volatile long total;
    private int totalDownloadBlocks;
    private volatile boolean totalUnknown;

    /* JADX WARN: Type inference failed for: r2v6, types: [com.tonyodev.fetch2.downloader.ParallelFileDownloaderImpl$interruptMonitor$1] */
    public ParallelFileDownloaderImpl(@NotNull Download initialDownload, @NotNull Downloader<?, ?> downloader, long j10, @NotNull Logger logger, @NotNull NetworkInfoProvider networkInfoProvider, boolean z10, @NotNull String fileTempDir, boolean z11, @NotNull StorageResolver storageResolver, boolean z12) {
        M.p(initialDownload, "initialDownload");
        M.p(downloader, "downloader");
        M.p(logger, "logger");
        M.p(networkInfoProvider, "networkInfoProvider");
        M.p(fileTempDir, "fileTempDir");
        M.p(storageResolver, "storageResolver");
        this.initialDownload = initialDownload;
        this.downloader = downloader;
        this.progressReportingIntervalMillis = j10;
        this.logger = logger;
        this.networkInfoProvider = networkInfoProvider;
        this.retryOnNetworkGain = z10;
        this.fileTempDir = fileTempDir;
        this.hashCheckingEnabled = z11;
        this.storageResolver = storageResolver;
        this.preAllocateFileOnCreation = z12;
        this.downloadInfo$delegate = K.a(new ParallelFileDownloaderImpl$downloadInfo$2(this));
        this.total = -1L;
        this.movingAverageCalculator = new AverageCalculator(5);
        this.estimatedTimeRemainingInMilliseconds = -1L;
        this.lock = new Object();
        this.fileSlices = H.J();
        this.interruptMonitor = new InterruptMonitor() {
            @Override
            public boolean isInterrupted() {
                return ParallelFileDownloaderImpl.this.getInterrupted();
            }
        };
    }

    private final void downloadSliceFiles(Downloader.ServerRequest serverRequest, List<FileSlice> list) {
        this.actionsCounter = 0;
        this.actionsTotal = list.size();
        if (!this.storageResolver.fileExists(serverRequest.getFile())) {
            this.storageResolver.createFile(serverRequest.getFile(), this.initialDownload.getEnqueueAction() == EnqueueAction.INCREMENT_FILE_NAME);
        }
        if (this.preAllocateFileOnCreation) {
            this.storageResolver.preAllocateFile(serverRequest.getFile(), getDownloadInfo().getTotal());
        }
        OutputResourceWrapper requestOutputResourceWrapper = this.storageResolver.getRequestOutputResourceWrapper(serverRequest);
        this.outputResourceWrapper = requestOutputResourceWrapper;
        if (requestOutputResourceWrapper != null) {
            requestOutputResourceWrapper.setWriteOffset(0L);
        }
        for (final FileSlice fileSlice : list) {
            if (getInterrupted() || getTerminated()) {
                return;
            }
            ExecutorService executorService = this.executorService;
            if (executorService != null) {
                executorService.execute(new Runnable() {
                    @Override
                    public final void run() {
                        ParallelFileDownloaderImpl.downloadSliceFiles$lambda$6(ParallelFileDownloaderImpl.this, fileSlice);
                    }
                });
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:128:0x0220, code lost:
    
        if (r5.isSuccessful() != false) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0226, code lost:
    
        if (r27.getInterrupted() != false) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x022c, code lost:
    
        if (r27.getTerminated() == false) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0236, code lost:
    
        throw new com.tonyodev.fetch2.exception.FetchException(com.tonyodev.fetch2core.FetchErrorStrings.RESPONSE_NOT_SUCCESSFUL);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x024e, code lost:
    
        r27.downloader.disconnect(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0254, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0255, code lost:
    
        r27.logger.e("FileDownloader", r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:165:0x02b7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x02a7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0136 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void downloadSliceFiles$lambda$6(ParallelFileDownloaderImpl this$0, FileSlice fileSlice) {
        Throwable th2;
        RandomAccessFile randomAccessFile;
        Exception exc;
        int i10;
        int i11;
        int i12;
        M.p(this$0, "this$0");
        M.p(fileSlice, "$fileSlice");
        try {
            Thread.currentThread().setName(this$0.getDownloadInfo().getNamespace() + "-" + this$0.getDownloadInfo().getId() + "-Slice-" + fileSlice.getPosition());
        } catch (Exception unused) {
        }
        DownloadBlockInfo downloadBlockInfo = new DownloadBlockInfo();
        downloadBlockInfo.setDownloadId(fileSlice.getId());
        downloadBlockInfo.setBlockPosition(fileSlice.getPosition());
        downloadBlockInfo.setDownloadedBytes(fileSlice.getDownloaded());
        downloadBlockInfo.setStartByte(fileSlice.getStartBytes());
        downloadBlockInfo.setEndByte(fileSlice.getEndBytes());
        Downloader.ServerRequest requestForDownload$default = FetchUtils.getRequestForDownload$default(this$0.getDownloadInfo(), fileSlice.getDownloaded() + fileSlice.getStartBytes(), 0L, null, fileSlice.getPosition() + 1, 12, null);
        AutoCloseable autoCloseable = null;
        try {
            try {
                randomAccessFile = new RandomAccessFile(FetchCoreUtils.getFile(FetchUtils.getDownloadedInfoFilePath(fileSlice.getId(), fileSlice.getPosition(), this$0.fileTempDir)), "rw");
                try {
                    Downloader.Response execute = this$0.downloader.execute(requestForDownload$default, this$0.interruptMonitor);
                    if (!this$0.getTerminated() && !this$0.getInterrupted() && execute != null && execute.isSuccessful()) {
                        int requestBufferSize = this$0.downloader.getRequestBufferSize(requestForDownload$default);
                        byte[] bArr = new byte[requestBufferSize];
                        InputStream byteStream = execute.getByteStream();
                        int read = byteStream != null ? byteStream.read(bArr, 0, requestBufferSize) : -1;
                        long j10 = 0;
                        long endBytes = fileSlice.getEndBytes() < 1 ? 0L : fileSlice.getEndBytes();
                        long startBytes = endBytes - (fileSlice.getStartBytes() + fileSlice.getDownloaded());
                        long nanoTime = System.nanoTime();
                        while (true) {
                            if ((!this$0.totalUnknown && startBytes <= j10) || read == -1 || this$0.getInterrupted() || this$0.getTerminated()) {
                                break;
                            }
                            if (!this$0.totalUnknown && read > startBytes) {
                                read = (int) startBytes;
                                i10 = -1;
                                long j11 = startBytes;
                                long startBytes2 = fileSlice.getStartBytes() + fileSlice.getDownloaded();
                                synchronized (this$0.lock) {
                                    try {
                                        if (this$0.getInterrupted() || this$0.getTerminated()) {
                                            i11 = i10;
                                        } else {
                                            OutputResourceWrapper outputResourceWrapper = this$0.outputResourceWrapper;
                                            if (outputResourceWrapper != null) {
                                                outputResourceWrapper.setWriteOffset(startBytes2);
                                            }
                                            OutputResourceWrapper outputResourceWrapper2 = this$0.outputResourceWrapper;
                                            if (outputResourceWrapper2 != null) {
                                                outputResourceWrapper2.write(bArr, 0, read);
                                            }
                                            if (this$0.getInterrupted() || this$0.getTerminated()) {
                                                i11 = i10;
                                            } else {
                                                i11 = i10;
                                                long j12 = read;
                                                fileSlice.setDownloaded(fileSlice.getDownloaded() + j12);
                                                randomAccessFile.seek(0L);
                                                randomAccessFile.setLength(0L);
                                                randomAccessFile.writeLong(fileSlice.getDownloaded());
                                                this$0.downloaded += j12;
                                            }
                                            if (FetchCoreUtils.hasIntervalTimeElapsed(nanoTime, System.nanoTime(), this$0.progressReportingIntervalMillis)) {
                                                if (!this$0.getInterrupted() && !this$0.getTerminated()) {
                                                    downloadBlockInfo.setDownloadedBytes(fileSlice.getDownloaded());
                                                    FileDownloader.Delegate delegate = this$0.getDelegate();
                                                    if (delegate != null) {
                                                        delegate.onDownloadBlockUpdated(this$0.getDownloadInfo(), downloadBlockInfo, this$0.totalDownloadBlocks);
                                                    }
                                                }
                                                nanoTime = System.nanoTime();
                                            }
                                        }
                                        P0 p02 = P0.f98194a;
                                    } finally {
                                    }
                                }
                                if (this$0.getInterrupted() || this$0.getTerminated()) {
                                    i12 = i11;
                                } else {
                                    i12 = i11;
                                    if (i12 != -1) {
                                        InputStream byteStream2 = execute.getByteStream();
                                        int read2 = byteStream2 != null ? byteStream2.read(bArr, 0, requestBufferSize) : -1;
                                        if (this$0.totalUnknown) {
                                            read = read2;
                                            startBytes = j11;
                                            j10 = 0;
                                        } else {
                                            read = read2;
                                            startBytes = endBytes - (fileSlice.getStartBytes() + fileSlice.getDownloaded());
                                            j10 = 0;
                                        }
                                    }
                                }
                                read = i12;
                                startBytes = j11;
                                j10 = 0;
                            }
                            i10 = read;
                            long j112 = startBytes;
                            long startBytes22 = fileSlice.getStartBytes() + fileSlice.getDownloaded();
                            synchronized (this$0.lock) {
                            }
                        }
                    } else {
                        if (execute == null && !this$0.getInterrupted() && !this$0.getTerminated()) {
                            throw new FetchException(FetchErrorStrings.EMPTY_RESPONSE_BODY);
                        }
                        if (!this$0.getInterrupted() && !this$0.getTerminated()) {
                            throw new FetchException("unknown");
                        }
                    }
                    try {
                        randomAccessFile.close();
                    } catch (Exception e10) {
                        exc = e10;
                        this$0.logger.e("FileDownloader", exc);
                        this$0.incrementActionCompletedCount();
                    }
                } catch (Exception e11) {
                    e = e11;
                    this$0.logger.e("FileDownloader downloads slice " + ((Object) fileSlice), e);
                    this$0.throwable = e;
                    if (0 != 0) {
                        try {
                            this$0.downloader.disconnect(null);
                        } catch (Exception e12) {
                            this$0.logger.e("FileDownloader", e12);
                        }
                    }
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (Exception e13) {
                            exc = e13;
                            this$0.logger.e("FileDownloader", exc);
                            this$0.incrementActionCompletedCount();
                        }
                    }
                    this$0.incrementActionCompletedCount();
                }
            } catch (Throwable th3) {
                th2 = th3;
                if (0 != 0) {
                    try {
                        this$0.downloader.disconnect(null);
                    } catch (Exception e14) {
                        this$0.logger.e("FileDownloader", e14);
                    }
                }
                if (0 != 0) {
                    try {
                        autoCloseable.close();
                    } catch (Exception e15) {
                        this$0.logger.e("FileDownloader", e15);
                    }
                }
                this$0.incrementActionCompletedCount();
                throw th2;
            }
        } catch (Exception e16) {
            e = e16;
            randomAccessFile = null;
        } catch (Throwable th4) {
            th2 = th4;
            if (0 != 0) {
            }
            if (0 != 0) {
            }
            this$0.incrementActionCompletedCount();
            throw th2;
        }
        this$0.incrementActionCompletedCount();
    }

    private final long getAverageDownloadedBytesPerSecond() {
        double d10 = this.averageDownloadedBytesPerSecond;
        if (d10 < 1.0d) {
            return 0L;
        }
        return (long) Math.ceil(d10);
    }

    private final FileSliceInfo getChuckInfo(Downloader.ServerRequest serverRequest) {
        Integer fileSlicingCount = this.downloader.getFileSlicingCount(serverRequest, this.total);
        return FetchUtils.getFileSliceInfo(fileSlicingCount != null ? fileSlicingCount.intValue() : -1, this.total);
    }

    private final DownloadInfo getDownloadInfo() {
        return (DownloadInfo) this.downloadInfo$delegate.getValue();
    }

    private final List<FileSlice> getFileSliceList(boolean z10, Downloader.ServerRequest serverRequest) {
        if (!this.storageResolver.fileExists(getDownloadInfo().getFile())) {
            FetchUtils.deleteAllInFolderForId(getDownloadInfo().getId(), this.fileTempDir);
        }
        int previousSliceCount = FetchUtils.getPreviousSliceCount(getDownloadInfo().getId(), this.fileTempDir);
        int i10 = 1;
        if (!z10 || this.totalUnknown) {
            if (previousSliceCount != 1) {
                FetchUtils.deleteAllInFolderForId(getDownloadInfo().getId(), this.fileTempDir);
            }
            FetchUtils.saveCurrentSliceCount(getDownloadInfo().getId(), 1, this.fileTempDir);
            FileSlice fileSlice = new FileSlice(getDownloadInfo().getId(), 1, 0L, this.total, FetchUtils.getSavedDownloadedInfo(getDownloadInfo().getId(), 1, this.fileTempDir));
            this.downloaded += fileSlice.getDownloaded();
            return G.l(fileSlice);
        }
        FileSliceInfo chuckInfo = getChuckInfo(serverRequest);
        if (previousSliceCount != chuckInfo.getSlicingCount()) {
            FetchUtils.deleteAllInFolderForId(getDownloadInfo().getId(), this.fileTempDir);
        }
        FetchUtils.saveCurrentSliceCount(getDownloadInfo().getId(), chuckInfo.getSlicingCount(), this.fileTempDir);
        ArrayList arrayList = new ArrayList();
        int slicingCount = chuckInfo.getSlicingCount();
        if (1 > slicingCount) {
            return arrayList;
        }
        long j10 = 0;
        while (true) {
            long j11 = j10;
            if (getInterrupted() || getTerminated()) {
                return arrayList;
            }
            j10 = chuckInfo.getSlicingCount() == i10 ? this.total : chuckInfo.getBytesPerFileSlice() + j11;
            FileSlice fileSlice2 = new FileSlice(getDownloadInfo().getId(), i10, j11, j10, FetchUtils.getSavedDownloadedInfo(getDownloadInfo().getId(), i10, this.fileTempDir));
            this.downloaded += fileSlice2.getDownloaded();
            arrayList.add(fileSlice2);
            if (i10 == slicingCount) {
                return arrayList;
            }
            i10++;
        }
    }

    private final void incrementActionCompletedCount() {
        synchronized (this.lock) {
            this.actionsCounter++;
            P0 p02 = P0.f98194a;
        }
    }

    private final boolean isDownloadComplete() {
        return ((this.downloaded > 0 && this.total > 0) || this.totalUnknown) && this.downloaded >= this.total;
    }

    private final void setIsTotalUnknown(Downloader.Response response) {
        if (response.isSuccessful() && response.getContentLength() == -1) {
            this.totalUnknown = true;
        }
    }

    private final void throwExceptionIfFound() {
        Throwable th2 = this.throwable;
        if (th2 != null) {
            throw th2;
        }
    }

    private final void waitAndPerformProgressReporting() {
        long j10 = this.downloaded;
        long nanoTime = System.nanoTime();
        long nanoTime2 = System.nanoTime();
        while (this.actionsCounter != this.actionsTotal && !getInterrupted() && !getTerminated()) {
            getDownloadInfo().setDownloaded(this.downloaded);
            getDownloadInfo().setTotal(this.total);
            boolean hasIntervalTimeElapsed = FetchCoreUtils.hasIntervalTimeElapsed(nanoTime2, System.nanoTime(), 1000L);
            if (hasIntervalTimeElapsed) {
                this.movingAverageCalculator.add(this.downloaded - j10);
                this.averageDownloadedBytesPerSecond = AverageCalculator.getMovingAverageWithWeightOnRecentValues$default(this.movingAverageCalculator, 0, 1, null);
                this.estimatedTimeRemainingInMilliseconds = FetchCoreUtils.calculateEstimatedTimeRemainingInMilliseconds(this.downloaded, this.total, getAverageDownloadedBytesPerSecond());
                j10 = this.downloaded;
            }
            if (FetchCoreUtils.hasIntervalTimeElapsed(nanoTime, System.nanoTime(), this.progressReportingIntervalMillis)) {
                synchronized (this.lock) {
                    try {
                        if (!getInterrupted() && !getTerminated()) {
                            getDownloadInfo().setDownloaded(this.downloaded);
                            getDownloadInfo().setTotal(this.total);
                            FileDownloader.Delegate delegate = getDelegate();
                            if (delegate != null) {
                                delegate.saveDownloadProgress(getDownloadInfo());
                            }
                            getDownloadInfo().setEtaInMilliSeconds(this.estimatedTimeRemainingInMilliseconds);
                            getDownloadInfo().setDownloadedBytesPerSecond(getAverageDownloadedBytesPerSecond());
                            FileDownloader.Delegate delegate2 = getDelegate();
                            if (delegate2 != null) {
                                delegate2.onProgress(getDownloadInfo(), getDownloadInfo().getEtaInMilliSeconds(), getDownloadInfo().getDownloadedBytesPerSecond());
                            }
                        }
                        P0 p02 = P0.f98194a;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                nanoTime = System.nanoTime();
            }
            if (hasIntervalTimeElapsed) {
                nanoTime2 = System.nanoTime();
            }
            try {
                Thread.sleep(this.progressReportingIntervalMillis);
            } catch (InterruptedException e10) {
                this.logger.e("FileDownloader", e10);
            }
        }
    }

    @Override
    public boolean getCompletedDownload() {
        return isDownloadComplete();
    }

    @Override
    @Nullable
    public FileDownloader.Delegate getDelegate() {
        return this.delegate;
    }

    @Override
    @NotNull
    public Download getDownload() {
        getDownloadInfo().setDownloaded(this.downloaded);
        getDownloadInfo().setTotal(this.total);
        return getDownloadInfo();
    }

    @Override
    public boolean getInterrupted() {
        return this.interrupted;
    }

    @Override
    public boolean getTerminated() {
        return this.terminated;
    }

    /* JADX WARN: Code restructure failed: missing block: B:170:0x01d8, code lost:
    
        if (r4.isSuccessful() != false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x01de, code lost:
    
        if (getInterrupted() != false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x01e4, code lost:
    
        if (getTerminated() != false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x01ea, code lost:
    
        if (isDownloadComplete() == false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x01f4, code lost:
    
        throw new com.tonyodev.fetch2.exception.FetchException(com.tonyodev.fetch2core.FetchErrorStrings.RESPONSE_NOT_SUCCESSFUL);
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        FileDownloader.Delegate delegate;
        try {
            try {
                this.downloaded = this.initialDownload.getDownloaded();
                this.total = this.initialDownload.getTotal();
                getDownloadInfo().setDownloaded(this.downloaded);
                getDownloadInfo().setTotal(this.total);
                Downloader.ServerRequest requestForDownload = this.downloader.getHeadRequestMethodSupported(FetchUtils.getRequestForDownload$default(this.initialDownload, null, 2, null)) ? FetchUtils.getRequestForDownload(this.initialDownload, FetchCoreUtils.HEAD_REQUEST_METHOD) : FetchUtils.getRequestForDownload$default(this.initialDownload, null, 2, null);
                Downloader.Response execute = this.downloader.execute(requestForDownload, this.interruptMonitor);
                if (execute != null) {
                    setIsTotalUnknown(execute);
                }
                long j10 = 0;
                if (getInterrupted() || getTerminated() || execute == null || !execute.isSuccessful()) {
                    if (execute == null && !getInterrupted() && !getTerminated() && !isDownloadComplete()) {
                        throw new FetchException(FetchErrorStrings.EMPTY_RESPONSE_BODY);
                    }
                    if (!getInterrupted() && !getTerminated() && !isDownloadComplete()) {
                        throw new FetchException("unknown");
                    }
                } else {
                    this.total = execute.getContentLength();
                    if (!this.totalUnknown && this.total <= 0) {
                        throw new FetchException(FetchErrorStrings.EMPTY_RESPONSE_BODY);
                    }
                    this.downloaded = 0L;
                    getDownloadInfo().setDownloaded(this.downloaded);
                    getDownloadInfo().setTotal(this.total);
                    List<FileSlice> fileSliceList = getFileSliceList(execute.getAcceptsRanges(), requestForDownload);
                    this.fileSlices = fileSliceList;
                    this.totalDownloadBlocks = fileSliceList.size();
                    try {
                        this.downloader.disconnect(execute);
                    } catch (Exception e10) {
                        this.logger.e("FileDownloader", e10);
                    }
                    List<FileSlice> list = this.fileSlices;
                    List<FileSlice> arrayList = new ArrayList<>();
                    for (FileSlice fileSlice : list) {
                        if (!fileSlice.isDownloaded()) {
                            arrayList.add(fileSlice);
                        }
                    }
                    if (!getInterrupted() && !getTerminated()) {
                        getDownloadInfo().setDownloaded(this.downloaded);
                        getDownloadInfo().setTotal(this.total);
                        List<FileSlice> list2 = this.fileSlices;
                        List<? extends DownloadBlock> arrayList2 = new ArrayList<>(pf.I.d0(list2, 10));
                        for (FileSlice fileSlice2 : list2) {
                            DownloadBlockInfo downloadBlockInfo = new DownloadBlockInfo();
                            downloadBlockInfo.setDownloadId(fileSlice2.getId());
                            downloadBlockInfo.setBlockPosition(fileSlice2.getPosition());
                            downloadBlockInfo.setDownloadedBytes(fileSlice2.getDownloaded());
                            downloadBlockInfo.setStartByte(fileSlice2.getStartBytes());
                            downloadBlockInfo.setEndByte(fileSlice2.getEndBytes());
                            arrayList2.add(downloadBlockInfo);
                        }
                        if (!getInterrupted() && !getTerminated()) {
                            getDownloadInfo().setEtaInMilliSeconds(-1L);
                            getDownloadInfo().setDownloadedBytesPerSecond(-1L);
                            FileDownloader.Delegate delegate2 = getDelegate();
                            if (delegate2 != null) {
                                delegate2.onStarted(getDownloadInfo(), arrayList2, this.totalDownloadBlocks);
                            }
                            for (DownloadBlock downloadBlock : arrayList2) {
                                FileDownloader.Delegate delegate3 = getDelegate();
                                if (delegate3 != null) {
                                    delegate3.onDownloadBlockUpdated(getDownloadInfo(), downloadBlock, this.totalDownloadBlocks);
                                }
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            this.executorService = Executors.newFixedThreadPool(arrayList.size());
                        }
                        downloadSliceFiles(requestForDownload, arrayList);
                        waitAndPerformProgressReporting();
                        getDownloadInfo().setDownloaded(this.downloaded);
                        getDownloadInfo().setTotal(this.total);
                    }
                }
                getDownloadInfo().setDownloaded(this.downloaded);
                getDownloadInfo().setTotal(this.total);
                throwExceptionIfFound();
                if (!isDownloadComplete() && !getTerminated() && !getInterrupted()) {
                    FileDownloader.Delegate delegate4 = getDelegate();
                    if (delegate4 != null) {
                        delegate4.saveDownloadProgress(getDownloadInfo());
                    }
                    getDownloadInfo().setEtaInMilliSeconds(this.estimatedTimeRemainingInMilliseconds);
                    getDownloadInfo().setDownloadedBytesPerSecond(getAverageDownloadedBytesPerSecond());
                    FileDownloader.Delegate delegate5 = getDelegate();
                    if (delegate5 != null) {
                        delegate5.onProgress(getDownloadInfo(), getDownloadInfo().getEtaInMilliSeconds(), getDownloadInfo().getDownloadedBytesPerSecond());
                    }
                } else if (!getInterrupted() && !getTerminated() && isDownloadComplete()) {
                    if (this.totalUnknown) {
                        this.total = this.downloaded;
                        getDownloadInfo().setDownloaded(this.downloaded);
                        getDownloadInfo().setTotal(this.total);
                    } else {
                        Iterator<FileSlice> it = this.fileSlices.iterator();
                        while (it.hasNext()) {
                            j10 += it.next().getDownloaded();
                        }
                        if (j10 != this.total) {
                            this.throwable = new FetchException(FetchErrorStrings.DOWNLOAD_INCOMPLETE);
                            throwExceptionIfFound();
                        }
                    }
                    if (!getTerminated() && !getInterrupted() && (delegate = getDelegate()) != null) {
                        delegate.saveDownloadProgress(getDownloadInfo());
                    }
                    if (!this.hashCheckingEnabled) {
                        FetchUtils.deleteAllInFolderForId(getDownloadInfo().getId(), this.fileTempDir);
                        if (!getInterrupted() && !getTerminated()) {
                            getDownloadInfo().setEtaInMilliSeconds(this.estimatedTimeRemainingInMilliseconds);
                            getDownloadInfo().setDownloadedBytesPerSecond(getAverageDownloadedBytesPerSecond());
                            Download copy = getDownloadInfo().copy();
                            FileDownloader.Delegate delegate6 = getDelegate();
                            if (delegate6 != null) {
                                delegate6.onProgress(getDownloadInfo(), getDownloadInfo().getEtaInMilliSeconds(), getDownloadInfo().getDownloadedBytesPerSecond());
                            }
                            getDownloadInfo().setEtaInMilliSeconds(-1L);
                            getDownloadInfo().setDownloadedBytesPerSecond(-1L);
                            FileDownloader.Delegate delegate7 = getDelegate();
                            if (delegate7 != null) {
                                delegate7.onComplete(copy);
                            }
                        }
                    } else {
                        if (execute == null || !this.downloader.verifyContentHash(execute.getRequest(), execute.getHash())) {
                            FetchUtils.deleteAllInFolderForId(getDownloadInfo().getId(), this.fileTempDir);
                            throw new FetchException(FetchErrorStrings.INVALID_CONTENT_HASH);
                        }
                        FetchUtils.deleteAllInFolderForId(getDownloadInfo().getId(), this.fileTempDir);
                        if (!getInterrupted() && !getTerminated()) {
                            getDownloadInfo().setEtaInMilliSeconds(this.estimatedTimeRemainingInMilliseconds);
                            getDownloadInfo().setDownloadedBytesPerSecond(getAverageDownloadedBytesPerSecond());
                            Download copy2 = getDownloadInfo().copy();
                            FileDownloader.Delegate delegate8 = getDelegate();
                            if (delegate8 != null) {
                                delegate8.onProgress(getDownloadInfo(), getDownloadInfo().getEtaInMilliSeconds(), getDownloadInfo().getDownloadedBytesPerSecond());
                            }
                            getDownloadInfo().setEtaInMilliSeconds(-1L);
                            getDownloadInfo().setDownloadedBytesPerSecond(-1L);
                            FileDownloader.Delegate delegate9 = getDelegate();
                            if (delegate9 != null) {
                                delegate9.onComplete(copy2);
                            }
                        }
                    }
                }
                try {
                    ExecutorService executorService = this.executorService;
                    if (executorService != null) {
                        executorService.shutdown();
                    }
                } catch (Exception e11) {
                    this.logger.e("FileDownloader", e11);
                }
                try {
                    OutputResourceWrapper outputResourceWrapper = this.outputResourceWrapper;
                    if (outputResourceWrapper != null) {
                        outputResourceWrapper.close();
                    }
                } catch (Exception e12) {
                    this.logger.e("FileDownloader", e12);
                }
                if (execute != null) {
                    try {
                        this.downloader.disconnect(execute);
                    } catch (Exception e13) {
                        e = e13;
                        this.logger.e("FileDownloader", e);
                        setTerminated(true);
                    }
                }
            } catch (Throwable th2) {
                try {
                    ExecutorService executorService2 = this.executorService;
                    if (executorService2 != null) {
                        executorService2.shutdown();
                    }
                } catch (Exception e14) {
                    this.logger.e("FileDownloader", e14);
                }
                try {
                    OutputResourceWrapper outputResourceWrapper2 = this.outputResourceWrapper;
                    if (outputResourceWrapper2 != null) {
                        outputResourceWrapper2.close();
                    }
                } catch (Exception e15) {
                    this.logger.e("FileDownloader", e15);
                }
                if (0 != 0) {
                    try {
                        this.downloader.disconnect(null);
                    } catch (Exception e16) {
                        this.logger.e("FileDownloader", e16);
                    }
                }
                setTerminated(true);
                throw th2;
            }
        } catch (Exception e17) {
            if (!getInterrupted() && !getTerminated()) {
                this.logger.e("FileDownloader download:" + ((Object) getDownload()), e17);
                Error errorFromThrowable = FetchErrorUtils.getErrorFromThrowable(e17);
                errorFromThrowable.setThrowable(e17);
                if (0 != 0) {
                    errorFromThrowable.setHttpResponse(FetchCoreUtils.copyDownloadResponseNoStream(null));
                }
                if (this.retryOnNetworkGain) {
                    boolean z10 = !this.networkInfoProvider.isNetworkAvailable();
                    int i10 = 1;
                    while (true) {
                        if (i10 >= 11) {
                            break;
                        }
                        try {
                            Thread.sleep(500L);
                            if (!this.networkInfoProvider.isNetworkAvailable()) {
                                z10 = true;
                                break;
                            }
                            i10++;
                        } catch (InterruptedException e18) {
                            this.logger.e("FileDownloader", e18);
                        }
                    }
                    if (z10) {
                        errorFromThrowable = Error.NO_NETWORK_CONNECTION;
                    }
                }
                getDownloadInfo().setDownloaded(this.downloaded);
                getDownloadInfo().setTotal(this.total);
                getDownloadInfo().setError(errorFromThrowable);
                if (!getTerminated() && !getInterrupted()) {
                    getDownloadInfo().setEtaInMilliSeconds(-1L);
                    getDownloadInfo().setDownloadedBytesPerSecond(-1L);
                    FileDownloader.Delegate delegate10 = getDelegate();
                    if (delegate10 != null) {
                        delegate10.onError(getDownloadInfo(), errorFromThrowable, e17);
                    }
                }
            }
            try {
                ExecutorService executorService3 = this.executorService;
                if (executorService3 != null) {
                    executorService3.shutdown();
                }
            } catch (Exception e19) {
                this.logger.e("FileDownloader", e19);
            }
            try {
                OutputResourceWrapper outputResourceWrapper3 = this.outputResourceWrapper;
                if (outputResourceWrapper3 != null) {
                    outputResourceWrapper3.close();
                }
            } catch (Exception e20) {
                this.logger.e("FileDownloader", e20);
            }
            if (0 != 0) {
                try {
                    this.downloader.disconnect(null);
                } catch (Exception e21) {
                    e = e21;
                    this.logger.e("FileDownloader", e);
                    setTerminated(true);
                }
            }
        }
        setTerminated(true);
    }

    @Override
    public void setDelegate(@Nullable FileDownloader.Delegate delegate) {
        this.delegate = delegate;
    }

    @Override
    public void setInterrupted(boolean z10) {
        FileDownloader.Delegate delegate = getDelegate();
        FileDownloaderDelegate fileDownloaderDelegate = delegate instanceof FileDownloaderDelegate ? (FileDownloaderDelegate) delegate : null;
        if (fileDownloaderDelegate != null) {
            fileDownloaderDelegate.setInterrupted(z10);
        }
        this.interrupted = z10;
    }

    @Override
    public void setTerminated(boolean z10) {
        FileDownloader.Delegate delegate = getDelegate();
        FileDownloaderDelegate fileDownloaderDelegate = delegate instanceof FileDownloaderDelegate ? (FileDownloaderDelegate) delegate : null;
        if (fileDownloaderDelegate != null) {
            fileDownloaderDelegate.setInterrupted(z10);
        }
        this.terminated = z10;
    }
}
