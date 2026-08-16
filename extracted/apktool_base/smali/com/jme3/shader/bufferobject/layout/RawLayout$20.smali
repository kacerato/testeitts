.class Lcom/jme3/shader/bufferobject/layout/RawLayout$20;
.super Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jme3/shader/bufferobject/layout/RawLayout;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer<",
        "[",
        "Lcom/jme3/math/Matrix3f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jme3/shader/bufferobject/layout/RawLayout;

.field final tmp:Lcom/jme3/math/Vector3f;


# direct methods
.method public constructor <init>(Lcom/jme3/shader/bufferobject/layout/RawLayout;Ljava/lang/Class;)V
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

    iput-object p1, p0, Lcom/jme3/shader/bufferobject/layout/RawLayout$20;->this$0:Lcom/jme3/shader/bufferobject/layout/RawLayout;

    invoke-direct {p0, p2}, Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;-><init>(Ljava/lang/Class;)V

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object p1, p0, Lcom/jme3/shader/bufferobject/layout/RawLayout$20;->tmp:Lcom/jme3/math/Vector3f;

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
    check-cast p2, [Lcom/jme3/math/Matrix3f;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/shader/bufferobject/layout/RawLayout$20;->basicAlignment(Lcom/jme3/shader/bufferobject/layout/BufferLayout;[Lcom/jme3/math/Matrix3f;)I

    move-result p1

    return p1
.end method

.method public basicAlignment(Lcom/jme3/shader/bufferobject/layout/BufferLayout;[Lcom/jme3/math/Matrix3f;)I
    .locals 0

    .line 1
    const/4 p1, 0x1

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
    check-cast p2, [Lcom/jme3/math/Matrix3f;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/shader/bufferobject/layout/RawLayout$20;->length(Lcom/jme3/shader/bufferobject/layout/BufferLayout;[Lcom/jme3/math/Matrix3f;)I

    move-result p1

    return p1
.end method

.method public length(Lcom/jme3/shader/bufferobject/layout/BufferLayout;[Lcom/jme3/math/Matrix3f;)I
    .locals 0

    .line 2
    array-length p1, p2

    mul-int/lit8 p1, p1, 0x24

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
    check-cast p3, [Lcom/jme3/math/Matrix3f;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jme3/shader/bufferobject/layout/RawLayout$20;->write(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Ljava/nio/ByteBuffer;[Lcom/jme3/math/Matrix3f;)V

    return-void
.end method

.method public write(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Ljava/nio/ByteBuffer;[Lcom/jme3/math/Matrix3f;)V
    .locals 5

    .line 2
    array-length p1, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p3, v1

    .line 3
    iget-object v3, p0, Lcom/jme3/shader/bufferobject/layout/RawLayout$20;->tmp:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v0, v3}, Lcom/jme3/math/Matrix3f;->getColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 4
    iget-object v3, p0, Lcom/jme3/shader/bufferobject/layout/RawLayout$20;->tmp:Lcom/jme3/math/Vector3f;

    iget v3, v3, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 5
    iget-object v3, p0, Lcom/jme3/shader/bufferobject/layout/RawLayout$20;->tmp:Lcom/jme3/math/Vector3f;

    iget v3, v3, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 6
    iget-object v3, p0, Lcom/jme3/shader/bufferobject/layout/RawLayout$20;->tmp:Lcom/jme3/math/Vector3f;

    iget v3, v3, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 7
    iget-object v3, p0, Lcom/jme3/shader/bufferobject/layout/RawLayout$20;->tmp:Lcom/jme3/math/Vector3f;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/jme3/math/Matrix3f;->getColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 8
    iget-object v3, p0, Lcom/jme3/shader/bufferobject/layout/RawLayout$20;->tmp:Lcom/jme3/math/Vector3f;

    iget v3, v3, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 9
    iget-object v3, p0, Lcom/jme3/shader/bufferobject/layout/RawLayout$20;->tmp:Lcom/jme3/math/Vector3f;

    iget v3, v3, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 10
    iget-object v3, p0, Lcom/jme3/shader/bufferobject/layout/RawLayout$20;->tmp:Lcom/jme3/math/Vector3f;

    iget v3, v3, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    const/4 v3, 0x2

    .line 11
    iget-object v4, p0, Lcom/jme3/shader/bufferobject/layout/RawLayout$20;->tmp:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3, v4}, Lcom/jme3/math/Matrix3f;->getColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 12
    iget-object v2, p0, Lcom/jme3/shader/bufferobject/layout/RawLayout$20;->tmp:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 13
    iget-object v2, p0, Lcom/jme3/shader/bufferobject/layout/RawLayout$20;->tmp:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 14
    iget-object v2, p0, Lcom/jme3/shader/bufferobject/layout/RawLayout$20;->tmp:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
