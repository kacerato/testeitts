.class public LZ6/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZ6/a$d;
    }
.end annotation


# static fields
.field public static final b0:Ljava/lang/String; = "FloatingBigTextPopup"


# instance fields
.field public final X:Ljava/lang/String;

.field public Y:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public final Z:Ljava/lang/String;

.field public a0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
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

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    .line 4
    iput-object p1, p0, LZ6/a;->X:Ljava/lang/String;

    .line 5
    iput-object p2, p0, LZ6/a;->Z:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;LZ6/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LZ6/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic p1(LZ6/a;Lcom/itsmagic/engine/Activities/Editor/Utils/E;)Lcom/itsmagic/engine/Activities/Editor/Utils/E;
    .locals 0

    iput-object p1, p0, LZ6/a;->a0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    return-object p1
.end method

.method public static synthetic q1(LZ6/a;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0

    iput-object p1, p0, LZ6/a;->Y:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p1
.end method

.method public static r1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "anchorSide",
            "tittle"
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, LZ6/a;->t1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;LZ6/a$d;)V

    return-void
.end method

.method public static s1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
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
            "description"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, LZ6/a;->t1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;LZ6/a$d;)V

    return-void
.end method

.method public static t1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;LZ6/a$d;)V
    .locals 9
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
            "showListener"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    const/high16 v2, 0x7f080000

    invoke-static {v0, p2, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->g(Landroid/content/Context;Ljava/lang/String;FI)[F

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v4, v4

    invoke-static {v0, p3, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->g(Landroid/content/Context;Ljava/lang/String;FI)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    float-to-int v1, v1

    aget v0, v0, v5

    float-to-int v0, v0

    const/16 v2, 0x20

    invoke-static {v2, v0}, LNc/b;->N(II)I

    move-result v0

    const/16 v2, 0x30

    invoke-static {v2, v1}, LNc/b;->N(II)I

    move-result v1

    const/16 v2, 0xfa

    const/16 v5, 0x60

    invoke-static {v5, v1, v2}, LNc/b;->F(III)I

    move-result v1

    add-int/lit8 v4, v4, 0x18

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x42

    invoke-static {v1}, LN7/c;->g(I)F

    move-result v5

    invoke-static {v4}, LN7/c;->f(I)F

    move-result v7

    new-instance v8, LZ6/a$b;

    move-object v0, v8

    move-object v1, p2

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    move v6, v7

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, LZ6/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lr4/a$e;FFLZ6/a$d;)V

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->s1(Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Anchor can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static u1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
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

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LZ6/a;->v1(Ljava/lang/String;Ljava/lang/String;LZ6/a$d;)V

    return-void
.end method

.method public static v1(Ljava/lang/String;Ljava/lang/String;LZ6/a$d;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "description",
            "showListener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, LZ6/a;->w1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 p1, 0x41800000    # 16.0f

    const/high16 v1, 0x7f080000

    invoke-static {v0, p0, p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->g(Landroid/content/Context;Ljava/lang/String;FI)[F

    move-result-object v2

    const/4 v4, 0x1

    aget v2, v2, v4

    float-to-int v2, v2

    invoke-static {v0, v3, p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->g(Landroid/content/Context;Ljava/lang/String;FI)[F

    move-result-object p1

    const/4 v0, 0x0

    aget v0, p1, v0

    float-to-int v0, v0

    aget p1, p1, v4

    float-to-int p1, p1

    const/16 v1, 0x20

    invoke-static {v1, p1}, LNc/b;->N(II)I

    move-result p1

    const/16 v1, 0x30

    invoke-static {v1, v0}, LNc/b;->N(II)I

    move-result v0

    const/16 v1, 0xfa

    const/16 v4, 0x60

    invoke-static {v4, v0, v1}, LNc/b;->F(III)I

    move-result v0

    add-int/lit8 v2, v2, 0x18

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x24

    invoke-static {v0}, LN7/c;->g(I)F

    move-result p1

    invoke-static {p1}, LNc/b;->I(F)F

    move-result v4

    invoke-static {v2}, LN7/c;->f(I)F

    move-result p1

    invoke-static {p1}, LNc/b;->I(F)F

    move-result v5

    new-instance p1, LZ6/a$a;

    move-object v1, p1

    move-object v2, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, LZ6/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;FFLZ6/a$d;)V

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->s1(Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;)V

    return-void
.end method

.method public static w1(Ljava/lang/String;)Ljava/lang/String;
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


# virtual methods
.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c003e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LZ6/a$c;

    invoke-direct {v1, p0}, LZ6/a$c;-><init>(LZ6/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0901a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, LZ6/a;->Z:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, LZ6/a;->Z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-object v0
.end method

.method public G0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    iget-object v0, p0, LZ6/a;->a0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    const/4 v0, 0x0

    iput-object v0, p0, LZ6/a;->a0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    :cond_0
    return-void
.end method
