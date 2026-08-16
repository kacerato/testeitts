.class public interface abstract LJAVARuntime/InputDialogListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Input"
    }
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onFinish(Ljava/lang/String;)V
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "text"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation
.end method
