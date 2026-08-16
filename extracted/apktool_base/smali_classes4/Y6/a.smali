.class public LY6/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LY6/a$f;
    }
.end annotation


# static fields
.field public static final g0:Ljava/lang/String; = "FloatingPopupMenu"

.field public static final h0:I = 0x2

.field public static final i0:I = 0x6

.field public static final j0:I = 0xe


# instance fields
.field public final X:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldd/b;",
            ">;"
        }
    .end annotation
.end field

.field public final Y:LY6/b;

.field public Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public final a0:Lr4/a$e;

.field public b0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public c0:Z

.field public d0:Z

.field public e0:Z

.field public f0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;


# direct methods
.method public constructor <init>(Ljava/util/List;LY6/b;Lr4/a$e;Lcom/itsmagic/engine/Activities/Editor/Utils/E;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "items",
            "listener",
            "anchorSide",
            "blockPanel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;",
            "LY6/b;",
            "Lr4/a$e;",
            "Lcom/itsmagic/engine/Activities/Editor/Utils/E;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, LY6/a;->b0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, LY6/a;->c0:Z

    .line 5
    iput-boolean v0, p0, LY6/a;->e0:Z

    .line 6
    iput-object p1, p0, LY6/a;->X:Ljava/util/List;

    .line 7
    iput-object p2, p0, LY6/a;->Y:LY6/b;

    .line 8
    iput-object p3, p0, LY6/a;->a0:Lr4/a$e;

    .line 9
    iput-object p4, p0, LY6/a;->f0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;LY6/b;Lr4/a$e;Lcom/itsmagic/engine/Activities/Editor/Utils/E;LY6/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, LY6/a;-><init>(Ljava/util/List;LY6/b;Lr4/a$e;Lcom/itsmagic/engine/Activities/Editor/Utils/E;)V

    return-void
.end method

.method public static A1(Ljava/util/List;)F
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;)F"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldd/b;

    iget-object v6, v5, Ldd/b;->a:Ldd/b$b;

    sget-object v7, Ldd/b$b;->Separator:Ldd/b$b;

    if-eq v6, v7, :cond_1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Ldd/b;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41600000    # 14.0f

    invoke-static {v6, v7, v8}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->f(Landroid/content/Context;Ljava/lang/String;F)[F

    move-result-object v6

    aget v6, v6, v1

    invoke-static {v6, v0}, LNc/b;->S0(FF)F

    move-result v0

    iget v6, v5, Ldd/b;->f:I

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eq v6, v7, :cond_0

    move v3, v8

    :cond_0
    iget-object v5, v5, Ldd/b;->a:Ldd/b$b;

    sget-object v6, Ldd/b$b;->Folder:Ldd/b$b;

    if-ne v5, v6, :cond_1

    move v3, v8

    move v4, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 p0, 0x1a

    if-eqz v3, :cond_3

    move v2, p0

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    if-eqz v4, :cond_4

    move v1, p0

    :cond_4
    float-to-int p0, v0

    invoke-static {p0}, LN7/c;->g(I)F

    move-result p0

    add-int/2addr v2, v1

    invoke-static {v2}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0xc

    invoke-static {v1}, LN7/c;->g(I)F

    move-result v1

    add-float/2addr p0, v0

    add-float/2addr p0, v1

    const v0, 0x3f733333    # 0.95f

    const v1, 0x3c23d70a    # 0.01f

    invoke-static {v1, p0, v0}, LNc/b;->E(FFF)F

    move-result p0

    return p0
.end method

.method public static B1(IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pixelX",
            "pixelY",
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, LY6/a;->D1(IILjava/util/List;Landroid/content/Context;LY6/b;)V

    return-void
.end method

.method public static C1(IILjava/util/List;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pixelX",
            "pixelY",
            "items",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, LY6/a;->D1(IILjava/util/List;Landroid/content/Context;LY6/b;)V

    return-void
.end method

.method public static D1(IILjava/util/List;Landroid/content/Context;LY6/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pixelX",
            "pixelY",
            "items",
            "context",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;",
            "Landroid/content/Context;",
            "LY6/b;",
            ")V"
        }
    .end annotation

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->P()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    int-to-float p0, p0

    div-float v5, p0, v1

    int-to-float p0, p1

    div-float v6, p0, v0

    new-instance p0, LY6/a$b;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, LY6/a$b;-><init>(Ljava/util/List;LY6/b;FFLandroid/content/Context;)V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->s1(Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;)V

    return-void
.end method

.method public static E1(Landroid/view/View;Lr4/a$e;Ldd/b;)V
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
            "item"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1, v0}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void
.end method

.method public static F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V
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
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lr4/a$e;",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, LY6/a;->G1(Landroid/view/View;Lr4/a$e;Ljava/util/List;LY6/b;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Anchor can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static G1(Landroid/view/View;Lr4/a$e;Ljava/util/List;LY6/b;)V
    .locals 7
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
            "items",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lr4/a$e;",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;",
            "LY6/b;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v5

    new-instance v6, LY6/a$a;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, LY6/a$a;-><init>(Ljava/util/List;LY6/b;Lr4/a$e;Landroid/view/View;Landroid/content/Context;)V

    invoke-static {v6}, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->s1(Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Anchor can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static H1(Landroid/view/View;Lr4/a$e;Ljava/util/List;LY6/b;LY6/a$f;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "anchorSide",
            "items",
            "listener",
            "showChildListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lr4/a$e;",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;",
            "LY6/b;",
            "LY6/a$f;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v5

    new-instance v7, LY6/a$c;

    move-object v0, v7

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    move-object v4, p0

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, LY6/a$c;-><init>(Ljava/util/List;LY6/b;Lr4/a$e;Landroid/view/View;Landroid/content/Context;LY6/a$f;)V

    invoke-static {v7}, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->s1(Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Anchor can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic p1(Ljava/util/List;)F
    .locals 0

    invoke-static {p0}, LY6/a;->A1(Ljava/util/List;)F

    move-result p0

    return p0
.end method

.method public static synthetic q1(Ljava/util/List;Landroid/content/Context;)F
    .locals 0

    invoke-static {p0, p1}, LY6/a;->z1(Ljava/util/List;Landroid/content/Context;)F

    move-result p0

    return p0
.end method

.method public static synthetic r1(LY6/a;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0

    iput-object p1, p0, LY6/a;->Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p1
.end method

.method public static synthetic s1(LY6/a;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0

    iget-object p0, p0, LY6/a;->b0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p0
.end method

.method public static synthetic t1(LY6/a;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0

    iput-object p1, p0, LY6/a;->b0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p1
.end method

.method public static synthetic u1(LY6/a;)Lr4/a$e;
    .locals 0

    iget-object p0, p0, LY6/a;->a0:Lr4/a$e;

    return-object p0
.end method

.method public static synthetic v1(LY6/a;Z)Z
    .locals 0

    iput-boolean p1, p0, LY6/a;->c0:Z

    return p1
.end method

.method public static synthetic w1(Landroid/view/View;Lr4/a$e;Ljava/util/List;LY6/b;LY6/a$f;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, LY6/a;->H1(Landroid/view/View;Lr4/a$e;Ljava/util/List;LY6/b;LY6/a$f;)V

    return-void
.end method

.method public static synthetic x1(LY6/a;)LY6/b;
    .locals 0

    iget-object p0, p0, LY6/a;->Y:LY6/b;

    return-object p0
.end method

.method public static z1(Ljava/util/List;Landroid/content/Context;)F
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "items",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;",
            "Landroid/content/Context;",
            ")F"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1, p1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2, p1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3, p1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4, p1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p1

    add-int/2addr p1, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldd/b;

    iget-object v6, v6, Ldd/b;->a:Ldd/b$b;

    sget-object v7, Ldd/b$b;->Separator:Ldd/b$b;

    if-ne v6, v7, :cond_0

    add-int/2addr v5, v1

    goto :goto_1

    :cond_0
    sget-object v7, Ldd/b$b;->Tittle:Ldd/b$b;

    if-ne v6, v7, :cond_1

    add-int/2addr v5, v2

    goto :goto_1

    :cond_1
    sget-object v7, Ldd/b$b;->ButtonElements:Ldd/b$b;

    if-ne v6, v7, :cond_2

    add-int/2addr v5, p1

    goto :goto_1

    :cond_2
    add-int/2addr v5, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_3

    add-int/2addr v5, v3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v0}, LN7/c;->i(I)F

    move-result p0

    invoke-static {v5}, LN7/c;->i(I)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0}, LNc/b;->E(FFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v2, 0x7f0c016f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    new-instance v3, LY6/a$d;

    invoke-direct {v3, v0}, LY6/a$d;-><init>(LY6/a;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v3, 0x7f090159

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, LNc/b;->k0(F)I

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, LNc/b;->k0(F)I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    iget-object v9, v0, LY6/a;->X:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, -0x1

    if-ge v6, v9, :cond_3

    iget-object v9, v0, LY6/a;->X:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldd/b;

    iget-object v11, v9, Ldd/b;->a:Ldd/b$b;

    sget-object v12, Ldd/b$b;->Separator:Ldd/b$b;

    const/4 v13, 0x1

    if-eq v11, v12, :cond_1

    iget v12, v9, Ldd/b;->f:I

    if-eq v12, v10, :cond_0

    move v7, v13

    :cond_0
    sget-object v10, Ldd/b$b;->Folder:Ldd/b$b;

    if-ne v11, v10, :cond_1

    move v7, v13

    move v8, v7

    :cond_1
    invoke-virtual {v9}, Ldd/b;->b()Ldd/b$a;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v9}, Ldd/b;->b()Ldd/b$a;

    move-result-object v9

    invoke-interface {v9}, Ldd/b$a;->hasIcon()Z

    move-result v9

    if-eqz v9, :cond_2

    move v7, v13

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_1
    iget-object v9, v0, LY6/a;->X:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_12

    iget-object v9, v0, LY6/a;->X:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldd/b;

    iget-object v11, v9, Ldd/b;->a:Ldd/b$b;

    sget-object v12, Ldd/b$b;->Separator:Ldd/b$b;

    if-ne v11, v12, :cond_4

    const v9, 0x7f0c016c

    invoke-virtual {v2, v9, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    iput v10, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v4, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->c(Landroid/view/View;Landroid/content/Context;)V

    goto/16 :goto_5

    :cond_4
    sget-object v12, Ldd/b$b;->ButtonElements:Ldd/b$b;

    if-ne v11, v12, :cond_7

    const v11, 0x7f0c016d

    invoke-virtual {v2, v11, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    iput v10, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v13, -0x2

    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v11, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v12, 0x7f0902b4

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    iget-object v13, v9, Ldd/b;->l:Ljava/util/List;

    if-eqz v13, :cond_5

    new-instance v13, LM7/h;

    invoke-direct {v13}, LM7/h;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, LM7/h;->k(Landroid/widget/LinearLayout;Landroid/content/Context;)V

    iget-object v12, v9, Ldd/b;->l:Ljava/util/List;

    invoke-virtual {v13, v12}, LM7/h;->g(Ljava/util/List;)V

    :cond_5
    const v12, 0x7f0903ff

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    iget-object v13, v9, Ldd/b;->m:Ljava/util/List;

    if-eqz v13, :cond_6

    new-instance v13, LM7/h;

    invoke-direct {v13}, LM7/h;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, LM7/h;->k(Landroid/widget/LinearLayout;Landroid/content/Context;)V

    iget-object v9, v9, Ldd/b;->m:Ljava/util/List;

    invoke-virtual {v13, v9}, LM7/h;->g(Ljava/util/List;)V

    :cond_6
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v11, v9}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->c(Landroid/view/View;Landroid/content/Context;)V

    goto/16 :goto_5

    :cond_7
    sget-object v12, Ldd/b$b;->Tittle:Ldd/b$b;

    const v13, 0x7f09033b

    if-ne v11, v12, :cond_9

    const v11, 0x7f0c016e

    invoke-virtual {v2, v11, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iget-object v13, v9, Ldd/b;->b:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v9, v9, Ldd/b;->g:I

    if-eq v9, v10, :cond_8

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v11, v9}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->c(Landroid/view/View;Landroid/content/Context;)V

    goto/16 :goto_5

    :cond_9
    iget-boolean v11, v9, Ldd/b;->j:Z

    if-eqz v11, :cond_a

    const v11, 0x7f0c016a

    goto :goto_2

    :cond_a
    const v11, 0x7f0c016b

    :goto_2
    invoke-virtual {v2, v11, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v12, 0x7f09029a

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iget-object v13, v9, Ldd/b;->b:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v13, v9, Ldd/b;->g:I

    if-eq v13, v10, :cond_b

    iget-boolean v14, v9, Ldd/b;->j:Z

    if-eqz v14, :cond_b

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b
    const v12, 0x7f09025a

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v13, 0x7f09025b

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    invoke-virtual {v9}, Ldd/b;->b()Ldd/b$a;

    move-result-object v14

    const/4 v15, 0x4

    if-eqz v14, :cond_c

    invoke-virtual {v9}, Ldd/b;->b()Ldd/b$a;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v14, v5, v12}, Ldd/b$a;->a(Landroid/content/Context;Landroid/widget/ImageView;)V

    goto :goto_3

    :cond_c
    iget v5, v9, Ldd/b;->f:I

    if-eq v5, v10, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v14

    invoke-static {v12, v5, v14}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto :goto_3

    :cond_d
    iget-object v5, v9, Ldd/b;->a:Ldd/b$b;

    sget-object v14, Ldd/b$b;->Folder:Ldd/b$b;

    if-ne v5, v14, :cond_e

    const v5, 0x7f070222

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v14

    invoke-static {v12, v5, v14}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    :cond_e
    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    iget-object v5, v9, Ldd/b;->a:Ldd/b$b;

    sget-object v14, Ldd/b$b;->Folder:Ldd/b$b;

    if-ne v5, v14, :cond_f

    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_f
    const/4 v5, 0x0

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    const/16 v14, 0x8

    if-nez v7, :cond_10

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_10
    if-nez v8, :cond_11

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_11
    new-instance v12, LY6/a$e;

    invoke-direct {v12, v0, v9}, LY6/a$e;-><init>(LY6/a;Ldd/b;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v11, v9}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->c(Landroid/view/View;Landroid/content/Context;)V

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_12
    return-object v1
.end method

.method public G0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    iget-object v0, p0, LY6/a;->f0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :cond_0
    iget-object v0, p0, LY6/a;->b0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V

    const/4 v0, 0x0

    iput-object v0, p0, LY6/a;->b0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    :cond_1
    return-void
.end method

.method public O0(Ln4/f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelIntent"
        }
    .end annotation

    instance-of v0, p1, Ln4/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :cond_0
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->O0(Ln4/f;)Z

    move-result p1

    return p1
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 5

    new-instance v0, LY6/a;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v2, p0, LY6/a;->X:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, LY6/a;->Y:LY6/b;

    iget-object v3, p0, LY6/a;->a0:Lr4/a$e;

    iget-object v4, p0, LY6/a;->f0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    invoke-direct {v0, v1, v2, v3, v4}, LY6/a;-><init>(Ljava/util/List;LY6/b;Lr4/a$e;Lcom/itsmagic/engine/Activities/Editor/Utils/E;)V

    return-object v0
.end method

.method public m1()V
    .locals 4

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->m1()V

    iget-boolean v0, p0, LY6/a;->c0:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, LY6/a;->d0:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, LY6/a;->d0:Z

    move v0, v1

    :goto_0
    invoke-static {}, Lrc/a;->L()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-static {v0}, Lrc/a;->n(I)Ltc/h;

    move-result-object v2

    invoke-virtual {v2}, Ltc/h;->k()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ltc/h;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean v1, p0, LY6/a;->d0:Z

    :cond_2
    iget-boolean v0, p0, LY6/a;->d0:Z

    if-eqz v0, :cond_6

    :goto_2
    invoke-static {}, Lrc/a;->L()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-static {v1}, Lrc/a;->n(I)Ltc/h;

    move-result-object v0

    iget-boolean v2, p0, LY6/a;->e0:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ltc/h;->k()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ltc/h;->q()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-boolean v2, v0, Ltc/h;->e:Z

    if-nez v2, :cond_5

    invoke-virtual {p0, v0}, LY6/a;->y1(Ltc/h;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ltc/h;->k()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, v0, Ltc/h;->e:Z

    if-nez v2, :cond_5

    invoke-virtual {p0, v0}, LY6/a;->y1(Ltc/h;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method public final y1(Ltc/h;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LY6/a;->b0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LY6/a;->b0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v0

    check-cast v0, LY6/a;

    invoke-virtual {v0, p1}, LY6/a;->y1(Ltc/h;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u0(Ltc/h;)Z

    move-result p1

    return p1
.end method
