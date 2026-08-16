.class Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;
.super Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jme3/shader/bufferobject/layout/Std140Layout;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer<",
        "[",
        "Lcom/jme3/math/Matrix4f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jme3/shader/bufferobject/layout/Std140Layout;

.field final tmpF:[F


# direct methods
.method public constructor <init>(Lcom/jme3/shader/bufferobject/layout/Std140Layout;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;->this$0:Lcom/jme3/shader/bufferobject/layout/Std140Layout;

    invoke-direct {p0, p2}, Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x4

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;->tmpF:[F

    return-void
.end method


# virtual methods
.method public bridge synthetic basicAlignment(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2
    check-cast p2, [Lcom/jme3/math/Matrix4f;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;->basicAlignment(Lcom/jme3/shader/bufferobject/layout/BufferLayout;[Lcom/jme3/math/Matrix4f;)I

    move-result p1

    return p1
.end method

.method public basicAlignment(Lcom/jme3/shader/bufferobject/layout/BufferLayout;[Lcom/jme3/math/Matrix4f;)I
    .locals 0

    .line 1
    const/16 p1, 0x10

    return p1
.end method

.method public bridge synthetic length(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    check-cast p2, [Lcom/jme3/math/Matrix4f;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;->length(Lcom/jme3/shader/bufferobject/layout/BufferLayout;[Lcom/jme3/math/Matrix4f;)I

    move-result p1

    return p1
.end method

.method public length(Lcom/jme3/shader/bufferobject/layout/BufferLayout;[Lcom/jme3/math/Matrix4f;)I
    .locals 0

    .line 2
    array-length p1, p2

    mul-int/lit8 p1, p1, 0x40

    return p1
.end method

.method public bridge synthetic write(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Ljava/nio/ByteBuffer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1
    check-cast p3, [Lcom/jme3/math/Matrix4f;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;->write(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Ljava/nio/ByteBuffer;[Lcom/jme3/math/Matrix4f;)V

    return-void
.end method

.method public write(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Ljava/nio/ByteBuffer;[Lcom/jme3/math/Matrix4f;)V
    .locals 7

    .line 2
    array-length p1, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p3, v1

    .line 3
    iget-object v3, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;->tmpF:[F

    invoke-virtual {v2, v0, v3}, Lcom/jme3/math/Matrix4f;->getColumn(I[F)[F

    .line 4
    iget-object v3, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;->tmpF:[F

    aget v3, v3, v0

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 5
    iget-object v3, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;->tmpF:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 6
    iget-object v3, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;->tmpF:[F

    const/4 v5, 0x2

    aget v3, v3, v5

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 7
    iget-object v3, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;->tmpF:[F

    const/4 v6, 0x3

    aget v3, v3, v6

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 8
    iget-object v3, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;->tmpF:[F

    invoke-virtual {v2, v4, v3}, Lcom/jme3/math/Matrix4f;->getColumn(I[F)[F

    .line 9
    iget-object v3, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;->tmpF:[F

    aget v3, v3, v0

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 10
    iget-object v3, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;->tmpF:[F

    aget v3, v3, v4

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 11
    iget-object v3, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;->tmpF:[F

    aget v3, v3, v5

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 12
    iget-object v3, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;->tmpF:[F

    aget v3, v3, v6

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 13
    iget-object v3, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;->tmpF:[F

    invoke-virtual {v2, v5, v3}, Lcom/jme3/math/Matrix4f;->getColumn(I[F)[F

    .line 14
    iget-object v3, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;->tmpF:[F

    aget v3, v3, v0

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 15
    iget-object v3, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;->tmpF:[F

    aget v3, v3, v4

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 16
    iget-object v3, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;->tmpF:[F

    aget v3, v3, v5

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 17
    iget-object v3, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;->tmpF:[F

    aget v3, v3, v6

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 18
    iget-object v3, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;->tmpF:[F

    invoke-virtual {v2, v6, v3}, Lcom/jme3/math/Matrix4f;->getColumn(I[F)[F

    .line 19
    iget-object v2, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;->tmpF:[F

    aget v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 20
    iget-object v2, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;->tmpF:[F

    aget v2, v2, v4

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 21
    iget-object v2, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;->tmpF:[F

    aget v2, v2, v5

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 22
    iget-object v2, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;->tmpF:[F

    aget v2, v2, v6

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method
