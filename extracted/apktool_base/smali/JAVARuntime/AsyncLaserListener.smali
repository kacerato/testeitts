.class public interface abstract LJAVARuntime/AsyncLaserListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Vertex"
    }
.end annotation


# virtual methods
.method public abstract onFinish(LJAVARuntime/LaserHit;)V
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "laserHit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "laserHit"
        }
    .end annotation
.end method
