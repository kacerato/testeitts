.class public Ljpct/ae/wrapper/JIntList;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctIntList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/IntList;",
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
.method public Initialize()V
    .locals 1

    new-instance v0, Lcom/threed/jpct/IntList;

    invoke-direct {v0}, Lcom/threed/jpct/IntList;-><init>()V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JIntList;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public add(I)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JIntList;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/IntList;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/IntList;->add(I)V

    return-void
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JIntList;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/IntList;

    invoke-virtual {v0}, Lcom/threed/jpct/IntList;->clear()V

    return-void
.end method

.method public compact()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JIntList;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/IntList;

    invoke-virtual {v0}, Lcom/threed/jpct/IntList;->compact()V

    return-void
.end method

.method public get(I)I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JIntList;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/IntList;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JIntList;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/IntList;

    invoke-virtual {v0}, Lcom/threed/jpct/IntList;->size()I

    move-result v0

    return v0
.end method
