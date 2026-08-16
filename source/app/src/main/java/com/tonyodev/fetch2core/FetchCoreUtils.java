package com.tonyodev.fetch2core;

import Lf.j;
import ag.C3616J;
import ag.C3617K;
import ag.P;
import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.security.keystore.KeyProperties;
import b3.s;
import com.itsmagic.engine.Engines.Engine.Animation.a;
import com.tonyodev.fetch2core.Downloader;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.net.CookieManager;
import java.net.CookiePolicy;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.TypeCastException;
import kotlin.io.b;
import kotlin.io.q;
import kotlin.jvm.internal.M;
import nf.P0;
import nf.Z;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.S;
import pf.o0;
import pf.z0;

@j(name = "FetchCoreUtils")
public final class FetchCoreUtils {

    @NotNull
    public static final String GET_REQUEST_METHOD = "GET";

    @NotNull
    public static final String HEADER_ACCEPT_RANGE = "Accept-Ranges";

    @NotNull
    public static final String HEADER_ACCEPT_RANGE_COMPAT = "AcceptRanges";

    @NotNull
    public static final String HEADER_ACCEPT_RANGE_LEGACY = "accept-ranges";

    @NotNull
    public static final String HEADER_CONTENT_LENGTH = "content-length";

    @NotNull
    public static final String HEADER_CONTENT_LENGTH_COMPAT = "ContentLength";

    @NotNull
    public static final String HEADER_CONTENT_LENGTH_LEGACY = "Content-Length";

    @NotNull
    public static final String HEADER_CONTENT_RANGE = "Content-Range";

    @NotNull
    public static final String HEADER_CONTENT_RANGE_COMPAT = "ContentRange";

    @NotNull
    public static final String HEADER_CONTENT_RANGE_LEGACY = "content-range";

    @NotNull
    public static final String HEADER_TRANSFER_ENCODING = "Transfer-Encoding";

    @NotNull
    public static final String HEADER_TRANSFER_ENCODING_COMPAT = "TransferEncoding";

    @NotNull
    public static final String HEADER_TRANSFER_LEGACY = "transfer-encoding";

    @NotNull
    public static final String HEAD_REQUEST_METHOD = "HEAD";

    @SuppressLint({"DefaultLocale"})
    public static final boolean acceptRanges(int i10, @NotNull Map<String, ? extends List<String>> headers) {
        String str;
        M.q(headers, "headers");
        String headerValue = getHeaderValue(headers, "Accept-Ranges", HEADER_ACCEPT_RANGE_LEGACY, HEADER_ACCEPT_RANGE_COMPAT);
        String headerValue2 = getHeaderValue(headers, "Transfer-Encoding", "transfer-encoding", HEADER_TRANSFER_ENCODING_COMPAT);
        long contentLengthFromHeader = getContentLengthFromHeader(headers, -1L);
        boolean z10 = i10 == 206 || M.g(headerValue, "bytes");
        if (contentLengthFromHeader > -1 && z10) {
            return true;
        }
        if (contentLengthFromHeader > -1) {
            if (headerValue2 != null) {
                str = headerValue2.toLowerCase();
                M.h(str, "(this as java.lang.String).toLowerCase()");
            } else {
                str = null;
            }
            if (!M.g(str, "chunked")) {
                return true;
            }
        }
        return false;
    }

    public static final long calculateEstimatedTimeRemainingInMilliseconds(long j10, long j11, long j12) {
        if (j11 >= 1 && j10 >= 1 && j12 >= 1) {
            return ((long) Math.abs(Math.ceil((j11 - j10) / j12))) * 1000;
        }
        return -1L;
    }

    public static final int calculateProgress(long j10, long j11) {
        if (j11 < 1) {
            return -1;
        }
        if (j10 < 1) {
            return 0;
        }
        if (j10 >= j11) {
            return 100;
        }
        return (int) ((j10 / j11) * 100);
    }

