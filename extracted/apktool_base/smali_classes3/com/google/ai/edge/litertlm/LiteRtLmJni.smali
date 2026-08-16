.class public final Lcom/google/ai/edge/litertlm/LiteRtLmJni;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ai/edge/litertlm/LiteRtLmJni$JniInferenceCallback;,
        Lcom/google/ai/edge/litertlm/LiteRtLmJni$JniMessageCallback;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/ai/edge/litertlm/LiteRtLmJni;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ai/edge/litertlm/LiteRtLmJni;

    invoke-direct {v0}, Lcom/google/ai/edge/litertlm/LiteRtLmJni;-><init>()V

    sput-object v0, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->a:Lcom/google/ai/edge/litertlm/LiteRtLmJni;

    sget-object v0, Lcom/google/ai/edge/litertlm/NativeLibraryLoader;->a:Lcom/google/ai/edge/litertlm/NativeLibraryLoader;

    invoke-virtual {v0}, Lcom/google/ai/edge/litertlm/NativeLibraryLoader;->f()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native nativeCancelProcess(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionPointer"
        }
    .end annotation
.end method

.method public final native nativeConversationCancelProcess(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conversationPointer"
        }
    .end annotation
.end method

.method public final native nativeConversationGetBenchmarkInfo(J)Lcom/google/ai/edge/litertlm/BenchmarkInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conversationPointer"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final native nativeConversationRenderMessageIntoString(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "conversationPointer",
            "messageJsonString",
            "extraContextJsonString"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final native nativeCreateBenchmark(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)J
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "modelPath",
            "backend",
            "prefillTokens",
            "decodeTokens",
            "cacheDir",
            "mainNpuNativeLibraryDir"
        }
    .end annotation
.end method

.method public final native nativeCreateCapabilities(Ljava/lang/String;)J
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelPath"
        }
    .end annotation
.end method

.method public final native nativeCreateConversation(JLcom/google/ai/edge/litertlm/SamplerConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)J
    .param p3    # Lcom/google/ai/edge/litertlm/SamplerConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "enginePointer",
            "samplerConfig",
            "messageJsonString",
            "toolsDescriptionJsonString",
            "channelsJsonString",
            "extraContextJsonString",
            "enableConversationConstrainedDecoding",
            "filterChannelContentFromKvCache",
            "overwritePromptTemplate"
        }
    .end annotation
.end method

.method public final native nativeCreateEngine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)J
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "modelPath",
            "backend",
            "visionBackend",
            "audioBackend",
            "maxNumTokens",
            "maxNumImages",
            "cacheDir",
            "enableBenchmark",
            "enableSpeculativeDecoding",
            "mainNpuNativeLibraryDir",
            "visionNpuNativeLibraryDir",
            "audioNpuNativeLibraryDir",
            "mainBackendNumThreads",
            "audioBackendNumThreads"
        }
    .end annotation
.end method

.method public final native nativeCreateSession(JLcom/google/ai/edge/litertlm/SamplerConfig;)J
    .param p3    # Lcom/google/ai/edge/litertlm/SamplerConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enginePointer",
            "samplerConfig"
        }
    .end annotation
.end method

.method public final native nativeDeleteCapabilities(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capabilitiesPointer"
        }
    .end annotation
.end method

.method public final native nativeDeleteConversation(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conversationPointer"
        }
    .end annotation
.end method

.method public final native nativeDeleteEngine(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enginePointer"
        }
    .end annotation
.end method

.method public final native nativeDeleteSession(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionPointer"
        }
    .end annotation
.end method

.method public final native nativeGenerateContent(J[Lcom/google/ai/edge/litertlm/InputData;)Ljava/lang/String;
    .param p3    # [Lcom/google/ai/edge/litertlm/InputData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sessionPointer",
            "inputData"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final native nativeGenerateContentStream(J[Lcom/google/ai/edge/litertlm/InputData;Lcom/google/ai/edge/litertlm/LiteRtLmJni$JniInferenceCallback;)V
    .param p3    # [Lcom/google/ai/edge/litertlm/InputData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/ai/edge/litertlm/LiteRtLmJni$JniInferenceCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sessionPointer",
            "inputData",
            "callback"
        }
    .end annotation
.end method

.method public final native nativeHasSpeculativeDecodingSupport(J)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capabilitiesPointer"
        }
    .end annotation
.end method

.method public final native nativeRunDecode(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionPointer"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final native nativeRunPrefill(J[Lcom/google/ai/edge/litertlm/InputData;)V
    .param p3    # [Lcom/google/ai/edge/litertlm/InputData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sessionPointer",
            "inputData"
        }
    .end annotation
.end method

.method public final native nativeSendMessage(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "conversationPointer",
            "messageJsonString",
            "extraContextJsonString"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final native nativeSendMessageAsync(JLjava/lang/String;Ljava/lang/String;Lcom/google/ai/edge/litertlm/LiteRtLmJni$JniMessageCallback;)V
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/ai/edge/litertlm/LiteRtLmJni$JniMessageCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "conversationPointer",
            "messageJsonString",
            "extraContextJsonString",
            "callback"
        }
    .end annotation
.end method

.method public final native nativeSetMinLogSeverity(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logSeverity"
        }
    .end annotation
.end method
