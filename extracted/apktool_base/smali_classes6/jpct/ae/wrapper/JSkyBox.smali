.class public Ljpct/ae/wrapper/JSkyBox;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "jpctSkyBox"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/util/SkyBox;",
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
.method public Initialize(F)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/util/SkyBox;

    invoke-direct {v0, p1}, Lcom/threed/jpct/util/SkyBox;-><init>(F)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JSkyBox;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public Initialize2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 9

    new-instance v8, Lcom/threed/jpct/util/SkyBox;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/threed/jpct/util/SkyBox;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    move-object v0, p0

    invoke-virtual {p0, v8}, Ljpct/ae/wrapper/JSkyBox;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public compile()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSkyBox;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/SkyBox;

    invoke-virtual {v0}, Lcom/threed/jpct/util/SkyBox;->compile()V

    return-void
.end method

.method public dispose()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSkyBox;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/SkyBox;

    invoke-virtual {v0}, Lcom/threed/jpct/util/SkyBox;->dispose()V

    return-void
.end method

.method public getWorld()Lcom/threed/jpct/World;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSkyBox;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/SkyBox;

    invoke-virtual {v0}, Lcom/threed/jpct/util/SkyBox;->getWorld()Lcom/threed/jpct/World;

    move-result-object v0

    return-object v0
.end method

.method public render(Lcom/threed/jpct/World;Lcom/threed/jpct/FrameBuffer;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSkyBox;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/SkyBox;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/util/SkyBox;->render(Lcom/threed/jpct/World;Lcom/threed/jpct/FrameBuffer;)V

    return-void
.end method

.method public setCenter(Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JSkyBox;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/SkyBox;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/util/SkyBox;->setCenter(Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method
