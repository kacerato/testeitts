.class public Ljpct/ae/wrapper/JDepthBuffer;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctDepthBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/DepthBuffer;",
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
.method public Initialize(II)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/DepthBuffer;

    invoke-direct {v0, p1, p2}, Lcom/threed/jpct/DepthBuffer;-><init>(II)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JDepthBuffer;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JDepthBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/DepthBuffer;

    invoke-virtual {v0}, Lcom/threed/jpct/DepthBuffer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JDepthBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/DepthBuffer;

    invoke-virtual {v0}, Lcom/threed/jpct/DepthBuffer;->getWidth()I

    move-result v0

    return v0
.end method
