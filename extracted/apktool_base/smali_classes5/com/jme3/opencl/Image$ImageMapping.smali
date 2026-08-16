.class public Lcom/jme3/opencl/Image$ImageMapping;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/opencl/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageMapping"
.end annotation


# instance fields
.field public final buffer:Ljava/nio/ByteBuffer;

.field public final event:Lcom/jme3/opencl/Event;

.field public final rowPitch:J

.field public final slicePitch:J


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;JJ)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/jme3/opencl/Image$ImageMapping;->buffer:Ljava/nio/ByteBuffer;

    .line 8
    iput-wide p2, p0, Lcom/jme3/opencl/Image$ImageMapping;->rowPitch:J

    .line 9
    iput-wide p4, p0, Lcom/jme3/opencl/Image$ImageMapping;->slicePitch:J

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/jme3/opencl/Image$ImageMapping;->event:Lcom/jme3/opencl/Event;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;JJLcom/jme3/opencl/Event;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/jme3/opencl/Image$ImageMapping;->buffer:Ljava/nio/ByteBuffer;

    .line 3
    iput-wide p2, p0, Lcom/jme3/opencl/Image$ImageMapping;->rowPitch:J

    .line 4
    iput-wide p4, p0, Lcom/jme3/opencl/Image$ImageMapping;->slicePitch:J

    .line 5
    iput-object p6, p0, Lcom/jme3/opencl/Image$ImageMapping;->event:Lcom/jme3/opencl/Event;

    return-void
.end method
