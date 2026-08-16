.class public Lcom/ardor3d/image/TextureCubeMap;
.super Lcom/ardor3d/image/Texture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/image/TextureCubeMap$Face;
    }
.end annotation


# instance fields
.field private _wrapR:Lcom/ardor3d/image/Texture$WrapMode;

.field private _wrapS:Lcom/ardor3d/image/Texture$WrapMode;

.field private _wrapT:Lcom/ardor3d/image/Texture$WrapMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/image/Texture;-><init>()V

    sget-object v0, Lcom/ardor3d/image/Texture$WrapMode;->Repeat:Lcom/ardor3d/image/Texture$WrapMode;

    iput-object v0, p0, Lcom/ardor3d/image/TextureCubeMap;->_wrapS:Lcom/ardor3d/image/Texture$WrapMode;

    iput-object v0, p0, Lcom/ardor3d/image/TextureCubeMap;->_wrapT:Lcom/ardor3d/image/Texture$WrapMode;

    iput-object v0, p0, Lcom/ardor3d/image/TextureCubeMap;->_wrapR:Lcom/ardor3d/image/Texture$WrapMode;

    return-void
.end method


# virtual methods
.method public createSimpleClone()Lcom/ardor3d/image/Texture;
    .locals 1

    .line 1
    new-instance v0, Lcom/ardor3d/image/TextureCubeMap;

    invoke-direct {v0}, Lcom/ardor3d/image/TextureCubeMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ardor3d/image/TextureCubeMap;->createSimpleClone(Lcom/ardor3d/image/Texture;)Lcom/ardor3d/image/Texture;

    move-result-object v0

    return-object v0
.end method

.method public createSimpleClone(Lcom/ardor3d/image/Texture;)Lcom/ardor3d/image/Texture;
    .locals 2

    .line 2
    sget-object v0, Lcom/ardor3d/image/Texture$WrapAxis;->S:Lcom/ardor3d/image/Texture$WrapAxis;

    iget-object v1, p0, Lcom/ardor3d/image/TextureCubeMap;->_wrapS:Lcom/ardor3d/image/Texture$WrapMode;

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/image/Texture;->setWrap(Lcom/ardor3d/image/Texture$WrapAxis;Lcom/ardor3d/image/Texture$WrapMode;)V

    .line 3
    sget-object v0, Lcom/ardor3d/image/Texture$WrapAxis;->T:Lcom/ardor3d/image/Texture$WrapAxis;

    iget-object v1, p0, Lcom/ardor3d/image/TextureCubeMap;->_wrapT:Lcom/ardor3d/image/Texture$WrapMode;

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/image/Texture;->setWrap(Lcom/ardor3d/image/Texture$WrapAxis;Lcom/ardor3d/image/Texture$WrapMode;)V

    .line 4
    sget-object v0, Lcom/ardor3d/image/Texture$WrapAxis;->R:Lcom/ardor3d/image/Texture$WrapAxis;

    iget-object v1, p0, Lcom/ardor3d/image/TextureCubeMap;->_wrapR:Lcom/ardor3d/image/Texture$WrapMode;

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/image/Texture;->setWrap(Lcom/ardor3d/image/Texture$WrapAxis;Lcom/ardor3d/image/Texture$WrapMode;)V

    .line 5
    invoke-super {p0, p1}, Lcom/ardor3d/image/Texture;->createSimpleClone(Lcom/ardor3d/image/Texture;)Lcom/ardor3d/image/Texture;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/ardor3d/image/TextureCubeMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/ardor3d/image/TextureCubeMap;

    sget-object v2, Lcom/ardor3d/image/Texture$WrapAxis;->S:Lcom/ardor3d/image/Texture$WrapAxis;

    invoke-virtual {p0, v2}, Lcom/ardor3d/image/TextureCubeMap;->getWrap(Lcom/ardor3d/image/Texture$WrapAxis;)Lcom/ardor3d/image/Texture$WrapMode;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/ardor3d/image/TextureCubeMap;->getWrap(Lcom/ardor3d/image/Texture$WrapAxis;)Lcom/ardor3d/image/Texture$WrapMode;

    move-result-object v2

    if-eq v3, v2, :cond_1

    return v1

    :cond_1
    sget-object v2, Lcom/ardor3d/image/Texture$WrapAxis;->T:Lcom/ardor3d/image/Texture$WrapAxis;

    invoke-virtual {p0, v2}, Lcom/ardor3d/image/TextureCubeMap;->getWrap(Lcom/ardor3d/image/Texture$WrapAxis;)Lcom/ardor3d/image/Texture$WrapMode;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/ardor3d/image/TextureCubeMap;->getWrap(Lcom/ardor3d/image/Texture$WrapAxis;)Lcom/ardor3d/image/Texture$WrapMode;

    move-result-object v2

    if-eq v3, v2, :cond_2

    return v1

    :cond_2
    sget-object v2, Lcom/ardor3d/image/Texture$WrapAxis;->R:Lcom/ardor3d/image/Texture$WrapAxis;

    invoke-virtual {p0, v2}, Lcom/ardor3d/image/TextureCubeMap;->getWrap(Lcom/ardor3d/image/Texture$WrapAxis;)Lcom/ardor3d/image/Texture$WrapMode;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/ardor3d/image/TextureCubeMap;->getWrap(Lcom/ardor3d/image/Texture$WrapAxis;)Lcom/ardor3d/image/Texture$WrapMode;

    move-result-object v0

    if-eq v3, v0, :cond_3

    return v1

    :cond_3
    invoke-super {p0, p1}, Lcom/ardor3d/image/Texture;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getType()Lcom/ardor3d/image/Texture$Type;
    .locals 1

    sget-object v0, Lcom/ardor3d/image/Texture$Type;->CubeMap:Lcom/ardor3d/image/Texture$Type;

    return-object v0
