.class LJAVARuntime/StreamPCMSoundEmitter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/StreamPCMSoundEmitter$1;->fillAudio(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;IF)LFc/e$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:LJAVARuntime/StreamPCMSoundEmitter$1;

.field final synthetic val$out:[LJAVARuntime/StreamPCMSoundEmitter$State;

.field final synthetic val$playedSamples:I

.field final synthetic val$runtimeBuffer:LJAVARuntime/NativeShortBuffer;

.field final synthetic val$seconds:F


# direct methods
.method public constructor <init>(LJAVARuntime/StreamPCMSoundEmitter$1;LJAVARuntime/NativeShortBuffer;IF[LJAVARuntime/StreamPCMSoundEmitter$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$runtimeBuffer",
            "val$playedSamples",
            "val$seconds",
            "val$out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/StreamPCMSoundEmitter$1$1;->this$1:LJAVARuntime/StreamPCMSoundEmitter$1;

    iput-object p2, p0, LJAVARuntime/StreamPCMSoundEmitter$1$1;->val$runtimeBuffer:LJAVARuntime/NativeShortBuffer;

    iput p3, p0, LJAVARuntime/StreamPCMSoundEmitter$1$1;->val$playedSamples:I

    iput p4, p0, LJAVARuntime/StreamPCMSoundEmitter$1$1;->val$seconds:F

    iput-object p5, p0, LJAVARuntime/StreamPCMSoundEmitter$1$1;->val$out:[LJAVARuntime/StreamPCMSoundEmitter$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter$1$1;->this$1:LJAVARuntime/StreamPCMSoundEmitter$1;

    iget-object v0, v0, LJAVARuntime/StreamPCMSoundEmitter$1;->val$callback:LJAVARuntime/StreamPCMSoundEmitter$Callback;

    iget-object v1, p0, LJAVARuntime/StreamPCMSoundEmitter$1$1;->val$runtimeBuffer:LJAVARuntime/NativeShortBuffer;

    iget v2, p0, LJAVARuntime/StreamPCMSoundEmitter$1$1;->val$playedSamples:I

    iget v3, p0, LJAVARuntime/StreamPCMSoundEmitter$1$1;->val$seconds:F

    invoke-interface {v0, v1, v2, v3}, LJAVARuntime/StreamPCMSoundEmitter$Callback;->fillAudio(LJAVARuntime/NativeShortBuffer;IF)LJAVARuntime/StreamPCMSoundEmitter$State;

    move-result-object v0

    iget-object v1, p0, LJAVARuntime/StreamPCMSoundEmitter$1$1;->val$out:[LJAVARuntime/StreamPCMSoundEmitter$State;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, LJAVARuntime/StreamPCMSoundEmitter$State;->STOPPED:LJAVARuntime/StreamPCMSoundEmitter$State;

    :goto_0
    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-void
.end method
