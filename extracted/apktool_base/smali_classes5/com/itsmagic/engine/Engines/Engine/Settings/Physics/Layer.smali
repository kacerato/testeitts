.class public Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;
.super LIc/m;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:LJAVARuntime/PhysicsLayer;

.field public final guid:LAc/b;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final ignoreLayers:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LAc/b;",
            ">;"
        }
    .end annotation
.end field

.field private final inspectorEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isDefault:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:LAc/b;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, LIc/m;-><init>()V

    .line 2
    new-instance v0, LAc/b;

    .line 3
    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LAc/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->guid:LAc/b;

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->inspectorEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->ignoreLayers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(LAc/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, LIc/m;-><init>()V

    .line 7
    new-instance v0, LAc/b;

    .line 8
    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LAc/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->guid:LAc/b;

    .line 9
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->inspectorEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    .line 10
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->ignoreLayers:Ljava/util/List;

    .line 11
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->name:LAc/b;

    return-void
.end method

.method public constructor <init>(LAc/b;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "isDefault"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, LIc/m;-><init>()V

    .line 13
    new-instance v0, LAc/b;

    .line 14
    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LAc/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->guid:LAc/b;

    .line 15
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->inspectorEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    .line 16
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->ignoreLayers:Ljava/util/List;

    .line 17
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->name:LAc/b;

    .line 18
    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->isDefault:Z

    return-void
.end method


# virtual methods
.method public e(LAc/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->o(LAc/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->ignoreLayers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public f(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->p(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->ignoreLayers:Ljava/util/List;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->guid:LAc/b;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public h()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->ignoreLayers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->ignoreLayers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LAc/b;

    invoke-virtual {v2}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i(I)LAc/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->ignoreLayers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LAc/b;

    return-object p1
.end method

.method public j()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->inspectorEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    return-object v0
.end method

.method public k()LAc/b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->name:LAc/b;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->ignoreLayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public m(LAc/b;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->ignoreLayers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->ignoreLayers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LAc/b;

    invoke-virtual {v1, p1}, LAc/b;->Y(LAc/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public n(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->guid:LAc/b;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->m(LAc/b;)I

    move-result p1

    return p1
.end method

.method public o(LAc/b;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->ignoreLayers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->ignoreLayers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LAc/b;

    invoke-virtual {v2, p1}, LAc/b;->Y(LAc/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public p(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->guid:LAc/b;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->o(LAc/b;)Z

    move-result p1

    return p1
.end method

.method public q(LAc/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->m(LAc/b;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->ignoreLayers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public r(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->n(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->ignoreLayers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public s(LAc/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->name:LAc/b;

    return-void
.end method

.method public u()LJAVARuntime/PhysicsLayer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->d:LJAVARuntime/PhysicsLayer;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/PhysicsLayer;

    invoke-direct {v0, p0}, LJAVARuntime/PhysicsLayer;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->d:LJAVARuntime/PhysicsLayer;

    :cond_0
    return-object v0
.end method
