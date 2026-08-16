.class public Lt5/l;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt5/l$c;,
        Lt5/l$b;
    }
.end annotation


# static fields
.field public static final Z:Ljava/lang/String; = "SimpleViewPanel"


# instance fields
.field public final X:I

.field public final Y:Lt5/l$c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILt5/l$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "tittle",
            "resourceID",
            "listener"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    iput p3, p0, Lt5/l;->X:I

    iput-object p4, p0, Lt5/l;->Y:Lt5/l$c;

    return-void
.end method

.method public static p1(IIILt5/l$c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "widthDP",
            "heightDP",
            "resourceID",
            "listener"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    move v2, p0

    move v3, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lt5/l;->r1(Landroid/view/View;Lr4/a$e;IILjava/lang/String;ILt5/l$c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0
.end method

.method public static q1(IILjava/lang/String;ILt5/l$c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "widthDP",
            "heightDP",
            "name",
            "resourceID",
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lt5/l;->r1(Landroid/view/View;Lr4/a$e;IILjava/lang/String;ILt5/l$c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0
.end method

.method public static r1(Landroid/view/View;Lr4/a$e;IILjava/lang/String;ILt5/l$c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "anchorSide",
            "widthDP",
            "heightDP",
            "name",
            "resourceID",
            "listener"
        }
    .end annotation

    new-instance v0, Lt5/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p4, p5, p6}, Lt5/l;-><init>(Ljava/lang/String;Ljava/lang/String;ILt5/l$c;)V

    invoke-static {p2}, LN7/c;->g(I)F

    move-result p5

    invoke-static {p3}, LN7/c;->f(I)F

    move-result p6

    if-nez p0, :cond_0

    invoke-static {v0, p5, p6}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, v0, p1, p5, p6}, Lr4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    :goto_0
    if-nez p4, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    :cond_1
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;->MinSize:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;

    invoke-virtual {p0, p2, p3, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->I1(IILcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    iget v1, p0, Lt5/l;->X:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lt5/l$a;

    invoke-direct {v2, p0}, Lt5/l$a;-><init>(Lt5/l;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lt5/l;->Y:Lt5/l$c;

    invoke-interface {v1, v0, p0}, Lt5/l$c;->b(Landroid/view/View;Lt5/l;)V

    return-object v0
.end method

.method public G0()V
    .locals 1

    iget-object v0, p0, Lt5/l;->Y:Lt5/l$c;

    invoke-interface {v0}, Lt5/l$c;->a()V

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 5

    new-instance v0, Lt5/l;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->X()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lt5/l;->X:I

    iget-object v4, p0, Lt5/l;->Y:Lt5/l$c;

    invoke-direct {v0, v1, v2, v3, v4}, Lt5/l;-><init>(Ljava/lang/String;Ljava/lang/String;ILt5/l$c;)V

    return-object v0
.end method
