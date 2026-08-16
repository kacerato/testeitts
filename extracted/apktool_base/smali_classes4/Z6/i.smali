.class public LZ6/i;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZ6/i$h;,
        LZ6/i$f;,
        LZ6/i$i;,
        LZ6/i$g;
    }
.end annotation


# static fields
.field public static final d0:Ljava/lang/String; = "FloatingWarningPopup"


# instance fields
.field public final X:Ljava/lang/String;

.field public final Y:LZ6/i$h;

.field public Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public final a0:Ljava/lang/String;

.field public b0:Z

.field public c0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;)V
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
    iput-object p1, p0, LZ6/i;->X:Ljava/lang/String;

    .line 4
    iput-object p2, p0, LZ6/i;->a0:Ljava/lang/String;

    .line 5
    iput-object p3, p0, LZ6/i;->Y:LZ6/i$h;

    if-eqz p3, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "listener can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;LZ6/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, LZ6/i;-><init>(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;)V

    return-void
.end method

.method public static A1(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;Z)V
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
            "description",
            "listener",
            "hideButton"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, LZ6/i;->C1(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;ZZLZ6/i$i;)V

    return-void
.end method

.method public static B1(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;ZZ)V
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
            "listener",
            "hideButton",
            "opaque"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, LZ6/i;->C1(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;ZZLZ6/i$i;)V

    return-void
.end method

.method public static C1(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;ZZLZ6/i$i;)V
    .locals 13
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
            "listener",
            "hideButton",
            "opaque",
            "showListener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    if-nez p2, :cond_0

    new-instance v1, LZ6/i$a;

    invoke-direct {v1}, LZ6/i$a;-><init>()V

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p2

    :goto_0
    invoke-static {p1}, LZ6/i;->F1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez p3, :cond_1

    const/16 v1, 0x2a

    goto :goto_1

    :cond_1
    const/16 v1, 0xc

    :goto_1
    const/high16 v2, 0x41600000    # 14.0f

    const v3, 0x7f080006

    move-object v6, p0

    invoke-static {v0, p0, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->g(Landroid/content/Context;Ljava/lang/String;FI)[F

    move-result-object v7

    const/4 v8, 0x1

    aget v7, v7, v8

    float-to-int v7, v7

    invoke-static {v0, v4, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->g(Landroid/content/Context;Ljava/lang/String;FI)[F

    move-result-object v0

    const/4 v2, 0x0

    aget v2, v0, v2

    float-to-int v2, v2

    aget v0, v0, v8

    float-to-int v0, v0

    const/16 v3, 0x20

    invoke-static {v3, v0}, LNc/b;->N(II)I

    move-result v0

    const/16 v3, 0xa0

    invoke-static {v3, v2}, LNc/b;->N(II)I

    move-result v2

    const/16 v3, 0xfa

    const/16 v8, 0x60

    invoke-static {v8, v2, v3}, LNc/b;->F(III)I

    move-result v10

    add-int/lit8 v7, v7, 0x18

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, 0x10

    add-int v11, v7, v1

    invoke-static {v10}, LN7/c;->g(I)F

    move-result v0

    invoke-static {v0}, LNc/b;->I(F)F

    move-result v8

    invoke-static {v11}, LN7/c;->f(I)F

    move-result v0

    invoke-static {v0}, LNc/b;->I(F)F

    move-result v9

    new-instance v0, LZ6/i$b;

    move-object v2, v0

    move-object v3, p0

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v12, p5

    invoke-direct/range {v2 .. v12}, LZ6/i$b;-><init>(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;ZZFFIILZ6/i$i;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->s1(Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;)V

    return-void
.end method

.method public static D1(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "description",
            "hideButton"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, LZ6/i;->C1(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;ZZLZ6/i$i;)V

    return-void
.end method

.method public static E1(Ljava/lang/String;Ljava/lang/String;ZZ)V
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
            "description",
            "hideButton",
            "opaque"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, LZ6/i;->C1(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;ZZLZ6/i$i;)V

    return-void
.end method

.method private static F1(Ljava/lang/String;)Ljava/lang/String;
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

.method public static synthetic p1(LZ6/i;Lcom/itsmagic/engine/Activities/Editor/Utils/E;)Lcom/itsmagic/engine/Activities/Editor/Utils/E;
    .locals 0

    iput-object p1, p0, LZ6/i;->c0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    return-object p1
.end method

.method public static synthetic q1(LZ6/i;Z)Z
    .locals 0

    iput-boolean p1, p0, LZ6/i;->b0:Z

    return p1
.end method

.method public static synthetic r1(LZ6/i;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0

    iput-object p1, p0, LZ6/i;->Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p1
.end method

.method public static synthetic s1(LZ6/i;Z)LZ6/i$f;
    .locals 0

    invoke-virtual {p0, p1}, LZ6/i;->u1(Z)LZ6/i$f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t1(LZ6/i;)LZ6/i$h;
    .locals 0

    iget-object p0, p0, LZ6/i;->Y:LZ6/i$h;

    return-object p0
.end method

.method public static v1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;LZ6/i$h;)V
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

    const-string v3, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, LZ6/i;->x1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;LZ6/i$h;LZ6/i$i;)V

    return-void
.end method

.method public static w1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;LZ6/i$h;)V
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

    invoke-static/range {v0 .. v5}, LZ6/i;->x1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;LZ6/i$h;LZ6/i$i;)V

    return-void
.end method

.method public static x1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;LZ6/i$h;LZ6/i$i;)V
    .locals 6
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

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, LZ6/i;->C1(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;ZZLZ6/i$i;)V

    return-void
.end method

.method public static y1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "description"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, LZ6/i;->C1(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;ZZLZ6/i$i;)V

    return-void
.end method

.method public static z1(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;)V
    .locals 6
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

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, LZ6/i;->C1(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;ZZLZ6/i$i;)V

    return-void
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c01d5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LZ6/i$c;

    invoke-direct {v1, p0}, LZ6/i$c;-><init>(LZ6/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f090544

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090151

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0901a2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, LZ6/i;->X:Ljava/lang/String;

    const/16 v5, 0x8

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, LZ6/i;->X:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, LZ6/i;->a0:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, LZ6/i;->a0:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-boolean v1, p0, LZ6/i;->b0:Z

    if-nez v1, :cond_4

    new-instance v1, LZ6/i$d;

    invoke-direct {v1, p0}, LZ6/i$d;-><init>(LZ6/i;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-object v0
.end method

.method public G0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    iget-object v0, p0, LZ6/i;->c0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    const/4 v0, 0x0

    iput-object v0, p0, LZ6/i;->c0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    :cond_0
    return-void
.end method

.method public final u1(Z)LZ6/i$f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDettached"
        }
    .end annotation

    new-instance v0, LZ6/i$e;

    invoke-direct {v0, p0, p1}, LZ6/i$e;-><init>(LZ6/i;Z)V

    return-object v0
.end method
