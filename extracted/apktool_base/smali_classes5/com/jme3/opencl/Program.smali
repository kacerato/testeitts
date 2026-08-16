.class public abstract Lcom/jme3/opencl/Program;
.super Lcom/jme3/opencl/AbstractOpenCLObject;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/opencl/AbstractOpenCLObject;-><init>(Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;)V

    return-void
.end method


# virtual methods
.method public build()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jme3/opencl/KernelCompilationException;
        }
    .end annotation

    .line 1
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/opencl/Program;->build(Ljava/lang/String;[Lcom/jme3/opencl/Device;)V

    return-void
.end method

.method public varargs abstract build(Ljava/lang/String;[Lcom/jme3/opencl/Device;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jme3/opencl/KernelCompilationException;
        }
    .end annotation
.end method

.method public abstract createAllKernels()[Lcom/jme3/opencl/Kernel;
.end method

.method public abstract createKernel(Ljava/lang/String;)Lcom/jme3/opencl/Kernel;
.end method

.method public abstract getBinary(Lcom/jme3/opencl/Device;)Ljava/nio/ByteBuffer;
.end method

.method public bridge synthetic register()Lcom/jme3/opencl/AbstractOpenCLObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/opencl/Program;->register()Lcom/jme3/opencl/Program;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic register()Lcom/jme3/opencl/OpenCLObject;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/jme3/opencl/Program;->register()Lcom/jme3/opencl/Program;

    move-result-object v0

    return-object v0
.end method

.method public register()Lcom/jme3/opencl/Program;
    .locals 0

    .line 3
    invoke-super {p0}, Lcom/jme3/opencl/AbstractOpenCLObject;->register()Lcom/jme3/opencl/AbstractOpenCLObject;

    return-object p0
.end method
