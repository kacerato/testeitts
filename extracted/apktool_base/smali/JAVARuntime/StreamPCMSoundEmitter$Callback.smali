.class public interface abstract LJAVARuntime/StreamPCMSoundEmitter$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/StreamPCMSoundEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract fillAudio(LJAVARuntime/NativeShortBuffer;IF)LJAVARuntime/StreamPCMSoundEmitter$State;
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
.end method
