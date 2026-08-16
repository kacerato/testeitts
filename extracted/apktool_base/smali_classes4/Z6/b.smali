.class public LZ6/b;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZ6/b$i;,
        LZ6/b$g;,
        LZ6/b$j;,
        LZ6/b$h;
    }
.end annotation


# static fields
.field public static final f0:Ljava/lang/String; = "FloatingConfirmCheckBoxPopup"


# instance fields
.field public final X:Ljava/lang/String;

.field public final Y:LZ6/b$i;

.field public Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public final a0:Ljava/lang/String;

.field public b0:Z

.field public final c0:Ljava/lang/String;

.field public final d0:Z

.field public e0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLZ6/b$i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "description",
            "checkBoxText",
            "checkboxChecked",
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iput-object p1, p0, LZ6/b;->X:Ljava/lang/String;

    .line 5
    iput-object p2, p0, LZ6/b;->a0:Ljava/lang/String;

    .line 6
    iput-object p5, p0, LZ6/b;->Y:LZ6/b$i;

    .line 7
    iput-object p3, p0, LZ6/b;->c0:Ljava/lang/String;

    .line 8
    iput-boolean p4, p0, LZ6/b;->d0:Z

    if-eqz p5, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "listener can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "checkBoxText can\'t be empty or null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLZ6/b$i;LZ6/b$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, LZ6/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLZ6/b$i;)V

    return-void
.end method

