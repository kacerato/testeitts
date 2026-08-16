.class public interface abstract LJAVARuntime/ConnectionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onConnected()V
.end method

.method public abstract onDisconnected()V
.end method

.method public abstract onError(Ljava/lang/String;I)V
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "error",
            "code"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "code"
        }
    .end annotation
.end method
