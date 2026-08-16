.class public LZ6/l;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZ6/l$i;,
        LZ6/l$g;,
        LZ6/l$j;,
        LZ6/l$h;
    }
.end annotation


# static fields
.field public static final b0:Ljava/lang/String; = "SmallFloatingConfirmPopup"


# instance fields
.field public final X:LZ6/l$i;

.field public Y:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public Z:Z

.field public a0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;


# direct methods
.method public constructor <init>(LZ6/l$i;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    const-string v1, "Confirm"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, LZ6/l;->X:LZ6/l$i;

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(LZ6/l$i;LZ6/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LZ6/l;-><init>(LZ6/l$i;)V

    return-void
.end method

.method public static synthetic p1(LZ6/l;Lcom/itsmagic/engine/Activities/Editor/Utils/E;)Lcom/itsmagic/engine/Activities/Editor/Utils/E;
    .locals 0

    iput-object p1, p0, LZ6/l;->a0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    return-object p1
.end method

.method public static synthetic q1(LZ6/l;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0

    iput-object p1, p0, LZ6/l;->Y:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p1
.end method

.method public static synthetic r1(LZ6/l;)LZ6/l$g;
    .locals 0

    invoke-virtual {p0}, LZ6/l;->u1()LZ6/l$g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s1(LZ6/l;)LZ6/l$i;
    .locals 0

    iget-object p0, p0, LZ6/l;->X:LZ6/l$i;

    return-object p0
.end method

.method public static synthetic t1(LZ6/l;Z)Z
    .locals 0

    iput-boolean p1, p0, LZ6/l;->Z:Z

    return p1
.end method

.method public static w1(LZ6/l$i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, LZ6/l;->x1(LZ6/l$i;LZ6/l$j;)V

    return-void
.end method

.method public static x1(LZ6/l$i;LZ6/l$j;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "showListener"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/16 v0, 0x44

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    invoke-static {v0}, LNc/b;->I(F)F

    move-result v0

    const/16 v1, 0x20

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    invoke-static {v1}, LNc/b;->I(F)F

    move-result v1

    new-instance v2, LZ6/l$b;

    invoke-direct {v2, p0, v0, v1, p1}, LZ6/l$b;-><init>(LZ6/l$i;FFLZ6/l$j;)V

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->s1(Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "listener can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static y1(Landroid/view/View;Lr4/a$e;LZ6/l$i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "anchorSide",
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, LZ6/l;->z1(Landroid/view/View;Lr4/a$e;LZ6/l$i;LZ6/l$j;)V

    return-void
.end method

.method public static z1(Landroid/view/View;Lr4/a$e;LZ6/l$i;LZ6/l$j;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "anchorSide",
            "listener",
            "showListener"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    const/16 v0, 0x44

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    invoke-static {v0}, LNc/b;->I(F)F

    move-result v5

    const/16 v0, 0x20

    invoke-static {v0}, LN7/c;->f(I)F

    move-result v0

    invoke-static {v0}, LNc/b;->I(F)F

    move-result v6

    new-instance v0, LZ6/l$a;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, LZ6/l$a;-><init>(LZ6/l$i;Landroid/view/View;Lr4/a$e;FFLZ6/l$j;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->s1(Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "listener can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Anchor can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c019e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LZ6/l$c;

    invoke-direct {v1, p0}, LZ6/l$c;-><init>(LZ6/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0900ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090151

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, LZ6/l$d;

    invoke-direct {v3, p0}, LZ6/l$d;-><init>(LZ6/l;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, LZ6/l$e;

    invoke-direct {v1, p0}, LZ6/l$e;-><init>(LZ6/l;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public G0()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    iget-object v0, p0, LZ6/l;->a0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    const/4 v0, 0x0

    iput-object v0, p0, LZ6/l;->a0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    :cond_0
    iget-boolean v0, p0, LZ6/l;->Z:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, LZ6/l;->X:LZ6/l$i;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, LZ6/l;->v1(Z)LZ6/l$g;

    move-result-object v1

    invoke-interface {v0, v1}, LZ6/l$i;->a(LZ6/l$g;)V

    return-void
.end method

.method public final u1()LZ6/l$g;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LZ6/l;->v1(Z)LZ6/l$g;

    move-result-object v0

    return-object v0
.end method

.method public final v1(Z)LZ6/l$g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDettached"
        }
    .end annotation

    new-instance v0, LZ6/l$f;

    invoke-direct {v0, p0, p1}, LZ6/l$f;-><init>(LZ6/l;Z)V

    return-object v0
.end method