    @NotNull
    public static final Downloader.Response copyDownloadResponseNoStream(@NotNull Downloader.Response response) {
        M.q(response, "response");
        return new Downloader.Response(response.getCode(), response.isSuccessful(), response.getContentLength(), null, response.getRequest(), response.getHash(), response.getResponseHeaders(), response.getAcceptsRanges(), response.getErrorResponse());
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002d, code lost:
    
        if (r4 != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002f, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0041, code lost:
    
        if (r1 != null) goto L31;
     */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final String copyStreamToString(@Nullable InputStream inputStream, boolean z10) {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        r0 = null;
        r0 = null;
        String str = null;
        if (inputStream == null) {
            return null;
        }
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            try {
                StringBuilder sb2 = new StringBuilder();
                for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                    sb2.append(readLine);
                    sb2.append('\n');
                }
                str = sb2.toString();
            } catch (Exception unused) {
                if (z10) {
                }
                return str;
            } catch (Throwable th2) {
                th = th2;
                bufferedReader2 = bufferedReader;
                if (z10 && bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (Exception unused2) {
                    }
                }
                throw th;
            }
        } catch (Exception unused3) {
            bufferedReader = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static String copyStreamToString$default(InputStream inputStream, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return copyStreamToString(inputStream, z10);
    }

    public static final void createFile(@NotNull File file) {
        M.q(file, "file");
        if (file.exists()) {
            return;
        }
        if (file.getParentFile() == null || file.getParentFile().exists()) {
            if (file.createNewFile()) {
                return;
            }
            throw new FileNotFoundException(((Object) file) + " file_not_found");
        }
        if (!file.getParentFile().mkdirs()) {
            throw new FileNotFoundException(((Object) file) + " file_not_found");
        }
        if (file.createNewFile()) {
            return;
        }
        throw new FileNotFoundException(((Object) file) + " file_not_found");
    }

    public static final boolean deleteFile(@NotNull File file) {
        M.q(file, "file");
        if (file.exists() && file.canWrite()) {
            return file.delete();
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final long getContentLengthFromHeader(@NotNull Map<String, ? extends List<String>> headers, long j10) {
        long j11;
        Long t12;
        M.q(headers, "headers");
        String headerValue = getHeaderValue(headers, "Content-Range", HEADER_CONTENT_RANGE_LEGACY, HEADER_CONTENT_RANGE_COMPAT);
        Integer valueOf = headerValue != null ? Integer.valueOf(P.a4(headerValue, "/", 0, false, 6, null)) : null;
        if (valueOf != null && valueOf.intValue() != -1 && valueOf.intValue() < headerValue.length()) {
            String substring = headerValue.substring(valueOf.intValue() + 1);
            M.h(substring, "(this as java.lang.String).substring(startIndex)");
            Long t13 = C3616J.t1(substring);
            if (t13 != null) {
                j11 = t13.longValue();
                if (j11 == -1) {
                    return j11;
                }
                String headerValue2 = getHeaderValue(headers, "content-length", "Content-Length", HEADER_CONTENT_LENGTH_COMPAT);
                if (headerValue2 != null && (t12 = C3616J.t1(headerValue2)) != null) {
                    j10 = t12.longValue();
                }
                return j10;
            }
        }
        j11 = -1;
        if (j11 == -1) {
        }
    }

    @NotNull
    public static final CookieManager getDefaultCookieManager() {
        CookieManager cookieManager = new CookieManager();
        cookieManager.setCookiePolicy(CookiePolicy.ACCEPT_ALL);
        return cookieManager;
    }

    @NotNull
    public static final String getFetchFileServerHostAddress(@NotNull String url) {
        M.q(url, "url");
        String substring = url.substring(P.L3(url, "//", 0, false, 6, null) + 2, P.a4(url, s.f32937c, 0, false, 6, null));
        M.h(substring, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)");
        return substring;
    }

    public static final int getFetchFileServerPort(@NotNull String url) {
        M.q(url, "url");
        String substring = url.substring(P.a4(url, s.f32937c, 0, false, 6, null) + 1, url.length());
        M.h(substring, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)");
        int L32 = P.L3(substring, "/", 0, false, 6, null);
        if (L32 == -1) {
            return Integer.parseInt(substring);
        }
        if (substring == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        String substring2 = substring.substring(0, L32);
        M.h(substring2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)");
        return Integer.parseInt(substring2);
    }

    @NotNull
    public static final File getFile(@NotNull String filePath) {
        M.q(filePath, "filePath");
        File file = new File(filePath);
        if (!file.exists()) {
            if (file.getParentFile() == null || file.getParentFile().exists()) {
                file.createNewFile();
            } else if (file.getParentFile().mkdirs()) {
                file.createNewFile();
            }
        }
        return file;
    }

    @Nullable
    public static final String getFileMd5String(@NotNull String file) {
        M.q(file, "file");
        File file2 = new File(file);
        try {
            byte[] bArr = new byte[8192];
            MessageDigest messageDigest = MessageDigest.getInstance(KeyProperties.DIGEST_MD5);
            DigestInputStream digestInputStream = new DigestInputStream(new FileInputStream(file2), messageDigest);
            do {
                try {
                } finally {
                }
            } while (digestInputStream.read(bArr) != -1);
            P0 p02 = P0.f98194a;
            b.a(digestInputStream, null);
            String bigInteger = new BigInteger(1, messageDigest.digest()).toString(16);
            M.h(bigInteger, "BigInteger(1, md.digest()).toString(16)");
            while (bigInteger.length() < 32) {
                bigInteger = '0' + bigInteger;
            }
            return bigInteger;
        } catch (Exception unused) {
            return null;
        }
    }

    @NotNull
    public static final String getFileResourceIdFromUrl(@NotNull String url) {
        M.q(url, "url");
        Uri parse = Uri.parse(url);
        M.h(parse, "Uri.parse(url)");
        String lastPathSegment = parse.getLastPathSegment();
        return lastPathSegment != null ? lastPathSegment : "-1";
    }

    @NotNull
    public static final String getFileTempDir(@NotNull Context context) {
        M.q(context, "context");
        StringBuilder sb2 = new StringBuilder();
        File filesDir = context.getFilesDir();
        M.h(filesDir, "context.filesDir");
        sb2.append((Object) filesDir.getAbsoluteFile());
        sb2.append("/_fetchData/temp");
        return sb2.toString();
    }

    @NotNull
    public static final Uri getFileUri(@NotNull String path) {
        M.q(path, "path");
        if (isUriPath(path)) {
            Uri parse = Uri.parse(path);
            M.h(parse, "Uri.parse(path)");
            return parse;
        }
        Uri fromFile = Uri.fromFile(new File(path));
        M.h(fromFile, "Uri.fromFile(File(path))");
        return fromFile;
    }

    @Nullable
    public static final String getHeaderValue(@NotNull Map<String, ? extends List<String>> headers, @NotNull String... keys) {
        M.q(headers, "headers");
        M.q(keys, "keys");
        int length = keys.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                return null;
            }
            List<String> list = headers.get(keys[i10]);
            String str = list != null ? (String) S.L2(list) : null;
            if (str != null && !P.Q3(str)) {
                return str;
            }
            i10++;
        }
    }

    @NotNull
    public static final File getIncrementedFileIfOriginalExists(@NotNull String originalPath) {
        M.q(originalPath, "originalPath");
        File file = new File(originalPath);
        if (file.exists()) {
            String str = file.getParent() + '/';
            String h02 = q.h0(file);
            String j02 = q.j0(file);
            int i10 = 0;
            while (file.exists()) {
                i10++;
                file = new File(str + (j02 + " (" + i10 + ')') + '.' + h02);
            }
        }
        createFile(file);
        return file;
    }

    @Nullable
    public static final Long getLongDataFromFile(@NotNull String filePath) {
        M.q(filePath, "filePath");
        File file = getFile(filePath);
        if (file.exists()) {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, a.f72595c);
            try {
                try {
                    Long valueOf = Long.valueOf(randomAccessFile.readLong());
                    try {
                        randomAccessFile.close();
                        return valueOf;
                    } catch (Exception unused) {
                        return valueOf;
                    }
                } catch (Exception unused2) {
                }
            } catch (Exception unused3) {
                randomAccessFile.close();
            } catch (Throwable th2) {
                try {
                    randomAccessFile.close();
                } catch (Exception unused4) {
                }
                throw th2;
            }
        }
        return null;
    }

    @NotNull
    public static final String getMd5String(@NotNull byte[] bytes, int i10, int i11) {
        M.q(bytes, "bytes");
        try {
            byte[] bArr = new byte[8192];
            MessageDigest messageDigest = MessageDigest.getInstance(KeyProperties.DIGEST_MD5);
            DigestInputStream digestInputStream = new DigestInputStream(new ByteArrayInputStream(bytes, i10, i11), messageDigest);
            do {
                try {
                } finally {
                }
            } while (digestInputStream.read(bArr) != -1);
            P0 p02 = P0.f98194a;
            b.a(digestInputStream, null);
            String bigInteger = new BigInteger(1, messageDigest.digest()).toString(16);
            M.h(bigInteger, "BigInteger(1, md.digest()).toString(16)");
            while (bigInteger.length() < 32) {
                bigInteger = '0' + bigInteger;
            }
            return bigInteger;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String getMd5String$default(byte[] bArr, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = bArr.length;
        }
        return getMd5String(bArr, i10, i11);
    }

    @NotNull
    public static final Z<Long, Long> getRangeForFetchFileServerRequest(@NotNull String range) {
        long j10;
        M.q(range, "range");
        int a42 = P.a4(range, "=", 0, false, 6, null);
        int a43 = P.a4(range, "-", 0, false, 6, null);
        String substring = range.substring(a42 + 1, a43);
        M.h(substring, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)");
        long parseLong = Long.parseLong(substring);
        try {
            String substring2 = range.substring(a43 + 1, range.length());
            M.h(substring2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)");
            j10 = Long.parseLong(substring2);
        } catch (Exception unused) {
            j10 = -1;
        }
        return new Z<>(Long.valueOf(parseLong), Long.valueOf(j10));
    }

    @NotNull
    public static final String getRefererFromUrl(@NotNull String url) {
        M.q(url, "url");
        try {
            Uri uri = Uri.parse(url);
            StringBuilder sb2 = new StringBuilder();
            M.h(uri, "uri");
            sb2.append(uri.getScheme());
            sb2.append("://");
            sb2.append(uri.getAuthority());
            return sb2.toString();
        } catch (Exception unused) {
            return "https://google.com";
        }
    }

    public static final long getRequestContentLength(@NotNull Downloader.ServerRequest request, @NotNull Downloader<?, ?> downloader) {
        Map<String, List<String>> z10;
        M.q(request, "request");
        M.q(downloader, "downloader");
        try {
            Downloader.Response execute = downloader.execute(request, getSimpleInterruptMonitor());
            if (execute == null || (z10 = execute.getResponseHeaders()) == null) {
                z10 = o0.z();
            }
            long contentLengthFromHeader = getContentLengthFromHeader(z10, -1L);
            if (execute != null) {
                downloader.disconnect(execute);
            }
            return contentLengthFromHeader;
        } catch (Exception unused) {
            return -1L;
        }
    }

    @NotNull
    public static final Set<Downloader.FileDownloaderType> getRequestSupportedFileDownloaderTypes(@NotNull Downloader.ServerRequest request, @NotNull Downloader<?, ?> downloader) {
        M.q(request, "request");
        M.q(downloader, "downloader");
        Set<Downloader.FileDownloaderType> q10 = z0.q(Downloader.FileDownloaderType.SEQUENTIAL);
        try {
            Downloader.Response execute = downloader.execute(request, getSimpleInterruptMonitor());
            if (execute != null) {
                if (isParallelDownloadingSupported(execute.getCode(), execute.getResponseHeaders())) {
                    q10.add(Downloader.FileDownloaderType.PARALLEL);
                }
                downloader.disconnect(execute);
            }
        } catch (Exception unused) {
        }
        return q10;
    }

    @NotNull
    public static final InterruptMonitor getSimpleInterruptMonitor() {
        return new InterruptMonitor() {
            @Override
            public boolean isInterrupted() {
                return false;
            }
        };
    }

    public static final int getUniqueId(@NotNull String url, @NotNull String file) {
        M.q(url, "url");
        M.q(file, "file");
        return (url.hashCode() * 31) + file.hashCode();
    }

    public static final boolean hasAllowedTimeExpired(long j10, long j11, long j12) {
        return j11 - j10 >= j12;
    }

    public static final boolean hasIntervalTimeElapsed(long j10, long j11, long j12) {
        return TimeUnit.NANOSECONDS.toMillis(j11 - j10) >= j12;
    }

    public static final boolean isFetchFileServerUrl(@NotNull String url) {
        M.q(url, "url");
        try {
            if (!C3617K.L2(url, "fetchlocal://", false, 2, null) || getFetchFileServerHostAddress(url).length() <= 0) {
                return false;
            }
            return getFetchFileServerPort(url) > -1;
        } catch (Exception unused) {
            return false;
        }
    }

    public static final boolean isParallelDownloadingSupported(int i10, @NotNull Map<String, ? extends List<String>> headers) {
        M.q(headers, "headers");
        return acceptRanges(i10, headers);
    }

    public static final boolean isUriPath(@NotNull String path) {
        M.q(path, "path");
        if (path.length() <= 0) {
            path = null;
        }
        if (path != null) {
            return C3617K.L2(path, "content://", false, 2, null) || C3617K.L2(path, "file://", false, 2, null);
        }
        return false;
    }

    public static final boolean renameFile(@NotNull File oldFile, @NotNull File newFile) {
        M.q(oldFile, "oldFile");
        M.q(newFile, "newFile");
        return oldFile.renameTo(newFile);
    }

    public static final void writeLongToFile(@NotNull String filePath, long j10) {
        M.q(filePath, "filePath");
        File file = getFile(filePath);
        if (!file.exists()) {
            return;
        }
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        try {
            randomAccessFile.seek(0L);
            randomAccessFile.setLength(0L);
            randomAccessFile.writeLong(j10);
        } catch (Exception unused) {
        } catch (Throwable th2) {
            try {
                randomAccessFile.close();
            } catch (Exception unused2) {
            }
            throw th2;
        }
        try {
            randomAccessFile.close();
        } catch (Exception unused3) {
        }
    }
}
