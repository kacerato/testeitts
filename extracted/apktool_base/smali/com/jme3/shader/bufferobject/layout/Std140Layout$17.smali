.class Lcom/jme3/shader/bufferobject/layout/Std140Layout$17;
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
        "Lcom/jme3/math/Matrix3f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jme3/shader/bufferobject/layout/Std140Layout;

.field final tmp:Lcom/jme3/math/Vector3f;


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

    iput-object p1, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$17;->this$0:Lcom/jme3/shader/bufferobject/layout/Std140Layout;

    invoke-direct {p0, p2}, Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;-><init>(Ljava/lang/Class;)V

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object p1, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$17;->tmp:Lcom/jme3/math/Vector3f;

    return-void
.end method


# virtual methods
.method public basicAlignment(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Lcom/jme3/math/Matrix3f;)I
    .locals 0

    .line 1
    const/16 p1, 0x10

    return p1
.end method

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
    check-cast p2, Lcom/jme3/math/Matrix3f;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$17;->basicAlignment(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Lcom/jme3/math/Matrix3f;)I

    move-result p1

    return p1
.end method

.method public length(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Lcom/jme3/math/Matrix3f;)I
    .locals 0

    .line 1
    const/16 p1, 0x30

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

    .line 2
    check-cast p2, Lcom/jme3/math/Matrix3f;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$17;->length(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Lcom/jme3/math/Matrix3f;)I

    move-result p1

    return p1
.end method

.method public write(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Ljava/nio/ByteBuffer;Lcom/jme3/math/Matrix3f;)V
    .locals 2

    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$17;->tmp:Lcom/jme3/math/Vector3f;

    invoke-virtual {p3, p1, v0}, Lcom/jme3/math/Matrix3f;->getColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 3
    iget-object p1, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$17;->tmp:Lcom/jme3/math/Vector3f;

    iget p1, p1, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 4
    iget-object p1, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$17;->tmp:Lcom/jme3/math/Vector3f;

    iget p1, p1, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 5
    iget-object p1, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$17;->tmp:Lcom/jme3/math/Vector3f;

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    .line 7
    iget-object v1, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$17;->tmp:Lcom/jme3/math/Vector3f;

    invoke-virtual {p3, v0, v1}, Lcom/jme3/math/Matrix3f;->getColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 8
    iget-object v0, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$17;->tmp:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 9
    iget-object v0, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$17;->tmp:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 10
    iget-object v0, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$17;->tmp:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    const/4 v0, 0x2

    .line 12
    iget-object v1, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$17;->tmp:Lcom/jme3/math/Vector3f;

    invoke-virtual {p3, v0, v1}, Lcom/jme3/math/Matrix3f;->getColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 13
    iget-object p3, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$17;->tmp:Lcom/jme3/math/Vector3f;

    iget p3, p3, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 14
    iget-object p3, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$17;->tmp:Lcom/jme3/math/Vector3f;

    iget p3, p3, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 15
    iget-object p3, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$17;->tmp:Lcom/jme3/math/Vector3f;

    iget p3, p3, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    return-void
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
    check-cast p3, Lcom/jme3/math/Matrix3f;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$17;->write(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Ljava/nio/ByteBuffer;Lcom/jme3/math/Matrix3f;)V

    return-void
.end method
