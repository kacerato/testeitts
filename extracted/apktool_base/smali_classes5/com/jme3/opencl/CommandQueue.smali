.class public abstract Lcom/jme3/opencl/CommandQueue;
.super Lcom/jme3/opencl/AbstractOpenCLObject;
.source "SourceFile"


# instance fields
.field protected device:Lcom/jme3/opencl/Device;


# direct methods
.method public constructor <init>(Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;Lcom/jme3/opencl/Device;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/opencl/AbstractOpenCLObject;-><init>(Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;)V

    iput-object p2, p0, Lcom/jme3/opencl/CommandQueue;->device:Lcom/jme3/opencl/Device;

    return-void
.end method


# virtual methods
.method public abstract finish()V
.end method

.method public abstract flush()V
.end method

.method public getDevice()Lcom/jme3/opencl/Device;
    .locals 1

    iget-object v0, p0, Lcom/jme3/opencl/CommandQueue;->device:Lcom/jme3/opencl/Device;

    return-object v0
.end method

.method public bridge synthetic register()Lcom/jme3/opencl/AbstractOpenCLObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/opencl/CommandQueue;->register()Lcom/jme3/opencl/CommandQueue;

    move-result-object v0

    return-object v0
.end method

.method public register()Lcom/jme3/opencl/CommandQueue;
    .locals 0

    .line 3
    invoke-super {p0}, Lcom/jme3/opencl/AbstractOpenCLObject;->register()Lcom/jme3/opencl/AbstractOpenCLObject;

    return-object p0
.end method

.method public bridge synthetic register()Lcom/jme3/opencl/OpenCLObject;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/jme3/opencl/CommandQueue;->register()Lcom/jme3/opencl/CommandQueue;

    move-result-object v0

    return-object v0
.end method
