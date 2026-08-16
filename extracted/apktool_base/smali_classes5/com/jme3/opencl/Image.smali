.class public abstract Lcom/jme3/opencl/Image;
.super Lcom/jme3/opencl/AbstractOpenCLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/opencl/Image$ImageType;,
        Lcom/jme3/opencl/Image$ImageFormat;,
        Lcom/jme3/opencl/Image$ImageMapping;,
        Lcom/jme3/opencl/Image$ImageDescriptor;,
        Lcom/jme3/opencl/Image$ImageChannelOrder;,
        Lcom/jme3/opencl/Image$ImageChannelType;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/opencl/AbstractOpenCLObject;-><init>(Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;)V

    return-void
.end method


# virtual methods
.method public abstract acquireImageForSharingAsync(Lcom/jme3/opencl/CommandQueue;)Lcom/jme3/opencl/Event;
.end method

.method public acquireImageForSharingNoEvent(Lcom/jme3/opencl/CommandQueue;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/opencl/Image;->acquireImageForSharingAsync(Lcom/jme3/opencl/CommandQueue;)Lcom/jme3/opencl/Event;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/opencl/AbstractOpenCLObject;->release()V

    return-void
.end method

.method public abstract copyTo(Lcom/jme3/opencl/CommandQueue;Lcom/jme3/opencl/Image;[J[J[J)V
.end method

.method public abstract copyToAsync(Lcom/jme3/opencl/CommandQueue;Lcom/jme3/opencl/Image;[J[J[J)Lcom/jme3/opencl/Event;
.end method

.method public abstract copyToBufferAsync(Lcom/jme3/opencl/CommandQueue;Lcom/jme3/opencl/Buffer;[J[JJ)Lcom/jme3/opencl/Event;
.end method

.method public abstract fillAsync(Lcom/jme3/opencl/CommandQueue;[J[JLcom/jme3/math/ColorRGBA;)Lcom/jme3/opencl/Event;
.end method

.method public abstract fillAsync(Lcom/jme3/opencl/CommandQueue;[J[J[I)Lcom/jme3/opencl/Event;
.end method

.method public abstract getArraySize()J
.end method

.method public abstract getDepth()J
.end method

.method public abstract getElementSize()I
.end method

.method public abstract getHeight()J
.end method

.method public abstract getImageFormat()Lcom/jme3/opencl/Image$ImageFormat;
.end method

.method public abstract getImageType()Lcom/jme3/opencl/Image$ImageType;
.end method

.method public abstract getRowPitch()J
.end method

.method public abstract getSlicePitch()J
.end method

.method public abstract getWidth()J
.end method

.method public abstract map(Lcom/jme3/opencl/CommandQueue;[J[JLcom/jme3/opencl/MappingAccess;)Lcom/jme3/opencl/Image$ImageMapping;
.end method

.method public abstract mapAsync(Lcom/jme3/opencl/CommandQueue;[J[JLcom/jme3/opencl/MappingAccess;)Lcom/jme3/opencl/Image$ImageMapping;
.end method

.method public abstract readImage(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;[J[JJJ)V
.end method

.method public abstract readImageAsync(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;[J[JJJ)Lcom/jme3/opencl/Event;
.end method

.method public bridge synthetic register()Lcom/jme3/opencl/AbstractOpenCLObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/opencl/Image;->register()Lcom/jme3/opencl/Image;

    move-result-object v0

    return-object v0
.end method

.method public register()Lcom/jme3/opencl/Image;
    .locals 0

    .line 3
    invoke-super {p0}, Lcom/jme3/opencl/AbstractOpenCLObject;->register()Lcom/jme3/opencl/AbstractOpenCLObject;

    return-object p0
.end method

.method public bridge synthetic register()Lcom/jme3/opencl/OpenCLObject;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/jme3/opencl/Image;->register()Lcom/jme3/opencl/Image;

    move-result-object v0

    return-object v0
.end method

.method public abstract releaseImageForSharingAsync(Lcom/jme3/opencl/CommandQueue;)Lcom/jme3/opencl/Event;
.end method

.method public releaseImageForSharingNoEvent(Lcom/jme3/opencl/CommandQueue;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/opencl/Image;->releaseImageForSharingAsync(Lcom/jme3/opencl/CommandQueue;)Lcom/jme3/opencl/Event;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/opencl/AbstractOpenCLObject;->release()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Image ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/opencl/Image;->getImageType()Lcom/jme3/opencl/Image$ImageType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", w="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/opencl/Image;->getWidth()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/jme3/opencl/Image$ImageType;->IMAGE_2D:Lcom/jme3/opencl/Image$ImageType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/jme3/opencl/Image$ImageType;->IMAGE_3D:Lcom/jme3/opencl/Image$ImageType;

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v2, ", h="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/opencl/Image;->getHeight()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1
    sget-object v2, Lcom/jme3/opencl/Image$ImageType;->IMAGE_3D:Lcom/jme3/opencl/Image$ImageType;

    if-ne v1, v2, :cond_2

    const-string v2, ", d="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/opencl/Image;->getDepth()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_2
    sget-object v2, Lcom/jme3/opencl/Image$ImageType;->IMAGE_1D_ARRAY:Lcom/jme3/opencl/Image$ImageType;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/jme3/opencl/Image$ImageType;->IMAGE_2D_ARRAY:Lcom/jme3/opencl/Image$ImageType;

    if-ne v1, v2, :cond_4

    :cond_3
    const-string v1, ", arrays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/opencl/Image;->getArraySize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/opencl/Image;->getImageFormat()Lcom/jme3/opencl/Image$ImageFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract unmap(Lcom/jme3/opencl/CommandQueue;Lcom/jme3/opencl/Image$ImageMapping;)V
.end method

.method public abstract writeImage(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;[J[JJJ)V
.end method

.method public abstract writeImageAsync(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;[J[JJJ)Lcom/jme3/opencl/Event;
.end method
