.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->C1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$l;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$l;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->A1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "models"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$l;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->z1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;I)I

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;

    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$l;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->v1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)Le7/a;

    move-result-object v4

    invoke-virtual {v4}, Le7/a;->getItemCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$l;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->v1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)Le7/a;

    move-result-object v4

    invoke-virtual {v4, v3}, Le7/a;->m(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v2, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_4
    move v5, v2

    :goto_3
    if-nez v5, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$l;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->v1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)Le7/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Le7/a;->i(Ljava/util/List;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$l;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->A1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
