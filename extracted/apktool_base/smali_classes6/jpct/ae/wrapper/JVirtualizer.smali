.class public Ljpct/ae/wrapper/JVirtualizer;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctVirtualizer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/Virtualizer;",
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

    new-instance v0, Lcom/threed/jpct/Virtualizer;

    invoke-direct {v0}, Lcom/threed/jpct/Virtualizer;-><init>()V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JVirtualizer;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public Initialize2(I)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/Virtualizer;

    invoke-direct {v0, p1}, Lcom/threed/jpct/Virtualizer;-><init>(I)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JVirtualizer;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public cleanUp()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JVirtualizer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Virtualizer;

    invoke-virtual {v0}, Lcom/threed/jpct/Virtualizer;->cleanUp()V

    return-void
.end method

.method public finalize()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JVirtualizer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Virtualizer;

    invoke-virtual {v0}, Lcom/threed/jpct/Virtualizer;->finalize()V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JVirtualizer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Virtualizer;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Virtualizer;->setContext(Landroid/content/Context;)V

    return-void
.end method
