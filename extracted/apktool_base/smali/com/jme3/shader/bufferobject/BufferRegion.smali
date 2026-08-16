.class public Lcom/jme3/shader/bufferobject/BufferRegion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected bo:Lcom/jme3/shader/bufferobject/BufferObject;

.field protected dirty:Z

.field protected end:I

.field protected fullBufferRegion:Z

.field protected slice:Ljava/nio/ByteBuffer;

.field protected source:Ljava/nio/ByteBuffer;

.field protected start:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->start:I

    .line 8
    iput v0, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->end:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->dirty:Z

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->fullBufferRegion:Z

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->dirty:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->fullBufferRegion:Z

    .line 4
    iput p1, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->start:I

    .line 5
    iput p2, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->end:I

    return-void
.end method


# virtual methods
.method public clearDirty()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->dirty:Z

    return-void
.end method

.method public clone()Lcom/jme3/shader/bufferobject/BufferRegion;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/bufferobject/BufferRegion;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/shader/bufferobject/BufferRegion;->clone()Lcom/jme3/shader/bufferobject/BufferRegion;

    move-result-object v0

    return-object v0
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

.method public getEnd()I
    .locals 1

    iget v0, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->end:I

    return v0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->start:I

    return v0
.end method

.method public isDirty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->dirty:Z

    return v0
.end method

.method public isFullBufferRegion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->fullBufferRegion:Z

    return v0
.end method

.method public length()I
    .locals 2

    iget v0, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->end:I

    iget v1, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->start:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public markDirty()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->dirty:Z

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "start"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->start:I

    const-string v0, "end"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->end:I

    const-string v0, "dirty"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->dirty:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Region [start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->end:I

    iget v2, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->start:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dirty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->dirty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    iget v0, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->start:I

    const-string v1, "start"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->end:I

    const-string v1, "end"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-boolean v0, p0, Lcom/jme3/shader/bufferobject/BufferRegion;->dirty:Z

    const-string v1, "dirty"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
