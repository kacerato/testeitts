.class public Ljpct/ae/wrapper/JAnimation;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctAnimation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/Animation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public Initialize(I)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/Animation;

    invoke-direct {v0, p1}, Lcom/threed/jpct/Animation;-><init>(I)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JAnimation;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public KEYFRAMESONLY()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public LINEAR()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public USE_CLAMPING()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public USE_WRAPPING()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public addKeyFrame(Lcom/threed/jpct/Mesh;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JAnimation;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Animation;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Animation;->addKeyFrame(Lcom/threed/jpct/Mesh;)V

    return-void
.end method

.method public createSubSequence(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JAnimation;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Animation;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Animation;->createSubSequence(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getKeyFrames()[Lcom/threed/jpct/Mesh;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JAnimation;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Animation;

    invoke-virtual {v0}, Lcom/threed/jpct/Animation;->getKeyFrames()[Lcom/threed/jpct/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JAnimation;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Animation;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Animation;->getName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSequence(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JAnimation;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Animation;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Animation;->getSequence(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getSequenceBorders(I)[I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JAnimation;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Animation;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Animation;->getSequenceBorders(I)[I

    move-result-object p1

    return-object p1
.end method

.method public getSequenceCount()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JAnimation;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Animation;

    invoke-virtual {v0}, Lcom/threed/jpct/Animation;->getSequenceCount()I

    move-result v0

    return v0
.end method

.method public remove(I)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JAnimation;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Animation;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Animation;->remove(I)V

    return-void
.end method

.method public setCaching(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JAnimation;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Animation;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Animation;->setCaching(Z)V

    return-void
.end method

.method public setClampingMode(I)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JAnimation;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Animation;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Animation;->setClampingMode(I)V

    return-void
.end method

.method public setInterpolationMethod(I)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JAnimation;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Animation;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Animation;->setInterpolationMethod(I)V

    return-void
.end method

.method public strip()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JAnimation;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Animation;

    invoke-virtual {v0}, Lcom/threed/jpct/Animation;->strip()V

    return-void
.end method
