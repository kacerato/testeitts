.class public Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;
.super LQc/a;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

.field public b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public c:LQc/b;

.field public componentData:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private hasComp:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public objectReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LQc/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->hasComp:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->componentData:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;

    .line 4
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->objectReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, LQc/a;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->hasComp:Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->componentData:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;

    .line 8
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->objectReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    .line 9
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    return-void
.end method

.method public static f(Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;)Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;
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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->e()Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public e()Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;-><init>()V

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->hasComp:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->hasComp:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->componentData:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->componentData:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->uniqueGUID:Ljava/lang/String;

    iput-object v3, v1, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->uniqueGUID:Ljava/lang/String;

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->duplicableGUID:Ljava/lang/String;

    iput-object v3, v1, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->duplicableGUID:Ljava/lang/String;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->type:Ljava/lang/String;

    iput-object v2, v1, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->componentData:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->objectReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->i()Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->objectReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    :cond_1
    return-object v0
.end method

.method public g()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 8

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->hasComp:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->c:LQc/b;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->objectReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->componentData:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->objectReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->k()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    new-instance v4, LQc/b;

    invoke-direct {v4}, LQc/b;-><init>()V

    iput-object v3, v4, LQc/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->l()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->componentData:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;

    iget-object v6, v6, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->uniqueGUID:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, LQc/a;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->j()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->componentData:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;

    iget-object v7, v7, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->duplicableGUID:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, LQc/a;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getSerializedType()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->componentData:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;

    iget-object v7, v7, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->type:Ljava/lang/String;

    invoke-virtual {p0, v3, v7}, LQc/a;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v5, :cond_1

    iget v5, v4, LQc/b;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, LQc/b;->b:I

    :cond_1
    if-eqz v6, :cond_2

    iget v5, v4, LQc/b;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, LQc/b;->b:I

    :cond_2
    if-eqz v3, :cond_3

    iget v3, v4, LQc/b;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, LQc/b;->b:I

    :cond_3
    iget v3, v4, LQc/b;->b:I

    if-lez v3, :cond_5

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->c:LQc/b;

    if-nez v5, :cond_4

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->c:LQc/b;

    goto :goto_1

    :cond_4
    iget v5, v5, LQc/b;->b:I

    if-gt v5, v3, :cond_5

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->c:LQc/b;

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->c:LQc/b;

    if-eqz v0, :cond_7

    iget-object v0, v0, LQc/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->c:LQc/b;

    :cond_7
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    return-object v0
.end method

.method public h()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0
.end method

.method public i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attachedTo"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-void
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->hasComp:Z

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->objectReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->objectReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->q()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->uniqueGUID:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->duplicableGUID:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getSerializedType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->componentData:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->hasComp:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->componentData:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->objectReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    :goto_0
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
