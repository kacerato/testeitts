.class public LZ6/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ6/l;->x1(LZ6/l$i;LZ6/l$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LZ6/l$i;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:LZ6/l$j;


# direct methods
.method public constructor <init>(LZ6/l$i;FFLZ6/l$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$listener",
            "val$w",
            "val$h",
            "val$showListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LZ6/l$b;->a:LZ6/l$i;

    iput p2, p0, LZ6/l$b;->b:F

    iput p3, p0, LZ6/l$b;->c:F

    iput-object p4, p0, LZ6/l$b;->d:LZ6/l$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Utils/E;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blockPanel"
        }
    .end annotation

    new-instance v0, LZ6/l;

    iget-object v1, p0, LZ6/l$b;->a:LZ6/l$i;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LZ6/l;-><init>(LZ6/l$i;LZ6/l$a;)V

    invoke-static {v0, p1}, LZ6/l;->p1(LZ6/l;Lcom/itsmagic/engine/Activities/Editor/Utils/E;)Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    iget p1, p0, LZ6/l$b;->b:F

    iget v1, p0, LZ6/l$b;->c:F

    invoke-static {v0, p1, v1}, Lr4/a;->o(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p1

    invoke-static {v0, p1}, LZ6/l;->q1(LZ6/l;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    const/16 v1, 0x20

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;->Fixed:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;

    const/16 v3, 0x44

    invoke-virtual {p1, v3, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->I1(IILcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v1, p0, LZ6/l$b;->d:LZ6/l$j;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0, p1}, LZ6/l$j;->a(LZ6/l;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    :cond_0
    return-void
.end method
