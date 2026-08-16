.class public abstract Lcom/jme3/opencl/AbstractOpenCLObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/opencl/OpenCLObject;


# instance fields
.field protected final releaser:Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;


# direct methods
.method public constructor <init>(Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/opencl/AbstractOpenCLObject;->releaser:Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jme3/opencl/AbstractOpenCLObject;->release()V

    return-void
.end method

.method public getReleaser()Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;
    .locals 1

    iget-object v0, p0, Lcom/jme3/opencl/AbstractOpenCLObject;->releaser:Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;

    return-object v0
.end method

.method public register()Lcom/jme3/opencl/AbstractOpenCLObject;
    .locals 1

    .line 2
    invoke-static {}, Lcom/jme3/opencl/OpenCLObjectManager;->getInstance()Lcom/jme3/opencl/OpenCLObjectManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jme3/opencl/OpenCLObjectManager;->registerObject(Lcom/jme3/opencl/OpenCLObject;)V

    return-object p0
.end method

.method public bridge synthetic register()Lcom/jme3/opencl/OpenCLObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/opencl/AbstractOpenCLObject;->register()Lcom/jme3/opencl/AbstractOpenCLObject;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/opencl/AbstractOpenCLObject;->releaser:Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;

    invoke-interface {v0}, Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;->release()V

    return-void
.end method
