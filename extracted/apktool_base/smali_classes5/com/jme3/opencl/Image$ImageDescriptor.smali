.class public Lcom/jme3/opencl/Image$ImageDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/opencl/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageDescriptor"
.end annotation


# instance fields
.field public arraySize:J

.field public depth:J

.field public height:J

.field public hostPtr:Ljava/nio/ByteBuffer;

.field public rowPitch:J

.field public slicePitch:J

.field public type:Lcom/jme3/opencl/Image$ImageType;

.field public width:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/opencl/Image$ImageType;JJJJ)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/jme3/opencl/Image$ImageDescriptor;->type:Lcom/jme3/opencl/Image$ImageType;

    .line 13
    iput-wide p2, p0, Lcom/jme3/opencl/Image$ImageDescriptor;->width:J

    .line 14
    iput-wide p4, p0, Lcom/jme3/opencl/Image$ImageDescriptor;->height:J

    .line 15
    iput-wide p6, p0, Lcom/jme3/opencl/Image$ImageDescriptor;->depth:J

    .line 16
    iput-wide p8, p0, Lcom/jme3/opencl/Image$ImageDescriptor;->arraySize:J

    const-wide/16 p1, 0x0

    .line 17
    iput-wide p1, p0, Lcom/jme3/opencl/Image$ImageDescriptor;->rowPitch:J

    .line 18
    iput-wide p1, p0, Lcom/jme3/opencl/Image$ImageDescriptor;->slicePitch:J

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/jme3/opencl/Image$ImageDescriptor;->hostPtr:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/opencl/Image$ImageType;JJJJJJLjava/nio/ByteBuffer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jme3/opencl/Image$ImageDescriptor;->type:Lcom/jme3/opencl/Image$ImageType;

    .line 4
    iput-wide p2, p0, Lcom/jme3/opencl/Image$ImageDescriptor;->width:J

    .line 5
    iput-wide p4, p0, Lcom/jme3/opencl/Image$ImageDescriptor;->height:J

    .line 6
    iput-wide p6, p0, Lcom/jme3/opencl/Image$ImageDescriptor;->depth:J

    .line 7
    iput-wide p8, p0, Lcom/jme3/opencl/Image$ImageDescriptor;->arraySize:J

    .line 8
    iput-wide p10, p0, Lcom/jme3/opencl/Image$ImageDescriptor;->rowPitch:J

    .line 9
    iput-wide p12, p0, Lcom/jme3/opencl/Image$ImageDescriptor;->slicePitch:J

    .line 10
    iput-object p14, p0, Lcom/jme3/opencl/Image$ImageDescriptor;->hostPtr:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageDescriptor{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/opencl/Image$ImageDescriptor;->type:Lcom/jme3/opencl/Image$ImageType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/jme3/opencl/Image$ImageDescriptor;->width:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/jme3/opencl/Image$ImageDescriptor;->height:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", depth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/jme3/opencl/Image$ImageDescriptor;->depth:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", arraySize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/jme3/opencl/Image$ImageDescriptor;->arraySize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rowPitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/jme3/opencl/Image$ImageDescriptor;->rowPitch:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", slicePitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/jme3/opencl/Image$ImageDescriptor;->slicePitch:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
