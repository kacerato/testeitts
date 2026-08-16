.class public Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$b$a;
.super LZ6/c$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$b;->a(Landroid/view/View;Landroid/content/Context;Lq4/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$b;

    invoke-direct {p0}, LZ6/c$h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LZ6/c$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-super {p0, p1}, LZ6/c$h;->a(LZ6/c$g;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$b;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$b;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->X0(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;Z)Z

    return-void
.end method
