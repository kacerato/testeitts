.class public interface abstract LJAVARuntime/ListStreamListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Lists"
    }
.end annotation


# virtual methods
.method public abstract execute(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object",
            "idx",
            "userData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "object",
            "idx",
            "userData"
        }
    .end annotation
.end method

.method public abstract onError(Ljava/lang/Exception;Ljava/lang/Error;ILjava/lang/Object;)V
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "exception",
            "error",
            "idx",
            "userData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ex",
            "er",
            "idx",
            "userData"
        }
    .end annotation
.end method

.method public abstract onFinish(Ljava/lang/Object;)V
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "userData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userData"
        }
    .end annotation
.end method
