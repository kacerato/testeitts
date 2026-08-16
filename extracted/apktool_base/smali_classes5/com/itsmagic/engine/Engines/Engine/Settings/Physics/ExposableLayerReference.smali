.class public Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

.field public layerGUID:LAc/b;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LAc/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layerGUID"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->layerGUID:LAc/b;

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    return-object p1
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exposableLayerReference"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->b()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->layerGUID:LAc/b;

    invoke-static {v1}, LAc/b;->J(LAc/b;)LAc/b;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->layerGUID:LAc/b;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->b()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;Landroid/content/Context;Lrb/a;)LC5/b;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "context",
            "layerListener"
        }
    .end annotation

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DEFAULT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, LK8/a;->m(Landroid/content/Context;)Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->g()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->j()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-static {p2}, LK8/a;->m(Landroid/content/Context;)Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->g()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->i(I)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v2

    iget-boolean v4, v2, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->isDefault:Z

    if-nez v4, :cond_0

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->name:LAc/b;

    invoke-virtual {v2}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DEFAULT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->f(Landroid/content/Context;)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->name:LAc/b;

    invoke-virtual {v0}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v2, v0

    new-instance v6, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference$a;

    invoke-direct {v1, p0, p3, v3, p2}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;Lrb/a;Ljava/util/List;Landroid/content/Context;)V

    sget-object v4, LC5/b$a;->SLDropdown:LC5/b$a;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;Ljava/util/List;LC5/b$a;Ljava/lang/String;)V

    return-object v6
.end method

.method public e()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;
    .locals 1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->f(Landroid/content/Context;)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v0

    return-object v0
.end method

.method public f(Landroid/content/Context;)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->guid:LAc/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->layerGUID:LAc/b;

    invoke-virtual {v0, v1}, LAc/b;->Y(LAc/b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->layerGUID:LAc/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LAc/b;->g0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, LK8/a;->m(Landroid/content/Context;)Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->g()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->layerGUID:LAc/b;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->b(LAc/b;)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    return-object p1
.end method

.method public g()I
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->i()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v0

    const/4 v1, 0x1

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->b:I

    shl-int v0, v1, v0

    return v0
.end method

.method public h()I
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->i()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->b:I

    invoke-static {v0}, LCc/d;->a(I)I

    move-result v0

    return v0
.end method

.method public i()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->e()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LK8/a;->m(Landroid/content/Context;)Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->g()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->i(I)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v0

    :cond_0
    return-object v0
.end method
