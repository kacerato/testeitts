.class public Lcom/jme3/shader/bufferobject/BufferObject;
.super Lcom/jme3/util/NativeObject;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;,
        Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private accessHint:Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

.field private transient binding:I

.field protected data:Ljava/nio/ByteBuffer;

.field protected transient dirtyRegionsIterator:Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;

.field private name:Ljava/lang/String;

.field private natureHint:Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;

.field protected regions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/shader/bufferobject/BufferRegion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/util/NativeObject;-><init>()V

    .line 2
    sget-object v0, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;->Dynamic:Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    iput-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->accessHint:Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    .line 3
    sget-object v0, Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;->Draw:Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;

    iput-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->natureHint:Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->binding:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->data:Ljava/nio/ByteBuffer;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->regions:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/jme3/util/NativeObject;-><init>(I)V

    .line 8
    sget-object p1, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;->Dynamic:Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    iput-object p1, p0, Lcom/jme3/shader/bufferobject/BufferObject;->accessHint:Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    .line 9
    sget-object p1, Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;->Draw:Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;

    iput-object p1, p0, Lcom/jme3/shader/bufferobject/BufferObject;->natureHint:Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/jme3/shader/bufferobject/BufferObject;->binding:I

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/jme3/shader/bufferobject/BufferObject;->data:Ljava/nio/ByteBuffer;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jme3/shader/bufferobject/BufferObject;->regions:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/shader/bufferobject/BufferObject;
    .locals 4

    .line 3
    invoke-super {p0}, Lcom/jme3/util/NativeObject;->clone()Lcom/jme3/util/NativeObject;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/bufferobject/BufferObject;

    const/4 v1, -0x1

    .line 4
    iput v1, v0, Lcom/jme3/shader/bufferobject/BufferObject;->binding:I

    .line 5
    iget-object v1, p0, Lcom/jme3/shader/bufferobject/BufferObject;->data:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->clone(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/shader/bufferobject/BufferObject;->data:Ljava/nio/ByteBuffer;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/jme3/shader/bufferobject/BufferObject;->regions:Ljava/util/ArrayList;

    .line 7
    iget-object v1, p0, Lcom/jme3/shader/bufferobject/BufferObject;->regions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/shader/bufferobject/BufferRegion;

    .line 8
    iget-object v3, v0, Lcom/jme3/shader/bufferobject/BufferObject;->regions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/jme3/shader/bufferobject/BufferRegion;->clone()Lcom/jme3/shader/bufferobject/BufferRegion;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/jme3/shader/bufferobject/BufferObject;->dirtyRegionsIterator:Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;

    .line 10
    invoke-virtual {v0}, Lcom/jme3/shader/bufferobject/BufferObject;->setUpdateNeeded()V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/jme3/util/NativeObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/shader/bufferobject/BufferObject;->clone()Lcom/jme3/shader/bufferobject/BufferObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/jme3/shader/bufferobject/BufferObject;->clone()Lcom/jme3/shader/bufferobject/BufferObject;

    move-result-object v0

    return-object v0
.end method

.method public createDestructableClone()Lcom/jme3/util/NativeObject;
    .locals 2

    new-instance v0, Lcom/jme3/shader/bufferobject/BufferObject;

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/jme3/shader/bufferobject/BufferObject;-><init>(I)V

    return-object v0
.end method

.method public deleteNativeBuffers()V
    .locals 1

    invoke-super {p0}, Lcom/jme3/util/NativeObject;->deleteNativeBuffers()V

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->destroyDirectBuffer(Ljava/nio/Buffer;)V

    :cond_0
    return-void
.end method

.method public deleteObject(Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p1, Lcom/jme3/renderer/Renderer;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/renderer/Renderer;

    invoke-interface {p1, p0}, Lcom/jme3/renderer/Renderer;->deleteBuffer(Lcom/jme3/shader/bufferobject/BufferObject;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This bo can\'t be deleted from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccessHint()Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->accessHint:Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    return-object v0
.end method

.method public getBinding()I
    .locals 1

    iget v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->binding:I

    return v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 3

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->regions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->data:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->data:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->regions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/bufferobject/BufferRegion;

    invoke-virtual {v0}, Lcom/jme3/shader/bufferobject/BufferRegion;->getEnd()I

    move-result v0

    iget-object v1, p0, Lcom/jme3/shader/bufferobject/BufferObject;->data:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->data:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    if-gt v1, v0, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/jme3/shader/bufferobject/BufferObject;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/jme3/shader/bufferobject/BufferObject;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_2
    iget-object v1, p0, Lcom/jme3/shader/bufferobject/BufferObject;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/jme3/shader/bufferobject/BufferObject;->data:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->destroyDirectBuffer(Ljava/nio/Buffer;)V

    iput-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->data:Ljava/nio/ByteBuffer;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDirtyRegions()Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->dirtyRegionsIterator:Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;

    invoke-direct {v0, p0}, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;-><init>(Lcom/jme3/shader/bufferobject/BufferObject;)V

    iput-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->dirtyRegionsIterator:Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;

    :cond_0
    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->dirtyRegionsIterator:Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;

    invoke-virtual {v0}, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->rewind()V

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->dirtyRegionsIterator:Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNatureHint()Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->natureHint:Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;

    return-object v0
.end method

.method public getRegion(I)Lcom/jme3/shader/bufferobject/BufferRegion;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->regions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/shader/bufferobject/BufferRegion;

    iput-object p0, p1, Lcom/jme3/shader/bufferobject/BufferRegion;->bo:Lcom/jme3/shader/bufferobject/BufferObject;

    return-object p1
.end method

.method public getUniqueId()J
    .locals 4

    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide v2, 0x900000000L

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public initializeEmpty(I)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->destroyDirectBuffer(Ljava/nio/Buffer;)V

    :cond_0
    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/shader/bufferobject/BufferObject;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public markAllRegionsDirty()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->regions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/shader/bufferobject/BufferRegion;

    invoke-virtual {v1}, Lcom/jme3/shader/bufferobject/BufferRegion;->markDirty()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    invoke-static {}, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;->values()[Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    move-result-object v0

    const-string v1, "accessHint"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->accessHint:Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    invoke-static {}, Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;->values()[Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;

    move-result-object v0

    const-string v1, "natureHint"

    invoke-interface {p1, v1, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->natureHint:Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;

    const-string v0, "regions"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/jme3/shader/bufferobject/BufferObject;->regions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const-string v0, "data"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/shader/bufferobject/BufferObject;->data:Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/jme3/shader/bufferobject/BufferObject;->setUpdateNeeded(Z)V

    return-void
.end method

.method public resetObject()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/util/NativeObject;->id:I

    return-void
.end method

.method public setAccessHint(Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/bufferobject/BufferObject;->accessHint:Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    invoke-virtual {p0}, Lcom/jme3/shader/bufferobject/BufferObject;->setUpdateNeeded()V

    return-void
.end method

.method public setBinding(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/shader/bufferobject/BufferObject;->binding:I

    return-void
.end method

.method public setData(Ljava/nio/ByteBuffer;)V
    .locals 3

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/jme3/shader/bufferobject/BufferObject;->data:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->destroyDirectBuffer(Ljava/nio/Buffer;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jme3/shader/bufferobject/BufferObject;->data:Ljava/nio/ByteBuffer;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->data:Ljava/nio/ByteBuffer;

    if-ne p1, v0, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/shader/bufferobject/BufferObject;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->destroyDirectBuffer(Ljava/nio/Buffer;)V

    :cond_3
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/bufferobject/BufferObject;->name:Ljava/lang/String;

    return-void
.end method

.method public setNatureHint(Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/bufferobject/BufferObject;->natureHint:Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;

    invoke-virtual {p0}, Lcom/jme3/shader/bufferobject/BufferObject;->setUpdateNeeded()V

    return-void
.end method

.method public setRegions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/shader/bufferobject/BufferRegion;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->regions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->regions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/jme3/shader/bufferobject/BufferObject;->regions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->trimToSize()V

    invoke-virtual {p0}, Lcom/jme3/shader/bufferobject/BufferObject;->setUpdateNeeded()V

    return-void
.end method

.method public final setUpdateNeeded()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/BufferObject;->setUpdateNeeded(Z)V

    return-void
.end method

.method public setUpdateNeeded(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/jme3/shader/bufferobject/BufferObject;->markAllRegionsDirty()V

    :cond_0
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/jme3/util/NativeObject;->updateNeeded:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/bufferobject/BufferObject;->regions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/shader/bufferobject/BufferRegion;

    const-string v3, "    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsetRegions()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->regions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->regions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->accessHint:Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "accessHint"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->natureHint:Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "natureHint"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->regions:Ljava/util/ArrayList;

    const-string v1, "regions"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/BufferObject;->data:Ljava/nio/ByteBuffer;

    const-string v1, "data"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method
