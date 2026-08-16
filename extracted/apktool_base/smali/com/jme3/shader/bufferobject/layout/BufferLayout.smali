.class public abstract Lcom/jme3/shader/bufferobject/layout/BufferLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;
    }
.end annotation


# instance fields
.field protected serializers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->serializers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public align(II)I
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/jme3/math/FastMath;->alignToPowerOfTwo(II)I

    move-result p1

    :goto_0
    return p1
.end method

.method public estimateSize(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->getSerializer(Ljava/lang/Object;)Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;->length(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getBasicAlignment(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->getSerializer(Ljava/lang/Object;)Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;->basicAlignment(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public getSerializer(Ljava/lang/Object;)Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->serializers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->serializers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;

    invoke-virtual {v1, p1}, Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;->canSerialize(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Serializer not found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->serializers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->getSerializer(Ljava/lang/Object;)Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;->write(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Ljava/nio/ByteBuffer;Ljava/lang/Object;)V

    return-void
.end method
