.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->schedulePathControllerCreation(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$pathParent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$g;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$g;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$g;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->access$202(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;Z)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$g;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isGarbage()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$g;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isGarbage()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$g;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    if-nez v0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$g;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$g;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->access$302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$g;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    invoke-direct {v2, v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;)Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$g;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;)Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$g;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$g;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;)Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->j()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$g;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->access$502(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;Z)Z

    :cond_2
    :goto_0
    return-void
.end method
