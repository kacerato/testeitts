.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->V(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;IZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, LN7/c;->Y()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ldd/b;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ADD_PANEL:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->e(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Li4/e;

    move-result-object v3

    new-instance v4, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$a;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;)V

    invoke-interface {v3, v4}, Li4/e;->d(Li4/c;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ldd/b;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OPTIONS:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$b;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;)V

    invoke-direct {v1, v2, v3}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ldd/b;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CLOSE_PANEL:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$c;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;)V

    invoke-direct {v1, v2, v3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->f(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->f(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->f(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->N()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ldd/b;

    invoke-direct {v2}, Ldd/b;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    sget-object v1, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {p1, v1, v0}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void
.end method
