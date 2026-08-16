.class public Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;
.super LIc/m;
.source "SourceFile"


# instance fields
.field private destroyListeners:[LM9/b;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LIc/m;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyChannel()LM9/a;
    .locals 1

    sget-object v0, LM9/a;->CPU:LM9/a;

    return-object v0
.end method

.method public destroyPriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDestroyListeners()[LM9/b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;->destroyListeners:[LM9/b;

    return-object v0
.end method

.method public setDestroyListeners([LM9/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "destroyListeners"
        }
    .end annotation

    sget-object v0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;->destroyListeners:[LM9/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Double define of destroy listeners"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;->destroyListeners:[LM9/b;

    return-void
.end method
