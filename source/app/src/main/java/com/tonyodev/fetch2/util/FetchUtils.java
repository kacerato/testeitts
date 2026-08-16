package com.tonyodev.fetch2.util;

import F2.d;
import Lf.j;
import ag.C3617K;
import android.os.Looper;
import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.Request;
import com.tonyodev.fetch2.Status;
import com.tonyodev.fetch2.exception.FetchException;
import com.tonyodev.fetch2.fetch.FetchHandler;
import com.tonyodev.fetch2core.Downloader;
import com.tonyodev.fetch2core.FetchCoreUtils;
import com.tonyodev.fetch2core.FetchErrorStrings;
import com.tonyodev.fetch2core.FileSliceInfo;
import com.tonyodev.fetch2core.server.FileRequest;
import java.io.File;
import java.util.ArrayList;
import java.util.Map;
import kotlin.io.q;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import pf.o0;

@j(name = "FetchUtils")
@t0({"SMAP\nFetchUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchUtils.kt\ncom/tonyodev/fetch2/util/FetchUtils\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,223:1\n3792#2:224\n4307#2,2:225\n1855#3,2:227\n*S KotlinDebug\n*F\n+ 1 FetchUtils.kt\ncom/tonyodev/fetch2/util/FetchUtils\n*L\n148#1:224\n148#1:225,2\n151#1:227,2\n*E\n"})
public final class FetchUtils {

    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Status.values().length];
            try {
                iArr[Status.DOWNLOADING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Status.QUEUED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Status.ADDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Status.PAUSED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Status.FAILED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Status.CANCELLED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Status.COMPLETED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[Status.NONE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void awaitFinishOrTimeout(long j10, @NotNull FetchHandler fetchHandler) {
        long j11;
        long j12;
        long currentTimeMillis;
        long pendingCount;
        boolean z10;
        M.p(fetchHandler, "fetchHandler");
        if (M.g(Thread.currentThread(), Looper.getMainLooper().getThread())) {
            throw new FetchException(FetchErrorStrings.AWAIT_CALL_ON_UI_THREAD);
        }
        boolean z11 = j10 == 0;
        if (z11) {
            j11 = 5000;
        } else {
            j11 = 1000;
            if (j10 < 1000) {
                j12 = j10;
                currentTimeMillis = System.currentTimeMillis();
                pendingCount = fetchHandler.getPendingCount();
                z10 = false;
                while (true) {
                    if (z11 && (pendingCount <= 0 || z10)) {
                        return;
                    }
                    try {
                        Thread.sleep(j12);
                    } catch (Exception unused) {
                    }
                    z10 = j10 != -1 ? false : FetchCoreUtils.hasAllowedTimeExpired(currentTimeMillis, System.currentTimeMillis(), j10);
                    pendingCount = fetchHandler.getPendingCount();
                }
            }
        }
        j12 = j11;
        currentTimeMillis = System.currentTimeMillis();
        pendingCount = fetchHandler.getPendingCount();
        z10 = false;
        while (true) {
            if (z11) {
            }
            Thread.sleep(j12);
            if (j10 != -1) {
            }
            pendingCount = fetchHandler.getPendingCount();
        }
    }

    public static final boolean canCancelDownload(@NotNull Download download) {
        M.p(download, "download");
        int i10 = WhenMappings.$EnumSwitchMapping$0[download.getStatus().ordinal()];
        return (i10 == 5 || i10 == 7 || i10 == 8) ? false : true;
    }

    public static final boolean canPauseDownload(@NotNull Download download) {
        M.p(download, "download");
        int i10 = WhenMappings.$EnumSwitchMapping$0[download.getStatus().ordinal()];
        return i10 == 1 || i10 == 2;
    }

    public static final boolean canResumeDownload(@NotNull Download download) {
        M.p(download, "download");
        int i10 = WhenMappings.$EnumSwitchMapping$0[download.getStatus().ordinal()];
        return i10 == 2 || i10 == 3 || i10 == 4;
    }

    public static final boolean canRetryDownload(@NotNull Download download) {
        M.p(download, "download");
        int i10 = WhenMappings.$EnumSwitchMapping$0[download.getStatus().ordinal()];
        return i10 == 3 || i10 == 5 || i10 == 6;
    }

    public static final void deleteAllInFolderForId(int i10, @NotNull String fileTempDir) {
        File[] listFiles;
        M.p(fileTempDir, "fileTempDir");
        try {
            File file = new File(fileTempDir);
            if (!file.exists() || (listFiles = file.listFiles()) == null) {
                return;
            }
            ArrayList<File> arrayList = new ArrayList();
            for (File file2 : listFiles) {
                M.m(file2);
                if (C3617K.L2(q.j0(file2), i10 + ".", false, 2, null)) {
                    arrayList.add(file2);
                }
            }
            for (File file3 : arrayList) {
                if (file3.exists()) {
                    file3.delete();
                }
            }
        } catch (Exception unused) {
        }
    }

    @NotNull
    public static final Downloader.ServerRequest getCatalogServerRequestFromRequest(@NotNull Request request) {
        M.p(request, "request");
        Map J02 = o0.J0(request.getHeaders());
        J02.put(d.f6168I, "bytes=0-");
        J02.put(FileRequest.FIELD_PAGE, "-1");
        J02.put(FileRequest.FIELD_SIZE, "-1");
        J02.put(FileRequest.FIELD_TYPE, "1");
        return new Downloader.ServerRequest(request.getId(), request.getUrl(), J02, request.getFile(), FetchCoreUtils.getFileUri(request.getFile()), request.getTag(), request.getIdentifier(), FetchCoreUtils.GET_REQUEST_METHOD, request.getExtras(), false, "", 1);
    }

    @NotNull
    public static final String getDownloadedInfoFilePath(int i10, int i11, @NotNull String fileTempDir) {
        M.p(fileTempDir, "fileTempDir");
        return fileTempDir + "/" + i10 + "." + i11 + ".data";
    }

    @NotNull
    public static final FileSliceInfo getFileSliceInfo(int i10, long j10) {
        if (i10 != -1) {
            return new FileSliceInfo(i10, (float) Math.ceil(((float) j10) / i10));
        }
        float f10 = (((float) j10) / 1024.0f) * 1024.0f;
        return 1024.0f * f10 >= 1.0f ? new FileSliceInfo(6, (float) Math.ceil(r3 / 6)) : f10 >= 1.0f ? new FileSliceInfo(4, (float) Math.ceil(r3 / 4)) : new FileSliceInfo(2, j10);
    }

    @NotNull
    public static final String getMetaFilePath(int i10, @NotNull String fileTempDir) {
        M.p(fileTempDir, "fileTempDir");
        return fileTempDir + "/" + i10 + ".meta.data";
    }

    public static final int getPreviousSliceCount(int i10, @NotNull String fileTempDir) {
        M.p(fileTempDir, "fileTempDir");
        try {
            Long longDataFromFile = FetchCoreUtils.getLongDataFromFile(getMetaFilePath(i10, fileTempDir));
            if (longDataFromFile != null) {
                return (int) longDataFromFile.longValue();
            }
            return -1;
        } catch (Exception unused) {
            return -1;
        }
    }

    @NotNull
    public static final Downloader.ServerRequest getRequestForDownload(@NotNull Download download, @NotNull String requestMethod) {
        M.p(download, "download");
        M.p(requestMethod, "requestMethod");
        return getRequestForDownload$default(download, -1L, -1L, requestMethod, 0, 16, null);
    }

    public static Downloader.ServerRequest getRequestForDownload$default(Download download, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = FetchCoreUtils.GET_REQUEST_METHOD;
        }
        return getRequestForDownload(download, str);
    }

    public static final long getSavedDownloadedInfo(int i10, int i11, @NotNull String fileTempDir) {
        M.p(fileTempDir, "fileTempDir");
        try {
            Long longDataFromFile = FetchCoreUtils.getLongDataFromFile(getDownloadedInfoFilePath(i10, i11, fileTempDir));
            if (longDataFromFile != null) {
                return longDataFromFile.longValue();
            }
            return 0L;
        } catch (Exception unused) {
            return 0L;
        }
    }

    @NotNull
    public static final Downloader.ServerRequest getServerRequestFromRequest(@NotNull Request request) {
        M.p(request, "request");
        return new Downloader.ServerRequest(request.getId(), request.getUrl(), request.getHeaders(), request.getFile(), FetchCoreUtils.getFileUri(request.getFile()), request.getTag(), request.getIdentifier(), FetchCoreUtils.GET_REQUEST_METHOD, request.getExtras(), false, "", 1);
    }

    public static final void saveCurrentSliceCount(int i10, int i11, @NotNull String fileTempDir) {
        M.p(fileTempDir, "fileTempDir");
        try {
            FetchCoreUtils.writeLongToFile(getMetaFilePath(i10, fileTempDir), i11);
        } catch (Exception unused) {
        }
    }

    @NotNull
    public static final Downloader.ServerRequest getRequestForDownload(@NotNull Download download, long j10, long j11, @NotNull String requestMethod, int i10) {
        M.p(download, "download");
        M.p(requestMethod, "requestMethod");
        long j12 = j10 == -1 ? 0L : j10;
        String valueOf = j11 == -1 ? "" : String.valueOf(j11);
        Map J02 = o0.J0(download.getHeaders());
        J02.put(d.f6168I, "bytes=" + j12 + "-" + valueOf);
        return new Downloader.ServerRequest(download.getId(), download.getUrl(), J02, download.getFile(), FetchCoreUtils.getFileUri(download.getFile()), download.getTag(), download.getIdentifier(), requestMethod, download.getExtras(), false, "", i10);
    }

    public static Downloader.ServerRequest getRequestForDownload$default(Download download, long j10, long j11, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            j10 = -1;
        }
        if ((i11 & 4) != 0) {
            j11 = -1;
        }
        if ((i11 & 8) != 0) {
            str = FetchCoreUtils.GET_REQUEST_METHOD;
        }
        if ((i11 & 16) != 0) {
            i10 = 1;
        }
        return getRequestForDownload(download, j10, j11, str, i10);
    }
}
