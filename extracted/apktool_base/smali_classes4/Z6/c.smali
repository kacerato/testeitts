.class public LZ6/c;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZ6/c$i;,
        LZ6/c$g;,
        LZ6/c$j;,
        LZ6/c$h;
    }
.end annotation


# static fields
.field public static final d0:Ljava/lang/String; = "FloatingConfirmPopup"


# instance fields
.field public final X:Ljava/lang/String;

.field public final Y:LZ6/c$i;

.field public Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public final a0:Ljava/lang/String;

.field public b0:Z

.field public c0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;LZ6/c$i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "description",
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, LZ6/c;->X:Ljava/lang/String;

    .line 4
    iput-object p2, p0, LZ6/c;->a0:Ljava/lang/String;

    .line 5
    iput-object p3, p0, LZ6/c;->Y:LZ6/c$i;

    if-eqz p3, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "listener can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;LZ6/c$i;LZ6/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, LZ6/c;-><init>(Ljava/lang/String;Ljava/lang/String;LZ6/c$i;)V

    return-void
.end method

.method public static A1(Ljava/lang/String;Ljava/lang/String;LZ6/c$i;LZ6/c$j;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "description",
            "listener",
            "showListener"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, LZ6/c;->B1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 p1, 0x41600000    # 14.0f

    invoke-static {v0, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->f(Landroid/content/Context;Ljava/lang/String;F)[F

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->f(Landroid/content/Context;Ljava/lang/String;F)[F

    move-result-object p1

    const/4 v0, 0x0

    aget v0, p1, v0

    float-to-int v0, v0

    aget p1, p1, v2

    float-to-int p1, p1

    const/16 v2, 0x20

    invoke-static {v2, p1}, LNc/b;->N(II)I

    move-result p1

    const/16 v2, 0xcc

    invoke-static {v2, v0}, LNc/b;->N(II)I

    move-result v0

    const/16 v2, 0xfa

    const/16 v4, 0x60

    invoke-static {v4, v0, v2}, LNc/b;->F(III)I

    move-result v7

    add-int/lit8 v1, v1, 0x52

    add-int v8, v1, p1

    invoke-static {v7}, LN7/c;->g(I)F

    move-result p1

    invoke-static {p1}, LNc/b;->I(F)F

    move-result v5

    invoke-static {v8}, LN7/c;->f(I)F

    move-result p1

    invoke-static {p1}, LNc/b;->I(F)F

    move-result v6

    new-instance p1, LZ6/c$b;

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    move-object v9, p3

    invoke-direct/range {v1 .. v9}, LZ6/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;LZ6/c$i;FFIILZ6/c$j;)V

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->s1(Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "listener can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static B1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    const-string v0, "{"

    :try_start_0
    const-string v1, "\"status\":\"Error\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    invoke-static {v0}, Lhd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "info"

    invoke-static {v0, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object p0
.end method

.method public static synthetic p1(LZ6/c;Lcom/itsmagic/engine/Activities/Editor/Utils/E;)Lcom/itsmagic/engine/Activities/Editor/Utils/E;
    .locals 0

    iput-object p1, p0, LZ6/c;->c0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    return-object p1
.end method

.method public static synthetic q1(LZ6/c;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0

    iput-object p1, p0, LZ6/c;->Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p1
.end method

.method public static synthetic r1(LZ6/c;Z)LZ6/c$g;
    .locals 0

    invoke-virtual {p0, p1}, LZ6/c;->u1(Z)LZ6/c$g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s1(LZ6/c;)LZ6/c$i;
    .locals 0

    iget-object p0, p0, LZ6/c;->Y:LZ6/c$i;

    return-object p0
.end method

.method public static synthetic t1(LZ6/c;Z)Z
    .locals 0

    iput-boolean p1, p0, LZ6/c;->b0:Z

    return p1
.end method

.method public static v1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;LZ6/c$i;)V
    .locals 6
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
            "tittle",
            "listener"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, LZ6/c;->x1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;LZ6/c$i;LZ6/c$j;)V

    return-void
.end method

.method public static w1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;LZ6/c$i;)V
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
            "anchor",
            "anchorSide",
            "tittle",
            "description",
            "listener"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, LZ6/c;->x1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;LZ6/c$i;LZ6/c$j;)V

    return-void
.end method

.method public static x1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;LZ6/c$i;LZ6/c$j;)V
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
            "anchor",
            "anchorSide",
            "tittle",
            "description",
            "listener",
            "showListener"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p4, :cond_0

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {p3}, LZ6/c;->B1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v1, 0x41600000    # 14.0f

    move-object v3, p2

    invoke-static {v0, p2, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->f(Landroid/content/Context;Ljava/lang/String;F)[F

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v4, v4

    invoke-static {v0, v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->f(Landroid/content/Context;Ljava/lang/String;F)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    float-to-int v1, v1

    aget v0, v0, v5

    float-to-int v0, v0

    const/16 v5, 0x20

    invoke-static {v5, v0}, LNc/b;->N(II)I

    move-result v0

    const/16 v5, 0xcc

    invoke-static {v5, v1}, LNc/b;->N(II)I

    move-result v1

    const/16 v5, 0xfa

    const/16 v6, 0x60

    invoke-static {v6, v1, v5}, LNc/b;->F(III)I

    move-result v8

    add-int/lit8 v4, v4, 0x52

    add-int v9, v4, v0

    invoke-static {v8}, LN7/c;->g(I)F

    move-result v0

    invoke-static {v0}, LNc/b;->I(F)F

    move-result v6

    invoke-static {v9}, LN7/c;->f(I)F

    move-result v0

    invoke-static {v0}, LNc/b;->I(F)F

    move-result v7

    new-instance v11, LZ6/c$a;

    move-object v0, v11

    move-object v1, p2

    move-object/from16 v3, p4

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, LZ6/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;LZ6/c$i;Landroid/view/View;Lr4/a$e;FFIILZ6/c$j;)V

    invoke-static {v11}, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->s1(Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;)V

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
.end method

.method public static y1(Ljava/lang/String;LZ6/c$i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, LZ6/c;->A1(Ljava/lang/String;Ljava/lang/String;LZ6/c$i;LZ6/c$j;)V

    return-void
.end method

.method public static z1(Ljava/lang/String;Ljava/lang/String;LZ6/c$i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "description",
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, LZ6/c;->A1(Ljava/lang/String;Ljava/lang/String;LZ6/c$i;LZ6/c$j;)V

    return-void
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 8

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c005f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LZ6/c$c;

    invoke-direct {v1, p0}, LZ6/c$c;-><init>(LZ6/c;)V

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

    iget-object v5, p0, LZ6/c;->X:Ljava/lang/String;

    const/16 v6, 0x8

    const-string v7, ""

    if-eqz v5, :cond_1

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, p0, LZ6/c;->X:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, LZ6/c;->a0:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, LZ6/c;->a0:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    new-instance v1, LZ6/c$d;

    invoke-direct {v1, p0}, LZ6/c$d;-><init>(LZ6/c;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, LZ6/c$e;

    invoke-direct {v1, p0}, LZ6/c$e;-><init>(LZ6/c;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public G0()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    iget-object v0, p0, LZ6/c;->c0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    const/4 v0, 0x0

    iput-object v0, p0, LZ6/c;->c0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    :cond_0
    iget-boolean v0, p0, LZ6/c;->b0:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, LZ6/c;->Y:LZ6/c$i;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, LZ6/c;->u1(Z)LZ6/c$g;

    move-result-object v1

    invoke-interface {v0, v1}, LZ6/c$i;->b(LZ6/c$g;)V

    return-void
.end method

.method public final u1(Z)LZ6/c$g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDettached"
        }
    .end annotation

    new-instance v0, LZ6/c$f;

    invoke-direct {v0, p0, p1}, LZ6/c$f;-><init>(LZ6/c;Z)V

    return-object v0
.end method
