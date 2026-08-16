.class public LK7/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LK7/a$f;
    }
.end annotation


# static fields
.field public static final f0:Ljava/lang/String; = "FilterSearchView"


# instance fields
.field public X:Landroid/widget/TextView;

.field public Y:Landroid/widget/RadioGroup;

.field public Z:I

.field public final a0:LU5/a;

.field public b0:LK7/a$f;

.field public c0:LZ5/b;

.field public d0:LZ5/b;

.field public final e0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LAc/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LU5/a;LK7/a$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "options",
            "listener"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>()V

    new-instance v0, LK7/a$a;

    invoke-direct {v0, p0}, LK7/a$a;-><init>(LK7/a;)V

    iput-object v0, p0, LK7/a;->e0:Ljava/util/List;

    if-eqz p2, :cond_0

    iput-object p1, p0, LK7/a;->a0:LU5/a;

    iput-object p2, p0, LK7/a;->b0:LK7/a$f;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "listener can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic p1(LK7/a;)I
    .locals 0

    iget p0, p0, LK7/a;->Z:I

    return p0
.end method

.method public static synthetic q1(LK7/a;I)I
    .locals 0

    iput p1, p0, LK7/a;->Z:I

    return p1
.end method

.method public static synthetic r1(LK7/a;)LU5/a;
    .locals 0

    iget-object p0, p0, LK7/a;->a0:LU5/a;

    return-object p0
.end method

.method public static synthetic s1(LK7/a;)LK7/a$f;
    .locals 0

    iget-object p0, p0, LK7/a;->b0:LK7/a$f;

    return-object p0
.end method

.method public static synthetic t1(LK7/a;)LZ5/b;
    .locals 0

    iget-object p0, p0, LK7/a;->c0:LZ5/b;

    return-object p0
.end method

.method public static synthetic u1(LK7/a;)LZ5/b;
    .locals 0

    iget-object p0, p0, LK7/a;->d0:LZ5/b;

    return-object p0
.end method

.method public static w1(LU5/a;Landroid/view/View;Lr4/a$e;LK7/a$f;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filter",
            "anchor",
            "anchorSide",
            "listener"
        }
    .end annotation

    if-eqz p3, :cond_0

    new-instance v0, LK7/a;

    invoke-direct {v0, p0, p3}, LK7/a;-><init>(LU5/a;LK7/a$f;)V

    const/16 p0, 0xfa

    invoke-static {p0}, LN7/c;->g(I)F

    move-result p3

    invoke-static {p0}, LN7/c;->f(I)F

    move-result p0

    invoke-static {p1, v0, p2, p3, p0}, Lr4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "listener can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 8

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c010a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LK7/a$b;

    invoke-direct {v1, p0}, LK7/a$b;-><init>(LK7/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f09020e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f09047b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v4, 0x7f09047c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_FILTER:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_SORT_BY:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, LK7/a;->Y:Landroid/widget/RadioGroup;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, LK7/a;->Y:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    iget-object v5, p0, LK7/a;->e0:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v6, 0x7f0c010b

    invoke-virtual {v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iget-object v7, p0, LK7/a;->e0:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LAc/b;

    invoke-virtual {v7}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v4}, Landroid/view/View;->setId(I)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v5, p0, LK7/a;->Y:Landroid/widget/RadioGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, LK7/a;->Y:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {}, LU5/a$a;->values()[LU5/a$a;

    move-result-object v1

    iget-object v2, p0, LK7/a;->a0:LU5/a;

    invoke-virtual {v2}, LU5/a;->f()LU5/a$a;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, LK7/a;->Y:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LK7/a;->Y:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->check(I)V

    :cond_1
    iget-object v1, p0, LK7/a;->Y:Landroid/widget/RadioGroup;

    new-instance v2, LK7/a$c;

    invoke-direct {v2, p0}, LK7/a$c;-><init>(LK7/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    new-instance v1, LZ5/b;

    const v2, 0x7f090370

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-direct {v1, v2}, LZ5/b;-><init>(Landroid/widget/LinearLayout;)V

    iput-object v1, p0, LK7/a;->c0:LZ5/b;

    new-instance v1, LZ5/b;

    const v2, 0x7f090371

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-direct {v1, v2}, LZ5/b;-><init>(Landroid/widget/LinearLayout;)V

    iput-object v1, p0, LK7/a;->d0:LZ5/b;

    iget-object v1, p0, LK7/a;->c0:LZ5/b;

    new-instance v2, LK7/a$d;

    invoke-direct {v2, p0}, LK7/a$d;-><init>(LK7/a;)V

    invoke-virtual {v1, v2}, LZ5/b;->e(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, LK7/a;->c0:LZ5/b;

    iget-object v2, p0, LK7/a;->a0:LU5/a;

    invoke-virtual {v2}, LU5/a;->k()Z

    move-result v2

    invoke-virtual {v1, v2}, LZ5/b;->d(Z)V

    iget-object v1, p0, LK7/a;->d0:LZ5/b;

    new-instance v2, LK7/a$e;

    invoke-direct {v2, p0}, LK7/a$e;-><init>(LK7/a;)V

    invoke-virtual {v1, v2}, LZ5/b;->e(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, LK7/a;->d0:LZ5/b;

    iget-object v2, p0, LK7/a;->a0:LU5/a;

    invoke-virtual {v2}, LU5/a;->l()Z

    move-result v2

    invoke-virtual {v1, v2}, LZ5/b;->d(Z)V

    return-object v0
.end method

.method public final v1()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