.method public static A1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLZ6/b$i;LZ6/b$j;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "description",
            "checkBoxText",
            "checkboxChecked",
            "listener",
            "showListener"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    move-object v2, p0

    invoke-static {v0, p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->f(Landroid/content/Context;Ljava/lang/String;F)[F

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-int v3, v3

    move-object v5, p1

    invoke-static {v0, p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->f(Landroid/content/Context;Ljava/lang/String;F)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    float-to-int v1, v1

    aget v0, v0, v4

    float-to-int v0, v0

    const/16 v4, 0x20

    invoke-static {v4, v0}, LNc/b;->N(II)I

    move-result v0

    const/16 v6, 0xcc

    invoke-static {v6, v1}, LNc/b;->N(II)I

    move-result v8

    add-int/lit8 v3, v3, 0x52

    add-int/2addr v3, v0

    add-int/lit8 v9, v3, 0x20

    invoke-static {v8}, LN7/c;->g(I)F

    move-result v0

    invoke-static {v0}, LNc/b;->I(F)F

    move-result v6

    invoke-static {v9}, LN7/c;->f(I)F

    move-result v0

    invoke-static {v0}, LNc/b;->I(F)F

    move-result v7

    new-instance v11, LZ6/b$b;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, LZ6/b$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLZ6/b$i;FFIILZ6/b$j;)V

    invoke-static {v11}, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->s1(Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "checkBoxText can\'t be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static B1(Ljava/lang/String;Ljava/lang/String;ZLZ6/b$i;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "checkBoxText",
            "checkboxChecked",
            "listener"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, LZ6/b;->A1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLZ6/b$i;LZ6/b$j;)V

    return-void
.end method

.method public static synthetic p1(LZ6/b;Lcom/itsmagic/engine/Activities/Editor/Utils/E;)Lcom/itsmagic/engine/Activities/Editor/Utils/E;
    .locals 0

    iput-object p1, p0, LZ6/b;->e0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    return-object p1
.end method

.method public static synthetic q1(LZ6/b;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0

    iput-object p1, p0, LZ6/b;->Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p1
.end method

.method public static synthetic r1(LZ6/b;)LZ6/b$g;
    .locals 0

    invoke-virtual {p0}, LZ6/b;->u1()LZ6/b$g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s1(LZ6/b;)LZ6/b$i;
    .locals 0

    iget-object p0, p0, LZ6/b;->Y:LZ6/b$i;

    return-object p0
.end method

.method public static synthetic t1(LZ6/b;Z)Z
    .locals 0

    iput-boolean p1, p0, LZ6/b;->b0:Z

    return p1
.end method

.method public static w1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLZ6/b$i;)V
    .locals 8
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
            "tittle",
            "description",
            "checkBoxText",
            "checkboxChecked",
            "listener"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, LZ6/b;->x1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLZ6/b$i;LZ6/b$j;)V

    return-void
.end method

.method public static x1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLZ6/b$i;LZ6/b$j;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "tittle",
            "description",
            "checkBoxText",
            "checkboxChecked",
            "listener",
            "showListener"
        }
    .end annotation

    if-eqz p4, :cond_2

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    if-eqz p6, :cond_0

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    const v2, 0x7f080006

    move-object/from16 v3, p2

    invoke-static {v0, v3, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->g(Landroid/content/Context;Ljava/lang/String;FI)[F

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v4, v4

    move-object/from16 v6, p3

    invoke-static {v0, v6, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->g(Landroid/content/Context;Ljava/lang/String;FI)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    float-to-int v1, v1

    aget v0, v0, v5

    float-to-int v0, v0

    const/16 v2, 0x20

    invoke-static {v2, v0}, LNc/b;->N(II)I

    move-result v0

    const/16 v5, 0xcc

    invoke-static {v5, v1}, LNc/b;->N(II)I

    move-result v1

    const/16 v5, 0xfa

    const/16 v7, 0x60

    invoke-static {v7, v1, v5}, LNc/b;->F(III)I

    move-result v10

    add-int/lit8 v4, v4, 0x52

    add-int/2addr v4, v0

    add-int/lit8 v11, v4, 0x20

    invoke-static {v10}, LN7/c;->g(I)F

    move-result v0

    invoke-static {v0}, LNc/b;->I(F)F

    move-result v8

    invoke-static {v11}, LN7/c;->f(I)F

    move-result v0

    invoke-static {v0}, LNc/b;->I(F)F

    move-result v9

    new-instance v13, LZ6/b$a;

    move-object v0, v13

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v12, p7

    invoke-direct/range {v0 .. v12}, LZ6/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLZ6/b$i;Landroid/view/View;Lr4/a$e;FFIILZ6/b$j;)V

    invoke-static {v13}, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->s1(Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Anchor can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "checkBoxText can\'t be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static y1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;ZLZ6/b$i;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "tittle",
            "checkBoxText",
            "checkboxChecked",
            "listener"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v7}, LZ6/b;->x1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLZ6/b$i;LZ6/b$j;)V

    return-void
.end method

.method public static z1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLZ6/b$i;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "description",
            "checkBoxText",
            "checkboxChecked",
            "listener"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, LZ6/b;->A1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLZ6/b$i;LZ6/b$j;)V

    return-void
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 9

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c005b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LZ6/b$c;

    invoke-direct {v1, p0}, LZ6/b$c;-><init>(LZ6/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f090544

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0900ff

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f090151

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f0901a2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090111

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iget-boolean v6, p0, LZ6/b;->d0:Z

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v6, p0, LZ6/b;->X:Ljava/lang/String;

    const/16 v7, 0x8

    const-string v8, ""

    if-eqz v6, :cond_1

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v6, p0, LZ6/b;->X:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, LZ6/b;->a0:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, LZ6/b;->a0:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v1, p0, LZ6/b;->c0:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, LZ6/b$d;

    invoke-direct {v1, p0}, LZ6/b$d;-><init>(LZ6/b;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, LZ6/b$e;

    invoke-direct {v1, p0, v5}, LZ6/b$e;-><init>(LZ6/b;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public G0()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    iget-object v0, p0, LZ6/b;->e0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    const/4 v0, 0x0

    iput-object v0, p0, LZ6/b;->e0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    :cond_0
    iget-boolean v0, p0, LZ6/b;->b0:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, LZ6/b;->Y:LZ6/b$i;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, LZ6/b;->v1(Z)LZ6/b$g;

    move-result-object v1

    invoke-interface {v0, v1}, LZ6/b$i;->b(LZ6/b$g;)V

    return-void
.end method

.method public final u1()LZ6/b$g;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LZ6/b;->v1(Z)LZ6/b$g;

    move-result-object v0

    return-object v0
.end method

.method public final v1(Z)LZ6/b$g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDettached"
        }
    .end annotation

    new-instance v0, LZ6/b$f;

    invoke-direct {v0, p0, p1}, LZ6/b$f;-><init>(LZ6/b;Z)V

    return-object v0
.end method
