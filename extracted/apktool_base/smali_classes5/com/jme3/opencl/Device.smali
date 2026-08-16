.class public interface abstract Lcom/jme3/opencl/Device;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/opencl/Device$DeviceType;
    }
.end annotation


# virtual methods
.method public abstract getAddressBits()I
.end method

.method public abstract getClockFrequency()I
.end method

.method public abstract getCompilerVersion()Ljava/lang/String;
.end method

.method public abstract getCompilerVersionMajor()I
.end method

.method public abstract getCompilerVersionMinor()I
.end method

.method public abstract getComputeUnits()I
.end method

.method public abstract getDeviceType()Lcom/jme3/opencl/Device$DeviceType;
.end method

.method public abstract getDriverVersion()Ljava/lang/String;
.end method

.method public abstract getDriverVersionMajor()I
.end method

.method public abstract getDriverVersionMinor()I
.end method

.method public abstract getExtensions()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGlobalMemorySize()J
.end method

.method public abstract getLocalMemorySize()J
.end method

.method public abstract getMaximumAllocationSize()J
.end method

.method public abstract getMaximumConstantArguments()I
.end method

.method public abstract getMaximumConstantBufferSize()J
.end method

.method public abstract getMaximumImage2DSize()[J
.end method

.method public abstract getMaximumImage3DSize()[J
.end method

.method public abstract getMaximumReadImages()I
.end method

.method public abstract getMaximumSamplers()I
.end method

.method public abstract getMaximumWorkItemDimensions()J
.end method

.method public abstract getMaximumWorkItemSizes()[J
.end method

.method public abstract getMaximumWriteImages()I
.end method

.method public abstract getMaxiumWorkItemsPerGroup()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPlatform()Lcom/jme3/opencl/Platform;
.end method

.method public abstract getProfile()Ljava/lang/String;
.end method

.method public abstract getVendor()Ljava/lang/String;
.end method

.method public abstract getVendorId()I
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract getVersionMajor()I
.end method

.method public abstract getVersionMinor()I
.end method

.method public abstract hasCompiler()Z
.end method

.method public abstract hasDouble()Z
.end method

.method public abstract hasErrorCorrectingMemory()Z
.end method

.method public abstract hasExtension(Ljava/lang/String;)Z
.end method

.method public abstract hasHalfFloat()Z
.end method

.method public abstract hasImageSupport()Z
.end method

.method public abstract hasOpenGLInterop()Z
.end method

.method public abstract hasUnifiedMemory()Z
.end method

.method public abstract hasWritableImage3D()Z
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract isLittleEndian()Z
.end method
