package com.tonyodev.fetch2.downloader;

import F2.d;
import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.EnqueueAction;
import com.tonyodev.fetch2.Error;
import com.tonyodev.fetch2.FetchErrorUtils;
import com.tonyodev.fetch2.database.DownloadInfo;
import com.tonyodev.fetch2.downloader.FileDownloader;
import com.tonyodev.fetch2.exception.FetchException;
import com.tonyodev.fetch2.helper.FileDownloaderDelegate;
import com.tonyodev.fetch2.provider.NetworkInfoProvider;
import com.tonyodev.fetch2core.AverageCalculator;
import com.tonyodev.fetch2core.DownloadBlockInfo;
import com.tonyodev.fetch2core.Downloader;
import com.tonyodev.fetch2core.FetchCoreUtils;
import com.tonyodev.fetch2core.FetchErrorStrings;
import com.tonyodev.fetch2core.InterruptMonitor;
import com.tonyodev.fetch2core.Logger;
import com.tonyodev.fetch2core.OutputResourceWrapper;
import com.tonyodev.fetch2core.StorageResolver;
import java.io.BufferedInputStream;
import java.util.Map;
import kotlin.jvm.internal.M;
import nf.I;
import nf.K;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.G;
import pf.o0;

public final class SequentialFileDownloaderImpl implements FileDownloader {
    private double averageDownloadedBytesPerSecond;

    @Nullable
    private FileDownloader.Delegate delegate;

    @NotNull
    private final DownloadBlockInfo downloadBlock;

    @NotNull
    private final I downloadInfo$delegate;
    private volatile long downloaded;

    @NotNull
    private final Downloader<?, ?> downloader;
    private long estimatedTimeRemainingInMilliseconds;
    private final boolean hashCheckingEnabled;

    @NotNull
    private final Download initialDownload;

    @NotNull
    private final SequentialFileDownloaderImpl$interruptMonitor$1 interruptMonitor;
    private volatile boolean interrupted;

    @NotNull
    private final Logger logger;

    @NotNull
    private final AverageCalculator movingAverageCalculator;

    @NotNull
    private final NetworkInfoProvider networkInfoProvider;
    private final boolean preAllocateFileOnCreation;
    private final long progressReportingIntervalMillis;
    private final boolean retryOnNetworkGain;

    @NotNull
    private final StorageResolver storageResolver;
    private volatile boolean terminated;
    private volatile long total;
    private final int totalDownloadBlocks;
    private volatile boolean totalUnknown;

    /* JADX WARN: Type inference failed for: r2v2, types: [com.tonyodev.fetch2.downloader.SequentialFileDownloaderImpl$interruptMonitor$1] */
    public SequentialFileDownloaderImpl(@NotNull Download initialDownload, @NotNull Downloader<?, ?> downloader, long j10, @NotNull Logger logger, @NotNull NetworkInfoProvider networkInfoProvider, boolean z10, boolean z11, @NotNull StorageResolver storageResolver, boolean z12) {
        M.p(initialDownload, "initialDownload");
        M.p(downloader, "downloader");
        M.p(logger, "logger");
        M.p(networkInfoProvider, "networkInfoProvider");
        M.p(storageResolver, "storageResolver");
        this.initialDownload = initialDownload;
        this.downloader = downloader;
        this.progressReportingIntervalMillis = j10;
        this.logger = logger;
        this.networkInfoProvider = networkInfoProvider;
        this.retryOnNetworkGain = z10;
        this.hashCheckingEnabled = z11;
        this.storageResolver = storageResolver;
        this.preAllocateFileOnCreation = z12;
        this.total = -1L;
        this.estimatedTimeRemainingInMilliseconds = -1L;
        this.downloadInfo$delegate = K.a(new SequentialFileDownloaderImpl$downloadInfo$2(this));
        this.movingAverageCalculator = new AverageCalculator(5);
        DownloadBlockInfo downloadBlockInfo = new DownloadBlockInfo();
        downloadBlockInfo.setBlockPosition(1);
        downloadBlockInfo.setDownloadId(initialDownload.getId());
        this.downloadBlock = downloadBlockInfo;
        this.totalDownloadBlocks = 1;
        this.interruptMonitor = new InterruptMonitor() {
            @Override
            public boolean isInterrupted() {
                return SequentialFileDownloaderImpl.this.getInterrupted();
            }
        };
    }

