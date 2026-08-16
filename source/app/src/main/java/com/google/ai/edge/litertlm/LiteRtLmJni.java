package com.google.ai.edge.litertlm;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class LiteRtLmJni {

    @NotNull
    public static final LiteRtLmJni f59865a = new LiteRtLmJni();

    public interface JniInferenceCallback {
        void a();

        void c(int statusCode, @NotNull String message);

        void d(@NotNull String response);
    }

    public interface JniMessageCallback {
        void a();

        void b(@NotNull String messageJsonString);

        void c(int statusCode, @NotNull String message);
    }

    static {
        NativeLibraryLoader.f59866a.f();
    }

    public final native void nativeCancelProcess(long sessionPointer);

    public final native void nativeConversationCancelProcess(long conversationPointer);

    @NotNull
    public final native BenchmarkInfo nativeConversationGetBenchmarkInfo(long conversationPointer);

    @NotNull
    public final native String nativeConversationRenderMessageIntoString(long conversationPointer, @NotNull String messageJsonString, @NotNull String extraContextJsonString);

    public final native long nativeCreateBenchmark(@NotNull String modelPath, @NotNull String backend, int prefillTokens, int decodeTokens, @NotNull String cacheDir, @NotNull String mainNpuNativeLibraryDir);

    public final native long nativeCreateCapabilities(@NotNull String modelPath);

    public final native long nativeCreateConversation(long enginePointer, @Nullable SamplerConfig samplerConfig, @NotNull String messageJsonString, @NotNull String toolsDescriptionJsonString, @Nullable String channelsJsonString, @NotNull String extraContextJsonString, boolean enableConversationConstrainedDecoding, boolean filterChannelContentFromKvCache, @Nullable String overwritePromptTemplate);

    public final native long nativeCreateEngine(@NotNull String modelPath, @NotNull String backend, @NotNull String visionBackend, @NotNull String audioBackend, int maxNumTokens, int maxNumImages, @NotNull String cacheDir, boolean enableBenchmark, @Nullable Boolean enableSpeculativeDecoding, @NotNull String mainNpuNativeLibraryDir, @NotNull String visionNpuNativeLibraryDir, @NotNull String audioNpuNativeLibraryDir, int mainBackendNumThreads, int audioBackendNumThreads);

    public final native long nativeCreateSession(long enginePointer, @Nullable SamplerConfig samplerConfig);

    public final native void nativeDeleteCapabilities(long capabilitiesPointer);

    public final native void nativeDeleteConversation(long conversationPointer);

    public final native void nativeDeleteEngine(long enginePointer);

    public final native void nativeDeleteSession(long sessionPointer);

    @NotNull
    public final native String nativeGenerateContent(long sessionPointer, @NotNull InputData[] inputData);

    public final native void nativeGenerateContentStream(long sessionPointer, @NotNull InputData[] inputData, @NotNull JniInferenceCallback callback);

    public final native boolean nativeHasSpeculativeDecodingSupport(long capabilitiesPointer);

    @NotNull
    public final native String nativeRunDecode(long sessionPointer);

    public final native void nativeRunPrefill(long sessionPointer, @NotNull InputData[] inputData);

    @NotNull
    public final native String nativeSendMessage(long conversationPointer, @NotNull String messageJsonString, @NotNull String extraContextJsonString);

    public final native void nativeSendMessageAsync(long conversationPointer, @NotNull String messageJsonString, @NotNull String extraContextJsonString, @NotNull JniMessageCallback callback);

    public final native void nativeSetMinLogSeverity(int logSeverity);
}
