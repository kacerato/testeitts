.class public abstract LR4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectedObject",
            "panel3DView"
        }
    .end annotation
.end method

.method public abstract b()LN4/a;
.end method

.method public final c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectedObject",
            "panel3DView"
        }
    .end annotation

    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c1()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->F1()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;->All:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, LR4/b;->b()LN4/a;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->E1(LN4/a;)Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p0, p1, p2}, LR4/b;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)Z

    move-result p1

    return p1
.end method
