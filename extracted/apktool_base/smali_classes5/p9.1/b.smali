.class public Lp9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LX8/a;

.field public b:LX8/a;

.field public c:LX8/a;

.field public d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "LX8/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lp9/b;->d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lp9/b;->a:LX8/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LX8/a;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lp9/b;->a:LX8/a;

    iget-object v1, p0, Lp9/b;->b:LX8/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, LX8/a;->b()V

    :cond_1
    iput-object v0, p0, Lp9/b;->b:LX8/a;

    iget-object v1, p0, Lp9/b;->c:LX8/a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, LX8/a;->b()V

    :cond_2
    iput-object v0, p0, Lp9/b;->c:LX8/a;

    iget-object v0, p0, Lp9/b;->d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX8/a;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, LX8/a;->b()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lp9/b;->d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->clear()V

    return-void
.end method

.method public b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camera"
        }
    .end annotation

    return-void
.end method