    private final long getAverageDownloadedBytesPerSecond() {
        double d10 = this.averageDownloadedBytesPerSecond;
        if (d10 < 1.0d) {
            return 0L;
        }
        return (long) Math.ceil(d10);
    }

    private final DownloadInfo getDownloadInfo() {
        return (DownloadInfo) this.downloadInfo$delegate.getValue();
    }

    private final Downloader.ServerRequest getRequest() {
        Map J02 = o0.J0(this.initialDownload.getHeaders());
        J02.put(d.f6168I, "bytes=" + this.downloaded + "-");
        return new Downloader.ServerRequest(this.initialDownload.getId(), this.initialDownload.getUrl(), J02, this.initialDownload.getFile(), FetchCoreUtils.getFileUri(this.initialDownload.getFile()), this.initialDownload.getTag(), this.initialDownload.getIdentifier(), FetchCoreUtils.GET_REQUEST_METHOD, this.initialDownload.getExtras(), false, "", 1);
    }

    private final boolean isDownloadComplete() {
        return ((this.downloaded > 0 && this.total > 0) || this.totalUnknown) && this.downloaded >= this.total;
    }

    private final void setIsTotalUnknown(Downloader.Response response) {
        if (response.isSuccessful() && response.getContentLength() == -1) {
            this.totalUnknown = true;
        }
    }

