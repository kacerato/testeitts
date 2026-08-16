.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$c$a;
.super LZ6/c$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$c;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$c;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$c$a;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$c;

    invoke-direct {p0}, LZ6/c$h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LZ6/c$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-super {p0, p1}, LZ6/c$h;->a(LZ6/c$g;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$c$a;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$c;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$c;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->f(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$c$a;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$c;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$c;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->f(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->o0()V

    :cond_0
    return-void
.end method
