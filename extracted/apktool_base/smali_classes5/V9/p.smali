.class public LV9/p;
.super Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public e:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "guid"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "guid",
            "object"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;
    .locals 1

    invoke-virtual {p0}, LV9/p;->k()LV9/p;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, LV9/p;->k()LV9/p;

    move-result-object v0

    return-object v0
.end method

.method public k()LV9/p;
    .locals 2

    new-instance v0, LV9/p;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->guid:Ljava/lang/String;

    invoke-direct {v0, v1}, LV9/p;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public l()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->j()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iget-object v1, p0, LV9/p;->e:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eq v1, v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, LV9/p;->e:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    :cond_0
    iget-object v1, p0, LV9/p;->e:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    iput-object v0, p0, LV9/p;->e:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    :cond_1
    iget-object v0, p0, LV9/p;->e:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    return-object v0
.end method
