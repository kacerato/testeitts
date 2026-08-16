.class public interface abstract LJAVARuntime/CompileErrorListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Shaders"
    }
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;)V
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation
.end method
