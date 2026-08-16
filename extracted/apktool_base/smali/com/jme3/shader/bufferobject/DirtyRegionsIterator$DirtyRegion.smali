.class Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;
.super Lcom/jme3/shader/bufferobject/BufferRegion;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirtyRegion"
.end annotation


# instance fields
.field regions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/shader/bufferobject/BufferRegion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/shader/bufferobject/BufferRegion;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;->regions:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDirty()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;->regions:Ljava/util/List;

    new-instance v1, Lcom/jme3/shader/bufferobject/a;

    invoke-direct {v1}, Lcom/jme3/shader/bufferobject/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-super {p0}, Lcom/jme3/shader/bufferobject/BufferRegion;->clearDirty()V

    return-void
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 3

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->bo:Lcom/jme3/shader/bufferobject/BufferObject;

    invoke-virtual {v0}, Lcom/jme3/shader/bufferobject/BufferObject;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->start:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->end:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
