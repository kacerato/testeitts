.class public abstract Lcom/jme3/opencl/Event;
.super Lcom/jme3/opencl/AbstractOpenCLObject;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/opencl/AbstractOpenCLObject;-><init>(Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;)V

    return-void
.end method


# virtual methods
.method public abstract isCompleted()Z
.end method

.method public bridge synthetic register()Lcom/jme3/opencl/AbstractOpenCLObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/opencl/Event;->register()Lcom/jme3/opencl/Event;

    move-result-object v0

    return-object v0
.end method

.method public register()Lcom/jme3/opencl/Event;
    .locals 0

    .line 3
    invoke-super {p0}, Lcom/jme3/opencl/AbstractOpenCLObject;->register()Lcom/jme3/opencl/AbstractOpenCLObject;

    return-object p0
.end method

.method public bridge synthetic register()Lcom/jme3/opencl/OpenCLObject;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/jme3/opencl/Event;->register()Lcom/jme3/opencl/Event;

    move-result-object v0

    return-object v0
.end method

.method public abstract waitForFinished()V
.end method
