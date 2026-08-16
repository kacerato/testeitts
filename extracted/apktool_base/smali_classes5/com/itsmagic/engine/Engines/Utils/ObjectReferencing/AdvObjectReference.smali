.class public Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;
.super LQc/a;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public c:LQc/c;

.field private childCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private childOfReference:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final componentList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;",
            ">;"
        }
    .end annotation
.end field

.field public duplicableGUID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private hasObject:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public parentName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uniqueGUID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, LQc/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->hasObject:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->uniqueGUID:Ljava/lang/String;

    .line 4
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->duplicableGUID:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->name:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->parentName:Ljava/lang/String;

    .line 7
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->childOfReference:Z

    .line 8
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->componentList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, LQc/a;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->hasObject:Z

    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->uniqueGUID:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->duplicableGUID:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->name:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->parentName:Ljava/lang/String;

    .line 15
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->childOfReference:Z

    .line 16
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->componentList:Ljava/util/List;

    .line 17
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-void
.end method

.method public static j(Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;)Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reference"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->i()Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->childCount:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->componentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->componentList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v3

    if-le v3, v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->l()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->uniqueGUID:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, LQc/a;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->j()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->duplicableGUID:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, LQc/a;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getSerializedType()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->type:Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, LQc/a;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    if-eqz v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public final g(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->childOfReference:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->uniqueGUID:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, LQc/a;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->duplicableGUID:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, LQc/a;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->name:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, LQc/a;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v4

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v5

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)I

    move-result v6

    new-instance v7, LQc/c;

    invoke-direct {v7}, LQc/c;-><init>()V

    iput-object p1, v7, LQc/c;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_1

    iget v0, v7, LQc/c;->b:I

    add-int/2addr v0, v1

    iput v0, v7, LQc/c;->b:I

    :cond_1
    if-eqz v2, :cond_2

    iget v0, v7, LQc/c;->b:I

    add-int/2addr v0, v1

    iput v0, v7, LQc/c;->b:I

    :cond_2
    if-eqz v3, :cond_3

    iget v0, v7, LQc/c;->b:I

    add-int/2addr v0, v1

    iput v0, v7, LQc/c;->b:I

    :cond_3
    if-eqz v4, :cond_4

    iget v0, v7, LQc/c;->b:I

    add-int/2addr v0, v1

    iput v0, v7, LQc/c;->b:I

    :cond_4
    if-eqz v5, :cond_5

    iget v0, v7, LQc/c;->b:I

    add-int/2addr v0, v1

    iput v0, v7, LQc/c;->b:I

    :cond_5
    iget v0, v7, LQc/c;->b:I

    add-int/2addr v0, v6

    iput v0, v7, LQc/c;->b:I

    if-lez v0, :cond_7

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->c:LQc/c;

    if-nez v2, :cond_6

    iput-object v7, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->c:LQc/c;

    goto :goto_0

    :cond_6
    iget v2, v2, LQc/c;->b:I

    if-gt v2, v0, :cond_7

    iput-object v7, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->c:LQc/c;

    :cond_7
    :goto_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->g(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v3

    if-eqz v3, :cond_8

    return v1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    return v0
.end method

.method public final h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->parentName:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->parentName:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->parentName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    return v1
.end method

.method public i()Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;
    .locals 5

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;-><init>()V

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->hasObject:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->hasObject:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->uniqueGUID:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->uniqueGUID:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->duplicableGUID:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->duplicableGUID:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->parentName:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->parentName:Ljava/lang/String;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->childCount:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->childCount:I

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->childOfReference:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->childOfReference:Z

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->componentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->componentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->componentList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;-><init>()V

    iget-object v4, v2, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->uniqueGUID:Ljava/lang/String;

    iput-object v4, v3, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->uniqueGUID:Ljava/lang/String;

    iget-object v4, v2, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->duplicableGUID:Ljava/lang/String;

    iput-object v4, v3, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->duplicableGUID:Ljava/lang/String;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->type:Ljava/lang/String;

    iput-object v2, v3, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->type:Ljava/lang/String;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->componentList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public k()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->hasObject:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->c:LQc/c;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->g(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->c:LQc/c;

    if-eqz v1, :cond_3

    iget-object v1, v1, LQc/c;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->c:LQc/c;

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0
.end method

.method public l()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0
.end method

.method public m()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0
.end method

.method public final n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attachedTo"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-void
.end method

.method public p(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-void
.end method

.method public q()V
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->hasObject:Z

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->uniqueGUID:Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->duplicableGUID:Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->parentName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->parentName:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->childCount:I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->componentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;-><init>()V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->l()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->uniqueGUID:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->j()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->duplicableGUID:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getSerializedType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->componentList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->childOfReference:Z

    goto :goto_2

    :cond_2
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->childOfReference:Z

    goto :goto_2

    :cond_3
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->hasObject:Z

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->uniqueGUID:Ljava/lang/String;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->duplicableGUID:Ljava/lang/String;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->parentName:Ljava/lang/String;

    iput v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->childCount:I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->componentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->childOfReference:Z

    :goto_2
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
