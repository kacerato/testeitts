.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li4/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$a;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->X()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->G(Ljava/lang/Class;)Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p1, "Only one panel of this type is allowed at a time."

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$a;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-void
.end method
