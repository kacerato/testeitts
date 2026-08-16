.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m;->b(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getProjection()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Perspective:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    const-string v2, "true"

    const-string v3, ""

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {v0, v3, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->access$600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Orthographic:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v1, "false"

    invoke-direct {v0, v3, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {v0, v3, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getProjection()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    move-result-object p1

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Perspective:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    if-eq p1, v2, :cond_0

    move v0, v1

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setProjection(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;)V

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getProjection()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    move-result-object p1

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Orthographic:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    if-eq p1, v2, :cond_2

    move v0, v1

    :cond_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setProjection(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;)V

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    :cond_3
    :goto_0
    return-void
.end method
