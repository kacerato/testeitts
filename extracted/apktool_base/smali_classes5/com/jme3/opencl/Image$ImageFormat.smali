.class public Lcom/jme3/opencl/Image$ImageFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/opencl/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageFormat"
.end annotation


# instance fields
.field public channelOrder:Lcom/jme3/opencl/Image$ImageChannelOrder;

.field public channelType:Lcom/jme3/opencl/Image$ImageChannelType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/opencl/Image$ImageChannelOrder;Lcom/jme3/opencl/Image$ImageChannelType;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jme3/opencl/Image$ImageFormat;->channelOrder:Lcom/jme3/opencl/Image$ImageChannelOrder;

    .line 4
    iput-object p2, p0, Lcom/jme3/opencl/Image$ImageFormat;->channelType:Lcom/jme3/opencl/Image$ImageChannelType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/jme3/opencl/Image$ImageFormat;

    iget-object v1, p0, Lcom/jme3/opencl/Image$ImageFormat;->channelOrder:Lcom/jme3/opencl/Image$ImageChannelOrder;

    iget-object v2, p1, Lcom/jme3/opencl/Image$ImageFormat;->channelOrder:Lcom/jme3/opencl/Image$ImageChannelOrder;

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lcom/jme3/opencl/Image$ImageFormat;->channelType:Lcom/jme3/opencl/Image$ImageChannelType;

    iget-object p1, p1, Lcom/jme3/opencl/Image$ImageFormat;->channelType:Lcom/jme3/opencl/Image$ImageChannelType;

    if-eq v1, p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/jme3/opencl/Image$ImageFormat;->channelOrder:Lcom/jme3/opencl/Image$ImageChannelOrder;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x131

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x3d

    iget-object v0, p0, Lcom/jme3/opencl/Image$ImageFormat;->channelType:Lcom/jme3/opencl/Image$ImageChannelType;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageFormat{channelOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/opencl/Image$ImageFormat;->channelOrder:Lcom/jme3/opencl/Image$ImageChannelOrder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", channelType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/opencl/Image$ImageFormat;->channelType:Lcom/jme3/opencl/Image$ImageChannelType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
