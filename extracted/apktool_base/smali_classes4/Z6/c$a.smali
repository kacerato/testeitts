.class public LZ6/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ6/c;->x1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;LZ6/c$i;LZ6/c$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:LZ6/c$i;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Lr4/a$e;

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:LZ6/c$j;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;LZ6/c$i;Landroid/view/View;Lr4/a$e;FFIILZ6/c$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$tittle",
            "val$finalDescription",
            "val$listener",
            "val$anchor",
            "val$anchorSide",
            "val$w",
            "val$h",
            "val$totalW",
            "val$totalH",
            "val$showListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LZ6/c$a;->a:Ljava/lang/String;

    iput-object p2, p0, LZ6/c$a;->b:Ljava/lang/String;

    iput-object p3, p0, LZ6/c$a;->c:LZ6/c$i;

    iput-object p4, p0, LZ6/c$a;->d:Landroid/view/View;

    iput-object p5, p0, LZ6/c$a;->e:Lr4/a$e;

    iput p6, p0, LZ6/c$a;->f:F

    iput p7, p0, LZ6/c$a;->g:F

    iput p8, p0, LZ6/c$a;->h:I

    iput p9, p0, LZ6/c$a;->i:I

    iput-object p10, p0, LZ6/c$a;->j:LZ6/c$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Utils/E;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blockPanel"
        }
    .end annotation

    new-instance v0, LZ6/c;

    iget-object v1, p0, LZ6/c$a;->a:Ljava/lang/String;

    iget-object v2, p0, LZ6/c$a;->b:Ljava/lang/String;

    iget-object v3, p0, LZ6/c$a;->c:LZ6/c$i;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, LZ6/c;-><init>(Ljava/lang/String;Ljava/lang/String;LZ6/c$i;LZ6/c$a;)V

    invoke-static {v0, p1}, LZ6/c;->p1(LZ6/c;Lcom/itsmagic/engine/Activities/Editor/Utils/E;)Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    iget-object p1, p0, LZ6/c$a;->d:Landroid/view/View;

    iget-object v1, p0, LZ6/c$a;->e:Lr4/a$e;

    iget v2, p0, LZ6/c$a;->f:F

    iget v3, p0, LZ6/c$a;->g:F

    invoke-static {p1, v0, v1, v2, v3}, Lr4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p1

    invoke-static {v0, p1}, LZ6/c;->q1(LZ6/c;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    iget v1, p0, LZ6/c$a;->h:I

    iget v2, p0, LZ6/c$a;->i:I

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;->Fixed:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;

    invoke-virtual {p1, v1, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->I1(IILcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v1, p0, LZ6/c$a;->j:LZ6/c$j;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0, p1}, LZ6/c$j;->a(LZ6/c;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    :cond_0
    return-void
.end method
