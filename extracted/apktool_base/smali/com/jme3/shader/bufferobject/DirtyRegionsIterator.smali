.class public Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/jme3/shader/bufferobject/BufferRegion;",
        ">;"
    }
.end annotation


# instance fields
.field private bufferObject:Lcom/jme3/shader/bufferobject/BufferObject;

.field private final dirtyRegion:Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;

.field private pos:I


# direct methods
.method public constructor <init>(Lcom/jme3/shader/bufferobject/BufferObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;-><init>(Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$1;)V

    iput-object v0, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->dirtyRegion:Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->pos:I

    iput-object p1, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->bufferObject:Lcom/jme3/shader/bufferobject/BufferObject;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->bufferObject:Lcom/jme3/shader/bufferobject/BufferObject;

    iget-object v0, v0, Lcom/jme3/shader/bufferobject/BufferObject;->regions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->pos:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->bufferObject:Lcom/jme3/shader/bufferobject/BufferObject;

    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->pos:I

    iget-object v3, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->bufferObject:Lcom/jme3/shader/bufferobject/BufferObject;

    iget-object v3, v3, Lcom/jme3/shader/bufferobject/BufferObject;->regions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public next()Lcom/jme3/shader/bufferobject/BufferRegion;
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->dirtyRegion:Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;

    iget-object v1, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->bufferObject:Lcom/jme3/shader/bufferobject/BufferObject;

    iput-object v1, v0, Lcom/jme3/shader/bufferobject/BufferRegion;->bo:Lcom/jme3/shader/bufferobject/BufferObject;

    .line 3
    iget-object v0, v0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;->regions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->bufferObject:Lcom/jme3/shader/bufferobject/BufferObject;

    iget-object v0, v0, Lcom/jme3/shader/bufferobject/BufferObject;->regions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->bufferObject:Lcom/jme3/shader/bufferobject/BufferObject;

    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v2

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->dirtyRegion:Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;

    iput-boolean v3, v0, Lcom/jme3/shader/bufferobject/BufferRegion;->fullBufferRegion:Z

    .line 7
    iget-object v2, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->bufferObject:Lcom/jme3/shader/bufferobject/BufferObject;

    invoke-virtual {v2}, Lcom/jme3/shader/bufferobject/BufferObject;->getData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/jme3/shader/bufferobject/BufferRegion;->end:I

    .line 8
    iget-object v0, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->dirtyRegion:Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;

    iput v1, v0, Lcom/jme3/shader/bufferobject/BufferRegion;->start:I

    .line 9
    iput v3, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->pos:I

    return-object v0

    .line 10
    :cond_1
    :goto_0
    iget v0, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->pos:I

    iget-object v4, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->bufferObject:Lcom/jme3/shader/bufferobject/BufferObject;

    iget-object v4, v4, Lcom/jme3/shader/bufferobject/BufferObject;->regions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 11
    iget-object v0, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->bufferObject:Lcom/jme3/shader/bufferobject/BufferObject;

    iget-object v0, v0, Lcom/jme3/shader/bufferobject/BufferObject;->regions:Ljava/util/ArrayList;

    iget v4, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->pos:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/bufferobject/BufferRegion;

    .line 12
    invoke-virtual {v0}, Lcom/jme3/shader/bufferobject/BufferRegion;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 13
    iget-object v4, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->dirtyRegion:Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;

    iget-object v4, v4, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;->regions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->dirtyRegion:Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;

    iget v5, v0, Lcom/jme3/shader/bufferobject/BufferRegion;->start:I

    iput v5, v4, Lcom/jme3/shader/bufferobject/BufferRegion;->start:I

    .line 14
    :cond_2
    iget-object v4, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->dirtyRegion:Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;

    iget v5, v0, Lcom/jme3/shader/bufferobject/BufferRegion;->end:I

    iput v5, v4, Lcom/jme3/shader/bufferobject/BufferRegion;->end:I

    .line 15
    iget-object v4, v4, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;->regions:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->dirtyRegion:Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;

    iget-object v0, v0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;->regions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->dirtyRegion:Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;

    iget-object v0, v0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;->regions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    return-object v2

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->dirtyRegion:Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;

    iget-object v2, v0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;->regions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v4, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->bufferObject:Lcom/jme3/shader/bufferobject/BufferObject;

    iget-object v4, v4, Lcom/jme3/shader/bufferobject/BufferObject;->regions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_6

    move v1, v3

    :cond_6
    iput-boolean v1, v0, Lcom/jme3/shader/bufferobject/BufferRegion;->fullBufferRegion:Z

    .line 19
    iget-object v0, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->dirtyRegion:Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;

    invoke-virtual {v0}, Lcom/jme3/shader/bufferobject/BufferRegion;->markDirty()V

    .line 20
    iget-object v0, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->dirtyRegion:Lcom/jme3/shader/bufferobject/DirtyRegionsIterator$DirtyRegion;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->next()Lcom/jme3/shader/bufferobject/BufferRegion;

    move-result-object v0

    return-object v0
.end method

.method public rewind()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->pos:I

    return-void
.end method
