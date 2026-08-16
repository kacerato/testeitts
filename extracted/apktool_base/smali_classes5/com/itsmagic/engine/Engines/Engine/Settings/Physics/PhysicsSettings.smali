.class public Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$e;
    }
.end annotation


# instance fields
.field public final filtersEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final layers:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;",
            ">;"
        }
    .end annotation
.end field

.field public final layersEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layersEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->filtersEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    new-instance v2, LAc/b;

    const-string v3, "Default"

    invoke-direct {v2, v3}, LAc/b;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;-><init>(LAc/b;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(LAc/b;)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "guid"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->guid:LAc/b;

    invoke-virtual {v3, p1}, LAc/b;->Y(LAc/b;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_1
    monitor-exit v0

    return-object v2

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(LAc/b;)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->name:LAc/b;

    invoke-virtual {v3, p1}, LAc/b;->Y(LAc/b;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_1
    monitor-exit v0

    return-object v2

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d()LAc/b;
    .locals 4

    new-instance v0, LAc/b;

    const-string v1, "Layer"

    invoke-direct {v0, v1}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->c(LAc/b;)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, LAc/b;->u0(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->c(LAc/b;)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public e(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "settingsInflationListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/itsmagic/engine/Engines/Engine/Settings/c;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;

    invoke-direct {v1, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;Landroid/content/Context;)V

    const p1, 0x7f0c0167

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, LC5/b;-><init>(LD5/e;ILjava/lang/Object;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public f(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "settingsInflationListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/itsmagic/engine/Engines/Engine/Settings/c;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, LC5/b;

    new-instance v2, LC5/a;

    const-string v3, "Layers"

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layersEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5, v4}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    invoke-direct {v1, v2}, LC5/b;-><init>(LC5/a;)V

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->g(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, LC5/a;

    const-string v3, "Filter"

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->filtersEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v2, v3, v5, v4}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    invoke-direct {v1, v2}, LC5/b;-><init>(LC5/a;)V

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->e(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public g(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "settingsInflationListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/itsmagic/engine/Engines/Engine/Settings/c;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->j()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->i(I)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v3

    iget-boolean v4, v3, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->isDefault:Z

    if-nez v4, :cond_0

    new-instance v4, LC5/b;

    new-instance v5, LC5/a;

    iget-object v6, v3, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->name:LAc/b;

    invoke-virtual {v6}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->j()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v5, v6, v8, v7}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    invoke-direct {v4, v5}, LC5/b;-><init>(LC5/a;)V

    iget-object v5, v4, LC5/b;->Q:LC5/a;

    iget-object v5, v5, LC5/a;->o:Ljava/util/List;

    new-instance v6, LC5/b;

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a;

    invoke-direct {v7, p0, p1, v3, p2}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)V

    const-string v8, "Name"

    sget-object v9, LC5/b$a;->SLString:LC5/b$a;

    invoke-direct {v6, v7, v8, v9, v1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v4, LC5/b;->Q:LC5/a;

    iget-object v5, v5, LC5/a;->o:Ljava/util/List;

    new-instance v6, LC5/b;

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b;

    invoke-direct {v7, p0, v3, p2}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)V

    const-string v3, "Delete"

    sget-object v8, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {v6, v7, v3, v8}, LC5/b;-><init>(LD5/b;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$c;

    invoke-direct {v2, p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)V

    const-string p1, "Create new"

    sget-object p2, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {v1, v2, p1, p2}, LC5/b;-><init>(LD5/b;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public h(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i(I)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public j()I
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public k()V
    .locals 8

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->isDefault:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    new-instance v4, LAc/b;

    const-string v5, "Default"

    invoke-direct {v4, v5}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;-><init>(LAc/b;Z)V

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-static {v0}, LMc/d;->a(Ljava/util/List;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move v5, v2

    :goto_1
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->l()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->i(I)LAc/b;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->b(LAc/b;)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v5, v2

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LAc/b;

    invoke-virtual {v4, v6}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->q(LAc/b;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x10

    if-le v0, v2, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    return-void
.end method

.method public l(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
