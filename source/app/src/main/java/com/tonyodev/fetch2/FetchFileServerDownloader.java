package com.tonyodev.fetch2;

import F2.d;
import Lf.k;
import ag.C3616J;
import ag.C3625g;
import com.tonyodev.fetch2core.Downloader;
import com.tonyodev.fetch2core.Extras;
import com.tonyodev.fetch2core.FetchCoreUtils;
import com.tonyodev.fetch2core.FetchErrorStrings;
import com.tonyodev.fetch2core.FileResource;
import com.tonyodev.fetch2core.FileServerDownloader;
import com.tonyodev.fetch2core.InterruptMonitor;
import com.tonyodev.fetch2core.MutableExtras;
import com.tonyodev.fetch2core.server.FetchFileResourceTransporter;
import com.tonyodev.fetch2core.server.FileRequest;
import com.tonyodev.fetch2core.server.FileResponse;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.Z;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
import pf.G;
import pf.S;
import pf.z0;

@t0({"SMAP\nFetchFileServerDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchFileServerDownloader.kt\ncom/tonyodev/fetch2/FetchFileServerDownloader\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,258:1\n215#2,2:259\n32#3,2:261\n32#3,2:265\n1855#4,2:263\n*S KotlinDebug\n*F\n+ 1 FetchFileServerDownloader.kt\ncom/tonyodev/fetch2/FetchFileServerDownloader\n*L\n42#1:259,2\n87#1:261,2\n243#1:265,2\n143#1:263,2\n*E\n"})
public class FetchFileServerDownloader implements FileServerDownloader {

    @NotNull
    private final Map<Downloader.Response, FetchFileResourceTransporter> connections;

    @NotNull
    private final Downloader.FileDownloaderType fileDownloaderType;
    private final long timeout;

    @k
    public FetchFileServerDownloader() {
        this(null, 0L, 3, null);
    }

