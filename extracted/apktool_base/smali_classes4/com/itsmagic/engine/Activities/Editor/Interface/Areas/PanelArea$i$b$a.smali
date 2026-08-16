.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$b;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$b;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->e(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Li4/e;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$b;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i$b;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$i;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->O0()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    :cond_0
    return-void
.end method