    private final void verifyDownloadCompletion(Downloader.Response response) {
        if (getInterrupted() || getTerminated() || !isDownloadComplete()) {
            return;
        }
        this.total = this.downloaded;
        getDownloadInfo().setDownloaded(this.downloaded);
        getDownloadInfo().setTotal(this.total);
        this.downloadBlock.setDownloadedBytes(this.downloaded);
        this.downloadBlock.setEndByte(this.total);
        if (!this.hashCheckingEnabled) {
            if (getTerminated() || getInterrupted()) {
                return;
            }
            FileDownloader.Delegate delegate = getDelegate();
            if (delegate != null) {
                delegate.saveDownloadProgress(getDownloadInfo());
            }
            FileDownloader.Delegate delegate2 = getDelegate();
            if (delegate2 != null) {
                delegate2.onDownloadBlockUpdated(getDownloadInfo(), this.downloadBlock, this.totalDownloadBlocks);
            }
            getDownloadInfo().setEtaInMilliSeconds(this.estimatedTimeRemainingInMilliseconds);
            getDownloadInfo().setDownloadedBytesPerSecond(getAverageDownloadedBytesPerSecond());
            Download copy = getDownloadInfo().copy();
            FileDownloader.Delegate delegate3 = getDelegate();
            if (delegate3 != null) {
                delegate3.onProgress(getDownloadInfo(), getDownloadInfo().getEtaInMilliSeconds(), getDownloadInfo().getDownloadedBytesPerSecond());
            }
            getDownloadInfo().setEtaInMilliSeconds(-1L);
            getDownloadInfo().setDownloadedBytesPerSecond(-1L);
            FileDownloader.Delegate delegate4 = getDelegate();
            if (delegate4 != null) {
                delegate4.onComplete(copy);
                return;
            }
            return;
        }
        if (!this.downloader.verifyContentHash(response.getRequest(), response.getHash())) {
            throw new FetchException(FetchErrorStrings.INVALID_CONTENT_HASH);
        }
        if (getTerminated() || getInterrupted()) {
            return;
        }
        FileDownloader.Delegate delegate5 = getDelegate();
        if (delegate5 != null) {
            delegate5.saveDownloadProgress(getDownloadInfo());
        }
        FileDownloader.Delegate delegate6 = getDelegate();
        if (delegate6 != null) {
            delegate6.onDownloadBlockUpdated(getDownloadInfo(), this.downloadBlock, this.totalDownloadBlocks);
        }
        getDownloadInfo().setEtaInMilliSeconds(this.estimatedTimeRemainingInMilliseconds);
        getDownloadInfo().setDownloadedBytesPerSecond(getAverageDownloadedBytesPerSecond());
        Download copy2 = getDownloadInfo().copy();
        FileDownloader.Delegate delegate7 = getDelegate();
        if (delegate7 != null) {
            delegate7.onProgress(getDownloadInfo(), getDownloadInfo().getEtaInMilliSeconds(), getDownloadInfo().getDownloadedBytesPerSecond());
        }
        getDownloadInfo().setEtaInMilliSeconds(-1L);
        getDownloadInfo().setDownloadedBytesPerSecond(-1L);
        FileDownloader.Delegate delegate8 = getDelegate();
        if (delegate8 != null) {
            delegate8.onComplete(copy2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0118, code lost:
    
        r26.flush();
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x011b, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void writeToOutput(BufferedInputStream bufferedInputStream, OutputResourceWrapper outputResourceWrapper, int i10) {
        long j10 = this.downloaded;
        byte[] bArr = new byte[i10];
        long nanoTime = System.nanoTime();
        long nanoTime2 = System.nanoTime();
        int i11 = 0;
        int read = bufferedInputStream.read(bArr, 0, i10);
        while (!getInterrupted() && !getTerminated() && read != -1) {
            if (outputResourceWrapper != null) {
                outputResourceWrapper.write(bArr, i11, read);
            }
            if (!getTerminated() && !getInterrupted()) {
                this.downloaded += read;
                getDownloadInfo().setDownloaded(this.downloaded);
                getDownloadInfo().setTotal(this.total);
                this.downloadBlock.setDownloadedBytes(this.downloaded);
                this.downloadBlock.setEndByte(this.total);
                boolean hasIntervalTimeElapsed = FetchCoreUtils.hasIntervalTimeElapsed(nanoTime2, System.nanoTime(), 1000L);
                if (hasIntervalTimeElapsed) {
                    this.movingAverageCalculator.add(this.downloaded - j10);
                    this.averageDownloadedBytesPerSecond = AverageCalculator.getMovingAverageWithWeightOnRecentValues$default(this.movingAverageCalculator, 0, 1, null);
                    this.estimatedTimeRemainingInMilliseconds = FetchCoreUtils.calculateEstimatedTimeRemainingInMilliseconds(this.downloaded, this.total, getAverageDownloadedBytesPerSecond());
                    j10 = this.downloaded;
                }
                if (FetchCoreUtils.hasIntervalTimeElapsed(nanoTime, System.nanoTime(), this.progressReportingIntervalMillis)) {
                    this.downloadBlock.setDownloadedBytes(this.downloaded);
                    if (!getTerminated() && !getInterrupted()) {
                        FileDownloader.Delegate delegate = getDelegate();
                        if (delegate != null) {
                            delegate.saveDownloadProgress(getDownloadInfo());
                        }
                        FileDownloader.Delegate delegate2 = getDelegate();
                        if (delegate2 != null) {
                            delegate2.onDownloadBlockUpdated(getDownloadInfo(), this.downloadBlock, this.totalDownloadBlocks);
                        }
                        getDownloadInfo().setEtaInMilliSeconds(this.estimatedTimeRemainingInMilliseconds);
                        getDownloadInfo().setDownloadedBytesPerSecond(getAverageDownloadedBytesPerSecond());
                        FileDownloader.Delegate delegate3 = getDelegate();
                        if (delegate3 != null) {
                            delegate3.onProgress(getDownloadInfo(), getDownloadInfo().getEtaInMilliSeconds(), getDownloadInfo().getDownloadedBytesPerSecond());
                        }
                    }
                    nanoTime = System.nanoTime();
                }
                if (hasIntervalTimeElapsed) {
                    nanoTime2 = System.nanoTime();
                }
                i11 = 0;
                read = bufferedInputStream.read(bArr, 0, i10);
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

    /* JADX WARN: Code restructure failed: missing block: B:204:0x01d7, code lost:
    
        if (getInterrupted() != false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x01dd, code lost:
    
        if (isDownloadComplete() == false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x01e7, code lost:
    
        throw new com.tonyodev.fetch2.exception.FetchException(com.tonyodev.fetch2core.FetchErrorStrings.RESPONSE_NOT_SUCCESSFUL);
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x02f1 A[Catch: all -> 0x0268, TryCatch #6 {all -> 0x0268, blocks: (B:57:0x021c, B:59:0x0222, B:61:0x0228, B:63:0x022e, B:65:0x0254, B:67:0x025a, B:69:0x0260, B:70:0x0270, B:72:0x0276, B:73:0x0281, B:75:0x029b, B:98:0x02b3, B:101:0x02bb, B:105:0x02eb, B:107:0x02f1, B:109:0x02f7, B:111:0x031a, B:112:0x0321, B:114:0x0325, B:120:0x0334, B:121:0x0337, B:123:0x0341, B:130:0x0345, B:127:0x034d, B:132:0x034f, B:134:0x037c, B:136:0x0382, B:138:0x0396), top: B:2:0x0008, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x031a A[Catch: all -> 0x0268, TryCatch #6 {all -> 0x0268, blocks: (B:57:0x021c, B:59:0x0222, B:61:0x0228, B:63:0x022e, B:65:0x0254, B:67:0x025a, B:69:0x0260, B:70:0x0270, B:72:0x0276, B:73:0x0281, B:75:0x029b, B:98:0x02b3, B:101:0x02bb, B:105:0x02eb, B:107:0x02f1, B:109:0x02f7, B:111:0x031a, B:112:0x0321, B:114:0x0325, B:120:0x0334, B:121:0x0337, B:123:0x0341, B:130:0x0345, B:127:0x034d, B:132:0x034f, B:134:0x037c, B:136:0x0382, B:138:0x0396), top: B:2:0x0008, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0325 A[Catch: all -> 0x0268, TRY_LEAVE, TryCatch #6 {all -> 0x0268, blocks: (B:57:0x021c, B:59:0x0222, B:61:0x0228, B:63:0x022e, B:65:0x0254, B:67:0x025a, B:69:0x0260, B:70:0x0270, B:72:0x0276, B:73:0x0281, B:75:0x029b, B:98:0x02b3, B:101:0x02bb, B:105:0x02eb, B:107:0x02f1, B:109:0x02f7, B:111:0x031a, B:112:0x0321, B:114:0x0325, B:120:0x0334, B:121:0x0337, B:123:0x0341, B:130:0x0345, B:127:0x034d, B:132:0x034f, B:134:0x037c, B:136:0x0382, B:138:0x0396), top: B:2:0x0008, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0396 A[Catch: all -> 0x0268, TRY_LEAVE, TryCatch #6 {all -> 0x0268, blocks: (B:57:0x021c, B:59:0x0222, B:61:0x0228, B:63:0x022e, B:65:0x0254, B:67:0x025a, B:69:0x0260, B:70:0x0270, B:72:0x0276, B:73:0x0281, B:75:0x029b, B:98:0x02b3, B:101:0x02bb, B:105:0x02eb, B:107:0x02f1, B:109:0x02f7, B:111:0x031a, B:112:0x0321, B:114:0x0325, B:120:0x0334, B:121:0x0337, B:123:0x0341, B:130:0x0345, B:127:0x034d, B:132:0x034f, B:134:0x037c, B:136:0x0382, B:138:0x0396), top: B:2:0x0008, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x03ba A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x03ac A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x039f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x03e1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x03d3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x03c6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x00b1 A[Catch: all -> 0x0048, Exception -> 0x004d, TryCatch #18 {Exception -> 0x004d, all -> 0x0048, blocks: (B:224:0x0044, B:11:0x0057, B:12:0x005d, B:14:0x0063, B:18:0x006d, B:20:0x0077, B:24:0x0086, B:26:0x0094, B:27:0x00cb, B:29:0x00e9, B:32:0x00fa, B:33:0x00fd, B:35:0x0101, B:36:0x0112, B:190:0x00b1, B:191:0x0080, B:193:0x01b6, B:195:0x01bc, B:197:0x01c2, B:200:0x01c9, B:201:0x01d0, B:203:0x01d3, B:205:0x01d9, B:208:0x01e0, B:209:0x01e7, B:210:0x01e8, B:212:0x01ee, B:214:0x01f4, B:216:0x01fc, B:219:0x0203, B:220:0x020a), top: B:223:0x0044 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0094 A[Catch: all -> 0x0048, Exception -> 0x004d, TryCatch #18 {Exception -> 0x004d, all -> 0x0048, blocks: (B:224:0x0044, B:11:0x0057, B:12:0x005d, B:14:0x0063, B:18:0x006d, B:20:0x0077, B:24:0x0086, B:26:0x0094, B:27:0x00cb, B:29:0x00e9, B:32:0x00fa, B:33:0x00fd, B:35:0x0101, B:36:0x0112, B:190:0x00b1, B:191:0x0080, B:193:0x01b6, B:195:0x01bc, B:197:0x01c2, B:200:0x01c9, B:201:0x01d0, B:203:0x01d3, B:205:0x01d9, B:208:0x01e0, B:209:0x01e7, B:210:0x01e8, B:212:0x01ee, B:214:0x01f4, B:216:0x01fc, B:219:0x0203, B:220:0x020a), top: B:223:0x0044 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e9 A[Catch: all -> 0x0048, Exception -> 0x004d, TryCatch #18 {Exception -> 0x004d, all -> 0x0048, blocks: (B:224:0x0044, B:11:0x0057, B:12:0x005d, B:14:0x0063, B:18:0x006d, B:20:0x0077, B:24:0x0086, B:26:0x0094, B:27:0x00cb, B:29:0x00e9, B:32:0x00fa, B:33:0x00fd, B:35:0x0101, B:36:0x0112, B:190:0x00b1, B:191:0x0080, B:193:0x01b6, B:195:0x01bc, B:197:0x01c2, B:200:0x01c9, B:201:0x01d0, B:203:0x01d3, B:205:0x01d9, B:208:0x01e0, B:209:0x01e7, B:210:0x01e8, B:212:0x01ee, B:214:0x01f4, B:216:0x01fc, B:219:0x0203, B:220:0x020a), top: B:223:0x0044 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0101 A[Catch: all -> 0x0048, Exception -> 0x004d, TryCatch #18 {Exception -> 0x004d, all -> 0x0048, blocks: (B:224:0x0044, B:11:0x0057, B:12:0x005d, B:14:0x0063, B:18:0x006d, B:20:0x0077, B:24:0x0086, B:26:0x0094, B:27:0x00cb, B:29:0x00e9, B:32:0x00fa, B:33:0x00fd, B:35:0x0101, B:36:0x0112, B:190:0x00b1, B:191:0x0080, B:193:0x01b6, B:195:0x01bc, B:197:0x01c2, B:200:0x01c9, B:201:0x01d0, B:203:0x01d3, B:205:0x01d9, B:208:0x01e0, B:209:0x01e7, B:210:0x01e8, B:212:0x01ee, B:214:0x01f4, B:216:0x01fc, B:219:0x0203, B:220:0x020a), top: B:223:0x0044 }] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        Throwable th2;
        Downloader.Response response;
        OutputResourceWrapper outputResourceWrapper;
        Exception exc;
        BufferedInputStream bufferedInputStream;
        Exception exc2;
        FileDownloader.Delegate delegate;
        Exception e10;
        long downloaded;
        Downloader.Response response2 = null;
        r6 = null;
        r6 = null;
        response2 = null;
        response2 = null;
        BufferedInputStream bufferedInputStream2 = null;
        try {
            try {
                this.downloaded = this.initialDownload.getDownloaded();
                this.total = this.initialDownload.getTotal();
                getDownloadInfo().setDownloaded(this.downloaded);
                getDownloadInfo().setTotal(this.total);
                if (getInterrupted() || getTerminated()) {
                    outputResourceWrapper = null;
                    bufferedInputStream = null;
                } else {
                    Downloader.ServerRequest request = getRequest();
                    response = this.downloader.execute(request, this.interruptMonitor);
                    if (response != null) {
                        try {
                            setIsTotalUnknown(response);
                        } catch (Exception e11) {
                            e10 = e11;
                            outputResourceWrapper = null;
                            bufferedInputStream = null;
                            response2 = response;
                            exc = e10;
                            if (!getInterrupted()) {
                            }
                            if (bufferedInputStream != null) {
                            }
                            if (response2 != null) {
                            }
                            if (outputResourceWrapper != null) {
                            }
                            setTerminated(true);
                        } catch (Throwable th3) {
                            th2 = th3;
                            outputResourceWrapper = null;
                            if (bufferedInputStream2 != null) {
                            }
                            if (response != null) {
                            }
                            if (outputResourceWrapper != null) {
                            }
                            setTerminated(true);
                            throw th2;
                        }
                    }
                    boolean isSuccessful = response != null ? response.isSuccessful() : false;
                    if (getInterrupted() || getTerminated() || response == null || !isSuccessful) {
                        if (response == null && !getInterrupted() && !getTerminated() && !isDownloadComplete()) {
                            throw new FetchException(FetchErrorStrings.EMPTY_RESPONSE_BODY);
                        }
                        if (!getInterrupted() && !getTerminated() && this.downloaded < this.total && !isDownloadComplete()) {
                            throw new FetchException("unknown");
                        }
                        outputResourceWrapper = null;
                        bufferedInputStream = null;
                    } else {
                        long j10 = 0;
                        try {
                            if (response.getCode() != 206 && !response.getAcceptsRanges()) {
                                downloaded = 0;
                                this.downloaded = downloaded;
                                this.total = response.getContentLength();
                                if (response.getCode() != 206) {
                                    this.logger.d("FileDownloader resuming Download " + ((Object) getDownload()));
                                    j10 = this.downloaded;
                                } else {
                                    this.logger.d("FileDownloader starting Download " + ((Object) getDownload()));
                                }
                                getDownloadInfo().setDownloaded(this.downloaded);
                                getDownloadInfo().setTotal(this.total);
                                if (!this.storageResolver.fileExists(request.getFile())) {
                                    this.storageResolver.createFile(request.getFile(), this.initialDownload.getEnqueueAction() == EnqueueAction.INCREMENT_FILE_NAME);
                                }
                                if (this.preAllocateFileOnCreation) {
                                    this.storageResolver.preAllocateFile(request.getFile(), getDownloadInfo().getTotal());
                                }
                                outputResourceWrapper = this.storageResolver.getRequestOutputResourceWrapper(request);
                                outputResourceWrapper.setWriteOffset(j10);
                                if (!getInterrupted() || getTerminated()) {
                                    bufferedInputStream = null;
                                } else {
                                    int requestBufferSize = this.downloader.getRequestBufferSize(request);
                                    bufferedInputStream = new BufferedInputStream(response.getByteStream(), requestBufferSize);
                                    try {
                                        getDownloadInfo().setDownloaded(this.downloaded);
                                        getDownloadInfo().setTotal(this.total);
                                        this.downloadBlock.setDownloadedBytes(this.downloaded);
                                        this.downloadBlock.setStartByte(j10);
                                        this.downloadBlock.setEndByte(this.total);
                                        if (!getTerminated() && !getInterrupted()) {
                                            getDownloadInfo().setEtaInMilliSeconds(-1L);
                                            getDownloadInfo().setDownloadedBytesPerSecond(-1L);
                                            FileDownloader.Delegate delegate2 = getDelegate();
                                            if (delegate2 != null) {
                                                delegate2.onStarted(getDownloadInfo(), G.l(this.downloadBlock), this.totalDownloadBlocks);
                                            }
                                            FileDownloader.Delegate delegate3 = getDelegate();
                                            if (delegate3 != null) {
                                                delegate3.onDownloadBlockUpdated(getDownloadInfo(), this.downloadBlock, this.totalDownloadBlocks);
                                            }
                                        }
                                        writeToOutput(bufferedInputStream, outputResourceWrapper, requestBufferSize);
                                    } catch (Exception e12) {
                                        e10 = e12;
                                        response2 = response;
                                        exc = e10;
                                        if (!getInterrupted()) {
                                            this.logger.e("FileDownloader download:" + ((Object) getDownload()), exc);
                                            Error errorFromThrowable = FetchErrorUtils.getErrorFromThrowable(exc);
                                            errorFromThrowable.setThrowable(exc);
                                            if (response2 != null) {
                                            }
                                            if (this.retryOnNetworkGain) {
                                            }
                                            getDownloadInfo().setDownloaded(this.downloaded);
                                            getDownloadInfo().setTotal(this.total);
                                            getDownloadInfo().setError(errorFromThrowable);
                                            this.downloadBlock.setDownloadedBytes(this.downloaded);
                                            this.downloadBlock.setEndByte(this.total);
                                            if (!getTerminated()) {
                                                getDownloadInfo().setEtaInMilliSeconds(-1L);
                                                getDownloadInfo().setDownloadedBytesPerSecond(-1L);
                                                delegate = getDelegate();
                                                if (delegate != null) {
                                                }
                                            }
                                        }
                                        if (bufferedInputStream != null) {
                                        }
                                        if (response2 != null) {
                                        }
                                        if (outputResourceWrapper != null) {
                                        }
                                        setTerminated(true);
                                    } catch (Throwable th4) {
                                        th2 = th4;
                                        bufferedInputStream2 = bufferedInputStream;
                                        if (bufferedInputStream2 != null) {
                                        }
                                        if (response != null) {
                                        }
                                        if (outputResourceWrapper != null) {
                                        }
                                        setTerminated(true);
                                        throw th2;
                                    }
                                }
                            }
                            outputResourceWrapper.setWriteOffset(j10);
                            if (getInterrupted()) {
                            }
                            bufferedInputStream = null;
                        } catch (Exception e13) {
                            e10 = e13;
                            bufferedInputStream = null;
                        } catch (Throwable th5) {
                            th2 = th5;
                            if (bufferedInputStream2 != null) {
                            }
                            if (response != null) {
                            }
                            if (outputResourceWrapper != null) {
                            }
                            setTerminated(true);
                            throw th2;
                        }
                        downloaded = this.initialDownload.getDownloaded();
                        this.downloaded = downloaded;
                        this.total = response.getContentLength();
                        if (response.getCode() != 206) {
                        }
                        getDownloadInfo().setDownloaded(this.downloaded);
                        getDownloadInfo().setTotal(this.total);
                        if (!this.storageResolver.fileExists(request.getFile())) {
                        }
                        if (this.preAllocateFileOnCreation) {
                        }
                        outputResourceWrapper = this.storageResolver.getRequestOutputResourceWrapper(request);
                    }
                    response2 = response;
                }
                try {
                    if (!isDownloadComplete() && !getTerminated() && !getInterrupted()) {
                        getDownloadInfo().setDownloaded(this.downloaded);
                        getDownloadInfo().setTotal(this.total);
                        this.downloadBlock.setDownloadedBytes(this.downloaded);
                        this.downloadBlock.setEndByte(this.total);
                        if (!getTerminated() && !getInterrupted()) {
                            FileDownloader.Delegate delegate4 = getDelegate();
                            if (delegate4 != null) {
                                delegate4.saveDownloadProgress(getDownloadInfo());
                            }
                            FileDownloader.Delegate delegate5 = getDelegate();
                            if (delegate5 != null) {
                                delegate5.onDownloadBlockUpdated(getDownloadInfo(), this.downloadBlock, this.totalDownloadBlocks);
                            }
                            getDownloadInfo().setEtaInMilliSeconds(this.estimatedTimeRemainingInMilliseconds);
                            getDownloadInfo().setDownloadedBytesPerSecond(getAverageDownloadedBytesPerSecond());
                            FileDownloader.Delegate delegate6 = getDelegate();
                            if (delegate6 != null) {
                                delegate6.onProgress(getDownloadInfo(), getDownloadInfo().getEtaInMilliSeconds(), getDownloadInfo().getDownloadedBytesPerSecond());
                            }
                        }
                    } else if (isDownloadComplete() && response2 != null) {
                        verifyDownloadCompletion(response2);
                    }
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (Exception e14) {
                            this.logger.e("FileDownloader", e14);
                        }
                    }
                    if (response2 != null) {
                        try {
                            this.downloader.disconnect(response2);
                        } catch (Exception e15) {
                            this.logger.e("FileDownloader", e15);
                        }
                    }
                    if (outputResourceWrapper != null) {
                        try {
                            outputResourceWrapper.close();
                        } catch (Exception e16) {
                            exc2 = e16;
                            this.logger.e("FileDownloader", exc2);
                            setTerminated(true);
                        }
                    }
                } catch (Exception e17) {
                    e10 = e17;
                    exc = e10;
                    if (!getInterrupted() && !getTerminated()) {
                        this.logger.e("FileDownloader download:" + ((Object) getDownload()), exc);
                        Error errorFromThrowable2 = FetchErrorUtils.getErrorFromThrowable(exc);
                        errorFromThrowable2.setThrowable(exc);
                        if (response2 != null) {
                            errorFromThrowable2.setHttpResponse(FetchCoreUtils.copyDownloadResponseNoStream(response2));
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
                                errorFromThrowable2 = Error.NO_NETWORK_CONNECTION;
                            }
                        }
                        getDownloadInfo().setDownloaded(this.downloaded);
                        getDownloadInfo().setTotal(this.total);
                        getDownloadInfo().setError(errorFromThrowable2);
                        this.downloadBlock.setDownloadedBytes(this.downloaded);
                        this.downloadBlock.setEndByte(this.total);
                        if (!getTerminated() && !getInterrupted()) {
                            getDownloadInfo().setEtaInMilliSeconds(-1L);
                            getDownloadInfo().setDownloadedBytesPerSecond(-1L);
                            delegate = getDelegate();
                            if (delegate != null) {
                                delegate.onError(getDownloadInfo(), errorFromThrowable2, exc);
                            }
                        }
                    }
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (Exception e19) {
                            this.logger.e("FileDownloader", e19);
                        }
                    }
                    if (response2 != null) {
                        try {
                            this.downloader.disconnect(response2);
                        } catch (Exception e20) {
                            this.logger.e("FileDownloader", e20);
                        }
                    }
                    if (outputResourceWrapper != null) {
                        try {
                            outputResourceWrapper.close();
                        } catch (Exception e21) {
                            exc2 = e21;
                            this.logger.e("FileDownloader", exc2);
                            setTerminated(true);
                        }
                    }
                    setTerminated(true);
                }
            } catch (Throwable th6) {
                th2 = th6;
                response = response2;
                bufferedInputStream2 = bufferedInputStream;
                if (bufferedInputStream2 != null) {
                    try {
                        bufferedInputStream2.close();
                    } catch (Exception e22) {
                        this.logger.e("FileDownloader", e22);
                    }
                }
                if (response != null) {
                    try {
                        this.downloader.disconnect(response);
                    } catch (Exception e23) {
                        this.logger.e("FileDownloader", e23);
                    }
                }
                if (outputResourceWrapper != null) {
                    try {
                        outputResourceWrapper.close();
                    } catch (Exception e24) {
                        this.logger.e("FileDownloader", e24);
                    }
                }
                setTerminated(true);
                throw th2;
            }
        } catch (Exception e25) {
            exc = e25;
            outputResourceWrapper = null;
            bufferedInputStream = null;
        } catch (Throwable th7) {
            th2 = th7;
            response = null;
            outputResourceWrapper = null;
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