    private final Extras getExtrasFromCatalogItem(JSONObject jSONObject) {
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            JSONObject jSONObject2 = new JSONObject(jSONObject.getString("extras"));
            Iterator<String> keys = jSONObject2.keys();
            M.o(keys, "keys(...)");
            while (keys.hasNext()) {
                String next = keys.next();
                M.m(next);
                String string = jSONObject2.getString(next);
                M.o(string, "getString(...)");
                linkedHashMap.put(next, string);
            }
            return new Extras(linkedHashMap);
        } catch (Exception unused) {
            return Extras.CREATOR.getEmptyExtras();
        }
    }

    private final List<FileResource> parseFileResourceList(String str) {
        JSONArray jSONArray = new JSONArray(new JSONObject(str).getString("catalog"));
        int length = jSONArray.length();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < length; i10++) {
            FileResource fileResource = new FileResource();
            JSONObject jSONObject = jSONArray.getJSONObject(i10);
            fileResource.setId(jSONObject.getLong("id"));
            String string = jSONObject.getString("name");
            M.o(string, "getString(...)");
            fileResource.setName(string);
            fileResource.setLength(jSONObject.getLong("length"));
            M.m(jSONObject);
            fileResource.setExtras(getExtrasFromCatalogItem(jSONObject));
            String string2 = jSONObject.getString(FileResponse.FIELD_MD5);
            M.o(string2, "getString(...)");
            fileResource.setMd5(string2);
            arrayList.add(fileResource);
        }
        return arrayList;
    }

    @Override
    public void close() {
        try {
            Iterator<Map.Entry<Downloader.Response, FetchFileResourceTransporter>> it = this.connections.entrySet().iterator();
            while (it.hasNext()) {
                it.next().getValue().close();
            }
            this.connections.clear();
        } catch (Exception unused) {
        }
    }

    @Override
    public void disconnect(@NotNull Downloader.Response response) {
        M.p(response, "response");
        if (this.connections.containsKey(response)) {
            FetchFileResourceTransporter fetchFileResourceTransporter = this.connections.get(response);
            this.connections.remove(response);
            if (fetchFileResourceTransporter != null) {
                fetchFileResourceTransporter.close();
            }
        }
    }

    @Override
    @Nullable
    public Downloader.Response execute(@NotNull Downloader.ServerRequest request, @NotNull InterruptMonitor interruptMonitor) {
        boolean z10;
        M.p(request, "request");
        M.p(interruptMonitor, "interruptMonitor");
        FetchFileResourceTransporter fetchFileResourceTransporter = new FetchFileResourceTransporter(null, 1, null);
        long nanoTime = System.nanoTime();
        FileServerDownloader.TransporterRequest onPreClientExecute = onPreClientExecute(fetchFileResourceTransporter, request);
        fetchFileResourceTransporter.connect(onPreClientExecute.getInetSocketAddress());
        fetchFileResourceTransporter.sendFileRequest(onPreClientExecute.getFileRequest());
        while (!interruptMonitor.isInterrupted()) {
            FileResponse receiveFileResponse = fetchFileResourceTransporter.receiveFileResponse();
            if (receiveFileResponse != null) {
                int status = receiveFileResponse.getStatus();
                boolean z11 = receiveFileResponse.getConnection() == 1 && receiveFileResponse.getType() == 1 && receiveFileResponse.getStatus() == 206;
                long contentLength = receiveFileResponse.getContentLength();
                InputStream inputStream = fetchFileResourceTransporter.getInputStream();
                String copyStreamToString = !z11 ? FetchCoreUtils.copyStreamToString(inputStream, false) : null;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                try {
                    JSONObject jSONObject = new JSONObject(receiveFileResponse.getToJsonString());
                    Iterator<String> keys = jSONObject.keys();
                    M.o(keys, "keys(...)");
                    while (keys.hasNext()) {
                        String next = keys.next();
                        M.m(next);
                        linkedHashMap.put(next, G.l(jSONObject.get(next).toString()));
                    }
                } catch (Exception unused) {
                }
                if (!linkedHashMap.containsKey(d.f6230e0)) {
                    linkedHashMap.put(d.f6230e0, G.l(receiveFileResponse.getMd5()));
                }
                String contentHash = getContentHash(linkedHashMap);
                if (status != 206) {
                    List<String> list = linkedHashMap.get("Accept-Ranges");
                    if (!M.g(list != null ? (String) S.L2(list) : null, "bytes")) {
                        z10 = false;
                        boolean z12 = z11;
                        boolean z13 = z10;
                        onServerResponse(request, new Downloader.Response(status, z12, contentLength, null, request, contentHash, linkedHashMap, z13, copyStreamToString));
                        Downloader.Response response = new Downloader.Response(status, z12, contentLength, inputStream, request, contentHash, linkedHashMap, z13, copyStreamToString);
                        this.connections.put(response, fetchFileResourceTransporter);
                        return response;
                    }
                }
                z10 = true;
                boolean z122 = z11;
                boolean z132 = z10;
                onServerResponse(request, new Downloader.Response(status, z122, contentLength, null, request, contentHash, linkedHashMap, z132, copyStreamToString));
                Downloader.Response response2 = new Downloader.Response(status, z122, contentLength, inputStream, request, contentHash, linkedHashMap, z132, copyStreamToString);
                this.connections.put(response2, fetchFileResourceTransporter);
                return response2;
            }
            if (FetchCoreUtils.hasIntervalTimeElapsed(nanoTime, System.nanoTime(), this.timeout)) {
                break;
            }
        }
        return null;
    }

    @NotNull
    public final Map<Downloader.Response, FetchFileResourceTransporter> getConnections() {
        return this.connections;
    }

    @Override
    @NotNull
    public String getContentHash(@NotNull Map<String, List<String>> responseHeaders) {
        String str;
        M.p(responseHeaders, "responseHeaders");
        List<String> list = responseHeaders.get(d.f6230e0);
        return (list == null || (str = (String) S.L2(list)) == null) ? "" : str;
    }

    @Override
    @NotNull
    public List<FileResource> getFetchFileServerCatalog(@NotNull Downloader.ServerRequest serverRequest) {
        String str;
        M.p(serverRequest, "serverRequest");
        Downloader.Response execute = execute(serverRequest, new InterruptMonitor() {
            @Override
            public boolean isInterrupted() {
                return false;
            }
        });
        if ((execute != null ? execute.getByteStream() : null) == null) {
            throw new Exception(FetchErrorStrings.EMPTY_RESPONSE_BODY);
        }
        try {
            List<String> list = execute.getResponseHeaders().get(FileRequest.FIELD_TYPE);
            boolean z10 = true;
            if (((list == null || (str = (String) S.L2(list)) == null) ? -1 : Integer.parseInt(str)) != 1) {
                disconnect(execute);
                throw new Exception(FetchErrorStrings.FETCH_FILE_SERVER_INVALID_RESPONSE_TYPE);
            }
            char[] cArr = new char[1024];
            StringBuilder sb2 = new StringBuilder();
            InputStreamReader inputStreamReader = new InputStreamReader(execute.getByteStream(), C3625g.f32086b);
            for (int read = inputStreamReader.read(cArr, 0, 1024); read != -1; read = inputStreamReader.read(cArr, 0, 1024)) {
                sb2.append(cArr, 0, read);
            }
            inputStreamReader.close();
            String sb3 = sb2.toString();
            M.o(sb3, "toString(...)");
            if (sb3.length() <= 0) {
                z10 = false;
            }
            if (!z10) {
                throw new Exception(FetchErrorStrings.EMPTY_RESPONSE_BODY);
            }
            List<FileResource> parseFileResourceList = parseFileResourceList(sb3);
            disconnect(execute);
            return parseFileResourceList;
        } catch (Exception e10) {
            disconnect(execute);
            throw e10;
        }
    }

    @Override
    @Nullable
    public Integer getFileSlicingCount(@NotNull Downloader.ServerRequest request, long j10) {
        M.p(request, "request");
        return null;
    }

    @Override
    public boolean getHeadRequestMethodSupported(@NotNull Downloader.ServerRequest request) {
        M.p(request, "request");
        return false;
    }

    @Override
    public int getRequestBufferSize(@NotNull Downloader.ServerRequest request) {
        M.p(request, "request");
        return 8192;
    }

    @Override
    public long getRequestContentLength(@NotNull Downloader.ServerRequest request) {
        M.p(request, "request");
        return FetchCoreUtils.getRequestContentLength(request, this);
    }

    @Override
    @NotNull
    public Downloader.FileDownloaderType getRequestFileDownloaderType(@NotNull Downloader.ServerRequest request, @NotNull Set<? extends Downloader.FileDownloaderType> supportedFileDownloaderTypes) {
        M.p(request, "request");
        M.p(supportedFileDownloaderTypes, "supportedFileDownloaderTypes");
        return this.fileDownloaderType;
    }

    @Override
    @NotNull
    public Set<Downloader.FileDownloaderType> getRequestSupportedFileDownloaderTypes(@NotNull Downloader.ServerRequest request) {
        M.p(request, "request");
        try {
            return FetchCoreUtils.getRequestSupportedFileDownloaderTypes(request, this);
        } catch (Exception unused) {
            return z0.q(this.fileDownloaderType);
        }
    }

    @Override
    public void onServerResponse(@NotNull Downloader.ServerRequest request, @NotNull Downloader.Response response) {
        M.p(request, "request");
        M.p(response, "response");
    }

    @Override
    public boolean verifyContentHash(@NotNull Downloader.ServerRequest request, @NotNull String hash) {
        String fileMd5String;
        M.p(request, "request");
        M.p(hash, "hash");
        if (hash.length() == 0 || (fileMd5String = FetchCoreUtils.getFileMd5String(request.getFile())) == null) {
            return true;
        }
        return fileMd5String.contentEquals(hash);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @k
    public FetchFileServerDownloader(@NotNull Downloader.FileDownloaderType fileDownloaderType) {
        this(fileDownloaderType, 0L, 2, null);
        M.p(fileDownloaderType, "fileDownloaderType");
    }

    @Override
    @NotNull
    public FileServerDownloader.TransporterRequest onPreClientExecute(@NotNull FetchFileResourceTransporter client, @NotNull Downloader.ServerRequest request) {
        Integer r12;
        Integer r13;
        M.p(client, "client");
        M.p(request, "request");
        Map<String, String> headers = request.getHeaders();
        String str = headers.get(d.f6168I);
        if (str == null) {
            str = "bytes=0-";
        }
        Z<Long, Long> rangeForFetchFileServerRequest = FetchCoreUtils.getRangeForFetchFileServerRequest(str);
        String str2 = headers.get("Authorization");
        if (str2 == null) {
            str2 = "";
        }
        String str3 = str2;
        int fetchFileServerPort = FetchCoreUtils.getFetchFileServerPort(request.getUrl());
        String fetchFileServerHostAddress = FetchCoreUtils.getFetchFileServerHostAddress(request.getUrl());
        MutableExtras mutableExtras = request.getExtras().toMutableExtras();
        for (Map.Entry<String, String> entry : request.getHeaders().entrySet()) {
            mutableExtras.putString(entry.getKey(), entry.getValue());
        }
        FileServerDownloader.TransporterRequest transporterRequest = new FileServerDownloader.TransporterRequest();
        transporterRequest.setInetSocketAddress(new InetSocketAddress(fetchFileServerHostAddress, fetchFileServerPort));
        String fileResourceIdFromUrl = FetchCoreUtils.getFileResourceIdFromUrl(request.getUrl());
        long longValue = rangeForFetchFileServerRequest.e().longValue();
        long longValue2 = rangeForFetchFileServerRequest.f().longValue();
        String str4 = headers.get(FileRequest.FIELD_CLIENT);
        if (str4 == null) {
            str4 = UUID.randomUUID().toString();
            M.o(str4, "toString(...)");
        }
        String str5 = str4;
        String str6 = headers.get(FileRequest.FIELD_PAGE);
        int intValue = (str6 == null || (r13 = C3616J.r1(str6)) == null) ? 0 : r13.intValue();
        String str7 = headers.get(FileRequest.FIELD_SIZE);
        transporterRequest.setFileRequest(new FileRequest(1, fileResourceIdFromUrl, longValue, longValue2, str3, str5, mutableExtras, intValue, (str7 == null || (r12 = C3616J.r1(str7)) == null) ? 0 : r12.intValue(), false));
        return transporterRequest;
    }

    @k
    public FetchFileServerDownloader(@NotNull Downloader.FileDownloaderType fileDownloaderType, long j10) {
        M.p(fileDownloaderType, "fileDownloaderType");
        this.fileDownloaderType = fileDownloaderType;
        this.timeout = j10;
        Map<Downloader.Response, FetchFileResourceTransporter> synchronizedMap = Collections.synchronizedMap(new HashMap());
        M.o(synchronizedMap, "synchronizedMap(...)");
        this.connections = synchronizedMap;
    }

    public FetchFileServerDownloader(Downloader.FileDownloaderType fileDownloaderType, long j10, int i10, C14026x c14026x) {
        this((i10 & 1) != 0 ? Downloader.FileDownloaderType.SEQUENTIAL : fileDownloaderType, (i10 & 2) != 0 ? 20000L : j10);
    }
}
