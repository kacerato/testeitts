.class LJAVARuntime/StreamPCMSoundEmitter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LFc/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/StreamPCMSoundEmitter;-><init>(LJAVARuntime/StreamPCMSoundEmitter$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/StreamPCMSoundEmitter;

.field final synthetic val$callback:LJAVARuntime/StreamPCMSoundEmitter$Callback;


# direct methods
.method public constructor <init>(LJAVARuntime/StreamPCMSoundEmitter;LJAVARuntime/StreamPCMSoundEmitter$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/StreamPCMSoundEmitter$1;->this$0:LJAVARuntime/StreamPCMSoundEmitter;

    iput-object p2, p0, LJAVARuntime/StreamPCMSoundEmitter$1;->val$callback:LJAVARuntime/StreamPCMSoundEmitter$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fillAudio(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;IF)LFc/e$b;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "audio",
            "playedSamples",
            "seconds"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->toJAVARuntime()LJAVARuntime/NativeShortBuffer;

    move-result-object v2

    sget-object p1, LJAVARuntime/StreamPCMSoundEmitter$State;->STOPPED:LJAVARuntime/StreamPCMSoundEmitter$State;

    filled-new-array {p1}, [LJAVARuntime/StreamPCMSoundEmitter$State;

    move-result-object p1

    new-instance v6, LJAVARuntime/StreamPCMSoundEmitter$1$1;

    move-object v0, v6

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, LJAVARuntime/StreamPCMSoundEmitter$1$1;-><init>(LJAVARuntime/StreamPCMSoundEmitter$1;LJAVARuntime/NativeShortBuffer;IF[LJAVARuntime/StreamPCMSoundEmitter$State;)V

    invoke-static {v6}, Ld8/m;->d(Lo8/d;)Z

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-static {p1}, LJAVARuntime/StreamPCMSoundEmitter;->access$000(LJAVARuntime/StreamPCMSoundEmitter$State;)LFc/e$b;

    move-result-object p1

    return-object p1
.end method
