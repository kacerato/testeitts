.class public Lcom/ardor3d/light/PointLight;
.super Lcom/ardor3d/light/Light;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _location:Lcom/ardor3d/math/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/light/Light;-><init>()V

    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/light/PointLight;->_location:Lcom/ardor3d/math/Vector3;

    return-void
.end method


# virtual methods
.method public getLocation()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/light/PointLight;->_location:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getType()Lcom/ardor3d/light/Light$Type;
    .locals 1

    sget-object v0, Lcom/ardor3d/light/Light$Type;->Point:Lcom/ardor3d/light/Light$Type;

    return-object v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/light/Light;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    new-instance v0, Lcom/ardor3d/math/Vector3;

    sget-object v1, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v0, v1}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v1, "location"

    invoke-interface {p1, v1, v0}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/math/Vector3;

    iput-object p1, p0, Lcom/ardor3d/light/PointLight;->_location:Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public setLocation(DDD)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/ardor3d/light/PointLight;->_location:Lcom/ardor3d/math/Vector3;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public setLocation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ardor3d/light/PointLight;->_location:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/light/Light;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget-object v0, p0, Lcom/ardor3d/light/PointLight;->_location:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "location"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    return-void
.end method