.end method

.method public getWrap(Lcom/ardor3d/image/Texture$WrapAxis;)Lcom/ardor3d/image/Texture$WrapMode;
    .locals 3

    sget-object v0, Lcom/ardor3d/image/TextureCubeMap$1;->$SwitchMap$com$ardor3d$image$Texture$WrapAxis:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/ardor3d/image/TextureCubeMap;->_wrapR:Lcom/ardor3d/image/Texture$WrapMode;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid WrapAxis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object p1, p0, Lcom/ardor3d/image/TextureCubeMap;->_wrapT:Lcom/ardor3d/image/Texture$WrapMode;

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/ardor3d/image/TextureCubeMap;->_wrapS:Lcom/ardor3d/image/Texture$WrapMode;

    return-object p1
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/image/Texture;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    sget-object v0, Lcom/ardor3d/image/Texture$WrapMode;->EdgeClamp:Lcom/ardor3d/image/Texture$WrapMode;

    const-string v1, "wrapS"

    const-class v2, Lcom/ardor3d/image/Texture$WrapMode;

    invoke-interface {p1, v1, v2, v0}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/image/Texture$WrapMode;

    iput-object v1, p0, Lcom/ardor3d/image/TextureCubeMap;->_wrapS:Lcom/ardor3d/image/Texture$WrapMode;

    const-string v1, "wrapT"

    invoke-interface {p1, v1, v2, v0}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/image/Texture$WrapMode;

    iput-object v1, p0, Lcom/ardor3d/image/TextureCubeMap;->_wrapT:Lcom/ardor3d/image/Texture$WrapMode;

    const-string v1, "wrapR"

    invoke-interface {p1, v1, v2, v0}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/image/Texture$WrapMode;

    iput-object p1, p0, Lcom/ardor3d/image/TextureCubeMap;->_wrapR:Lcom/ardor3d/image/Texture$WrapMode;

    return-void
.end method

.method public setWrap(Lcom/ardor3d/image/Texture$WrapAxis;Lcom/ardor3d/image/Texture$WrapMode;)V
    .locals 1

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    .line 1
    sget-object v0, Lcom/ardor3d/image/TextureCubeMap$1;->$SwitchMap$com$ardor3d$image$Texture$WrapAxis:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p2, p0, Lcom/ardor3d/image/TextureCubeMap;->_wrapR:Lcom/ardor3d/image/Texture$WrapMode;

    goto :goto_0

    .line 3
    :cond_1
    iput-object p2, p0, Lcom/ardor3d/image/TextureCubeMap;->_wrapT:Lcom/ardor3d/image/Texture$WrapMode;

    goto :goto_0

    .line 4
    :cond_2
    iput-object p2, p0, Lcom/ardor3d/image/TextureCubeMap;->_wrapS:Lcom/ardor3d/image/Texture$WrapMode;

    :goto_0
    return-void

    .line 5
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "axis can not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mode can not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWrap(Lcom/ardor3d/image/Texture$WrapMode;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 7
    iput-object p1, p0, Lcom/ardor3d/image/TextureCubeMap;->_wrapS:Lcom/ardor3d/image/Texture$WrapMode;

    .line 8
    iput-object p1, p0, Lcom/ardor3d/image/TextureCubeMap;->_wrapT:Lcom/ardor3d/image/Texture$WrapMode;

    .line 9
    iput-object p1, p0, Lcom/ardor3d/image/TextureCubeMap;->_wrapR:Lcom/ardor3d/image/Texture$WrapMode;

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mode can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/image/Texture;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget-object v0, p0, Lcom/ardor3d/image/TextureCubeMap;->_wrapS:Lcom/ardor3d/image/Texture$WrapMode;

    sget-object v1, Lcom/ardor3d/image/Texture$WrapMode;->EdgeClamp:Lcom/ardor3d/image/Texture$WrapMode;

    const-string v2, "wrapS"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/image/TextureCubeMap;->_wrapT:Lcom/ardor3d/image/Texture$WrapMode;

    const-string v2, "wrapT"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/image/TextureCubeMap;->_wrapR:Lcom/ardor3d/image/Texture$WrapMode;

    const-string v2, "wrapR"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    return-void
.end method
