.class public Li4/b$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li4/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li4/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li4/b$a;


# direct methods
.method public constructor <init>(Li4/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Li4/b$a$c;->a:Li4/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln4/f;Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "panelIntent",
            "panelsController"
        }
    .end annotation

    instance-of v0, p1, Ln4/e;

    if-eqz v0, :cond_2

    check-cast p1, Ln4/e;

    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->G(Ljava/lang/Class;)Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;->O0(Ln4/f;)Z

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->v0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    return v1

    :cond_0
    new-instance p2, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;

    invoke-direct {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;-><init>()V

    iget-object v0, p1, Ln4/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;->s1(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Ln4/e;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;->t1(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    :goto_0
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    const v0, 0x3dcccccd    # 0.1f

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {p1, v0, v0, v2, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
