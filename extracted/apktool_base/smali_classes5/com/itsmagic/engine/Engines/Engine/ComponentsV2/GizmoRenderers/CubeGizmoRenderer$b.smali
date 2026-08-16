.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lib/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globalMatrix"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;)[F

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o([F)[F

    :cond_1
    :goto_0
    return-void
.end method
