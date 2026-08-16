.class public abstract Lcom/jme3/opencl/Buffer;
.super Lcom/jme3/opencl/AbstractOpenCLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/opencl/Buffer$AsyncMapping;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/opencl/AbstractOpenCLObject;-><init>(Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;)V

    return-void
.end method


# virtual methods
.method public abstract acquireBufferForSharingAsync(Lcom/jme3/opencl/CommandQueue;)Lcom/jme3/opencl/Event;
.end method

.method public acquireBufferForSharingNoEvent(Lcom/jme3/opencl/CommandQueue;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/opencl/Buffer;->acquireBufferForSharingAsync(Lcom/jme3/opencl/CommandQueue;)Lcom/jme3/opencl/Event;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/opencl/AbstractOpenCLObject;->release()V

    return-void
.end method

.method public copyTo(Lcom/jme3/opencl/CommandQueue;Lcom/jme3/opencl/Buffer;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/jme3/opencl/Buffer;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jme3/opencl/Buffer;->copyTo(Lcom/jme3/opencl/CommandQueue;Lcom/jme3/opencl/Buffer;J)V

    return-void
.end method

.method public copyTo(Lcom/jme3/opencl/CommandQueue;Lcom/jme3/opencl/Buffer;J)V
    .locals 9

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 1
    invoke-virtual/range {v0 .. v8}, Lcom/jme3/opencl/Buffer;->copyTo(Lcom/jme3/opencl/CommandQueue;Lcom/jme3/opencl/Buffer;JJJ)V

    return-void
.end method

.method public abstract copyTo(Lcom/jme3/opencl/CommandQueue;Lcom/jme3/opencl/Buffer;JJJ)V
.end method

.method public copyToAsync(Lcom/jme3/opencl/CommandQueue;Lcom/jme3/opencl/Buffer;)Lcom/jme3/opencl/Event;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/jme3/opencl/Buffer;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jme3/opencl/Buffer;->copyToAsync(Lcom/jme3/opencl/CommandQueue;Lcom/jme3/opencl/Buffer;J)Lcom/jme3/opencl/Event;

    move-result-object p1

    return-object p1
.end method

.method public copyToAsync(Lcom/jme3/opencl/CommandQueue;Lcom/jme3/opencl/Buffer;J)Lcom/jme3/opencl/Event;
    .locals 9

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 1
    invoke-virtual/range {v0 .. v8}, Lcom/jme3/opencl/Buffer;->copyToAsync(Lcom/jme3/opencl/CommandQueue;Lcom/jme3/opencl/Buffer;JJJ)Lcom/jme3/opencl/Event;

    move-result-object p1

    return-object p1
.end method

.method public abstract copyToAsync(Lcom/jme3/opencl/CommandQueue;Lcom/jme3/opencl/Buffer;JJJ)Lcom/jme3/opencl/Event;
.end method

.method public abstract copyToImageAsync(Lcom/jme3/opencl/CommandQueue;Lcom/jme3/opencl/Image;J[J[J)Lcom/jme3/opencl/Event;
.end method

.method public abstract fillAsync(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;JJ)Lcom/jme3/opencl/Event;
.end method

.method public abstract getMemoryAccessFlags()Lcom/jme3/opencl/MemoryAccess;
.end method

.method public abstract getSize()J
.end method

.method public abstract map(Lcom/jme3/opencl/CommandQueue;JJLcom/jme3/opencl/MappingAccess;)Ljava/nio/ByteBuffer;
.end method

.method public map(Lcom/jme3/opencl/CommandQueue;JLcom/jme3/opencl/MappingAccess;)Ljava/nio/ByteBuffer;
    .locals 7

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p4

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/jme3/opencl/Buffer;->map(Lcom/jme3/opencl/CommandQueue;JJLcom/jme3/opencl/MappingAccess;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public map(Lcom/jme3/opencl/CommandQueue;Lcom/jme3/opencl/MappingAccess;)Ljava/nio/ByteBuffer;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/jme3/opencl/Buffer;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/jme3/opencl/Buffer;->map(Lcom/jme3/opencl/CommandQueue;JLcom/jme3/opencl/MappingAccess;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public abstract mapAsync(Lcom/jme3/opencl/CommandQueue;JJLcom/jme3/opencl/MappingAccess;)Lcom/jme3/opencl/Buffer$AsyncMapping;
.end method

.method public mapAsync(Lcom/jme3/opencl/CommandQueue;JLcom/jme3/opencl/MappingAccess;)Lcom/jme3/opencl/Buffer$AsyncMapping;
    .locals 7

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p4

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/jme3/opencl/Buffer;->mapAsync(Lcom/jme3/opencl/CommandQueue;JJLcom/jme3/opencl/MappingAccess;)Lcom/jme3/opencl/Buffer$AsyncMapping;

    move-result-object p1

    return-object p1
.end method

.method public mapAsync(Lcom/jme3/opencl/CommandQueue;Lcom/jme3/opencl/MappingAccess;)Lcom/jme3/opencl/Buffer$AsyncMapping;
    .locals 7

    .line 2
    invoke-virtual {p0}, Lcom/jme3/opencl/Buffer;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jme3/opencl/Buffer;->mapAsync(Lcom/jme3/opencl/CommandQueue;JJLcom/jme3/opencl/MappingAccess;)Lcom/jme3/opencl/Buffer$AsyncMapping;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/jme3/opencl/Buffer;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jme3/opencl/Buffer;->read(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method public read(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;J)V
    .locals 7

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/jme3/opencl/Buffer;->read(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;JJ)V

    return-void
.end method

.method public abstract read(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;JJ)V
.end method

.method public readAsync(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;)Lcom/jme3/opencl/Event;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/jme3/opencl/Buffer;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jme3/opencl/Buffer;->readAsync(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;J)Lcom/jme3/opencl/Event;

    move-result-object p1

    return-object p1
.end method

.method public readAsync(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;J)Lcom/jme3/opencl/Event;
    .locals 7

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/jme3/opencl/Buffer;->readAsync(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;JJ)Lcom/jme3/opencl/Event;

    move-result-object p1

    return-object p1
.end method

.method public abstract readAsync(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;JJ)Lcom/jme3/opencl/Event;
.end method

.method public bridge synthetic register()Lcom/jme3/opencl/AbstractOpenCLObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/opencl/Buffer;->register()Lcom/jme3/opencl/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public register()Lcom/jme3/opencl/Buffer;
    .locals 0

    .line 3
    invoke-super {p0}, Lcom/jme3/opencl/AbstractOpenCLObject;->register()Lcom/jme3/opencl/AbstractOpenCLObject;

    return-object p0
.end method

.method public bridge synthetic register()Lcom/jme3/opencl/OpenCLObject;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/jme3/opencl/Buffer;->register()Lcom/jme3/opencl/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public abstract releaseBufferForSharingAsync(Lcom/jme3/opencl/CommandQueue;)Lcom/jme3/opencl/Event;
.end method

.method public releaseBufferForSharingNoEvent(Lcom/jme3/opencl/CommandQueue;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/opencl/Buffer;->releaseBufferForSharingAsync(Lcom/jme3/opencl/CommandQueue;)Lcom/jme3/opencl/Event;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/opencl/AbstractOpenCLObject;->release()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffer ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/opencl/Buffer;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "B)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract unmap(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;)V
.end method

.method public write(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/jme3/opencl/Buffer;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jme3/opencl/Buffer;->write(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method public write(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;J)V
    .locals 7

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/jme3/opencl/Buffer;->write(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;JJ)V

    return-void
.end method

.method public abstract write(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;JJ)V
.end method

.method public writeAsync(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;)Lcom/jme3/opencl/Event;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/jme3/opencl/Buffer;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jme3/opencl/Buffer;->writeAsync(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;J)Lcom/jme3/opencl/Event;

    move-result-object p1

    return-object p1
.end method

.method public writeAsync(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;J)Lcom/jme3/opencl/Event;
    .locals 7

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/jme3/opencl/Buffer;->writeAsync(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;JJ)Lcom/jme3/opencl/Event;

    move-result-object p1

    return-object p1
.end method

.method public abstract writeAsync(Lcom/jme3/opencl/CommandQueue;Ljava/nio/ByteBuffer;JJ)Lcom/jme3/opencl/Event;
.end method
