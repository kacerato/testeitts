.class public Lj9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LMc/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMc/b<",
            "Lj9/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Lj9/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:LMc/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMc/b<",
            "Lj9/a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj9/a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj9/a;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lh9/a;


# direct methods
.method public constructor <init>(Lh9/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LMc/b;

    invoke-direct {v0}, LMc/b;-><init>()V

    iput-object v0, p0, Lj9/b;->a:LMc/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lj9/b;->b:Ljava/util/Map;

    new-instance v0, LMc/b;

    invoke-direct {v0}, LMc/b;-><init>()V

    iput-object v0, p0, Lj9/b;->c:LMc/b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lj9/b;->d:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lj9/b;->e:Ljava/util/List;

    iput-object p1, p0, Lj9/b;->f:Lh9/a;

    return-void
.end method

.method public static e(Lj9/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collision"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lj9/a;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_6

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj9/a$a;

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v5, v4, Lj9/a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->emulateHash()I

    move-result v5

    move v6, v1

    :goto_1
    if-ge v6, v3, :cond_4

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj9/a$a;

    if-eqz v7, :cond_3

    iget-object v7, v7, Lj9/a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->emulateHash()I

    move-result v7

    if-ne v7, v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    if-eq v3, v2, :cond_5

    invoke-interface {p0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    return-void
.end method


# virtual methods
.method public a(Lj9/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collision"
        }
    .end annotation

    iget-object v0, p0, Lj9/b;->f:Lh9/a;

    invoke-interface {v0}, Lh9/a;->keepContactList()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p1, Lj9/a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lj9/b;->b:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lj9/b;->a:LMc/b;

    invoke-virtual {v0, p1}, LMc/b;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lj9/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lj9/b;->c:LMc/b;

    invoke-virtual {v0, p1}, LMc/b;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lj9/b;->c:LMc/b;

    invoke-virtual {v0, p1}, LMc/b;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Collision other object can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Collision can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iget-object v0, p0, Lj9/b;->f:Lh9/a;

    invoke-interface {v0}, Lh9/a;->keepContactList()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lj9/b;->a:LMc/b;

    invoke-virtual {v0}, LMc/b;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lj9/b;->a:LMc/b;

    invoke-virtual {v2}, LMc/b;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lj9/b;->a:LMc/b;

    invoke-virtual {v2, v0}, LMc/b;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj9/a;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lj9/a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v3}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Lj9/a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->I(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public c(I)Lj9/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lj9/b;->a:LMc/b;

    invoke-virtual {v0, p1}, LMc/b;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj9/a;

    return-object p1
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lj9/b;->f:Lh9/a;

    invoke-interface {v0}, Lh9/a;->keepContactList()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lj9/b;->a:LMc/b;

    invoke-virtual {v0}, LMc/b;->size()I

    move-result v0

    return v0
.end method

.method public f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lj9/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget-object v0, p0, Lj9/b;->f:Lh9/a;

    invoke-interface {v0}, Lh9/a;->keepContactList()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lj9/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj9/a;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lj9/b;->c:LMc/b;

    invoke-virtual {v0, p1}, LMc/b;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lj9/b;->c:LMc/b;

    invoke-virtual {v0, p1}, LMc/b;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lj9/b;->f:Lh9/a;

    invoke-interface {v0}, Lh9/a;->keepContactList()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lj9/b;->a:LMc/b;

    invoke-virtual {v0}, LMc/b;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object p1, p0, Lj9/b;->f:Lh9/a;

    invoke-interface {p1}, Lh9/a;->keepContactList()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lj9/b;->a:LMc/b;

    invoke-virtual {v0}, LMc/b;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lj9/b;->a:LMc/b;

    invoke-virtual {v0, p1}, LMc/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj9/a;

    invoke-static {v0}, Lj9/b;->e(Lj9/a;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object v0, p0, Lj9/b;->f:Lh9/a;

    invoke-interface {v0}, Lh9/a;->enableCollisionEvents()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lj9/b;->a:LMc/b;

    invoke-virtual {v2}, LMc/b;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lj9/b;->a:LMc/b;

    invoke-virtual {v2, v1}, LMc/b;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj9/a;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->onCollision(Lj9/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Lj9/b;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lj9/b;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj9/a;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->onCollisionEnter(Lj9/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v1, p0, Lj9/b;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lj9/b;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj9/a;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->onCollisionStop(Lj9/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object p1, p0, Lj9/b;->f:Lh9/a;

    invoke-interface {p1}, Lh9/a;->keepContactList()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lj9/b;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lj9/b;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lj9/b;->a:LMc/b;

    invoke-virtual {v1}, LMc/b;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lj9/b;->a:LMc/b;

    invoke-virtual {v1, v0}, LMc/b;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj9/a;

    iget-object v2, p0, Lj9/b;->c:LMc/b;

    invoke-virtual {v2, v1}, LMc/b;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lj9/b;->b:Ljava/util/Map;

    iget-object v3, v1, Lj9/a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lj9/b;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lj9/b;->a:LMc/b;

    iget-object v1, p0, Lj9/b;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    :goto_1
    iget-object v0, p0, Lj9/b;->c:LMc/b;

    invoke-virtual {v0}, LMc/b;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lj9/b;->c:LMc/b;

    invoke-virtual {v0, p1}, LMc/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj9/a;

    iget-object v1, p0, Lj9/b;->a:LMc/b;

    invoke-virtual {v1, v0}, LMc/b;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lj9/b;->b:Ljava/util/Map;

    iget-object v2, v0, Lj9/a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lj9/b;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v0}, Lj9/a;->f()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lj9/b;->c:LMc/b;

    invoke-virtual {p1}, LMc/b;->clear()V

    return-void
.end method
