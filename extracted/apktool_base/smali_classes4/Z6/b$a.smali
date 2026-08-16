.class public LZ6/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ6/b;->x1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLZ6/b$i;LZ6/b$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z

.field public final synthetic e:LZ6/b$i;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Lr4/a$e;

.field public final synthetic h:F

.field public final synthetic i:F

.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:LZ6/b$j;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLZ6/b$i;Landroid/view/View;Lr4/a$e;FFIILZ6/b$j;)V
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
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$tittle",
            "val$description",
            "val$checkBoxText",
            "val$checkboxChecked",
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

    iput-object p1, p0, LZ6/b$a;->a:Ljava/lang/String;

    iput-object p2, p0, LZ6/b$a;->b:Ljava/lang/String;

    iput-object p3, p0, LZ6/b$a;->c:Ljava/lang/String;

    iput-boolean p4, p0, LZ6/b$a;->d:Z

    iput-object p5, p0, LZ6/b$a;->e:LZ6/b$i;

    iput-object p6, p0, LZ6/b$a;->f:Landroid/view/View;

    iput-object p7, p0, LZ6/b$a;->g:Lr4/a$e;

    iput p8, p0, LZ6/b$a;->h:F

    iput p9, p0, LZ6/b$a;->i:F

    iput p10, p0, LZ6/b$a;->j:I

    iput p11, p0, LZ6/b$a;->k:I

    iput-object p12, p0, LZ6/b$a;->l:LZ6/b$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Utils/E;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blockPanel"
        }
    .end annotation

    new-instance v7, LZ6/b;

    iget-object v1, p0, LZ6/b$a;->a:Ljava/lang/String;

    iget-object v2, p0, LZ6/b$a;->b:Ljava/lang/String;

    iget-object v3, p0, LZ6/b$a;->c:Ljava/lang/String;

    iget-boolean v4, p0, LZ6/b$a;->d:Z

    iget-object v5, p0, LZ6/b$a;->e:LZ6/b$i;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, LZ6/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLZ6/b$i;LZ6/b$a;)V

    invoke-static {v7, p1}, LZ6/b;->p1(LZ6/b;Lcom/itsmagic/engine/Activities/Editor/Utils/E;)Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    iget-object p1, p0, LZ6/b$a;->f:Landroid/view/View;

    iget-object v0, p0, LZ6/b$a;->g:Lr4/a$e;

    iget v1, p0, LZ6/b$a;->h:F

    iget v2, p0, LZ6/b$a;->i:F

    invoke-static {p1, v7, v0, v1, v2}, Lr4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p1

    invoke-static {v7, p1}, LZ6/b;->q1(LZ6/b;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    iget v0, p0, LZ6/b$a;->j:I

    iget v1, p0, LZ6/b$a;->k:I

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;->Fixed:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;

    invoke-virtual {p1, v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->I1(IILcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v0, p0, LZ6/b$a;->l:LZ6/b$j;

    if-eqz v0, :cond_0

    invoke-interface {v0, v7, p1}, LZ6/b$j;->a(LZ6/b;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    :cond_0
    return-void
.end method
