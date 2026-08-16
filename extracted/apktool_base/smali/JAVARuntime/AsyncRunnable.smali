.class public interface abstract LJAVARuntime/AsyncRunnable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Async"
    }
.end annotation


# virtual methods
.method public abstract onBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation
.end method

.method public abstract onEngine(Ljava/lang/Object;)V
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation
.end method
