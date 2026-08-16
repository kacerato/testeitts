.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


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

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$c;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$c;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->f(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$c;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->f(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$c;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->f(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->q0()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CLOSE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$c;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->f(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->X()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ARE_YOU_SURE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$c$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$c$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$c;)V

    invoke-static {p1, v0, v1}, LZ6/c;->z1(Ljava/lang/String;Ljava/lang/String;LZ6/c$i;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$c;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->f(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->o0()V

    :cond_1
    :goto_0
    return-void
.end method
