.class public interface abstract LJAVARuntime/FixedFrameListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Framerate"
    }
.end annotation


# virtual methods
.method public abstract repeat(F)V
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "deltaTime"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deltaTime"
        }
    .end annotation
.end method
