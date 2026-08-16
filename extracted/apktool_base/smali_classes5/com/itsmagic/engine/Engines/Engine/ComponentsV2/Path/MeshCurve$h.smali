.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$h;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowSelect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$h;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->access$800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getExtraTittle()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$h;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    invoke-static {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->access$600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$h;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    invoke-static {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->access$302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$h;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;)Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$h;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->access$302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$h;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;-><init>()V

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;)Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    :goto_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$h;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;)Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$h;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$h;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;)Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->j()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$h;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->access$702(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;I)I

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$h;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->access$502(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;Z)Z

    return-void
.end method
