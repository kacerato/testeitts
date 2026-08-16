.class public Lcom/jme3/animation/CompactQuaternionArray;
.super Lcom/jme3/animation/CompactArray;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/animation/CompactArray<",
        "Lcom/jme3/math/Quaternion;",
        ">;",
        "Lcom/jme3/export/Savable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/animation/CompactArray;-><init>()V

    return-void
.end method

.method public constructor <init>([F[I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/jme3/animation/CompactArray;-><init>([F[I)V

    return-void
.end method


# virtual methods
.method public deserialize(ILcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/jme3/animation/CompactQuaternionArray;->getTupleSize()I

    move-result v0

    mul-int/2addr p1, v0

    .line 3
    iget-object v0, p0, Lcom/jme3/animation/CompactArray;->array:[F

    aget v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    add-int/lit8 v3, p1, 0x2

    aget v3, v0, v3

    add-int/lit8 p1, p1, 0x3

    aget p1, v0, p1

    invoke-virtual {p2, v1, v2, v3, p1}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    return-object p2
.end method

.method public bridge synthetic deserialize(ILjava/lang/Object;)Ljava/lang/Object;
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
    check-cast p2, Lcom/jme3/math/Quaternion;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/animation/CompactQuaternionArray;->deserialize(ILcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public final getElementClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/jme3/math/Quaternion;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/jme3/math/Quaternion;

    return-object v0
.end method

.method public final getTupleSize()I
    .locals 1

    const/4 v0, 0x4

    return v0
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

    const-string v0, "array"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/animation/CompactArray;->array:[F

    const-string v0, "index"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/animation/CompactArray;->index:[I

    return-void
.end method

.method public serialize(ILcom/jme3/math/Quaternion;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/jme3/animation/CompactQuaternionArray;->getTupleSize()I

    move-result v0

    mul-int/2addr p1, v0

    .line 3
    iget-object v0, p0, Lcom/jme3/animation/CompactArray;->array:[F

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v1

    aput v1, v0, p1

    .line 4
    iget-object v0, p0, Lcom/jme3/animation/CompactArray;->array:[F

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v2

    aput v2, v0, v1

    .line 5
    iget-object v0, p0, Lcom/jme3/animation/CompactArray;->array:[F

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v2

    aput v2, v0, v1

    .line 6
    iget-object v0, p0, Lcom/jme3/animation/CompactArray;->array:[F

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->getW()F

    move-result p2

    aput p2, v0, p1

    return-void
.end method

.method public bridge synthetic serialize(ILjava/lang/Object;)V
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
    check-cast p2, Lcom/jme3/math/Quaternion;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/animation/CompactQuaternionArray;->serialize(ILcom/jme3/math/Quaternion;)V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->serialize()V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/animation/CompactArray;->array:[F

    const-string v1, "array"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    iget-object v0, p0, Lcom/jme3/animation/CompactArray;->index:[I

    const-string v1, "index"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([ILjava/lang/String;[I)V

    return-void
.end method
