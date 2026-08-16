.class public LZ6/f;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZ6/f$g;,
        LZ6/f$h;
    }
.end annotation


# static fields
.field public static final d0:Ljava/lang/String; = "FloatingInputTextPopup"


# instance fields
.field public final X:Ljava/lang/String;

.field public final Y:LZ6/f$g;

.field public Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public final a0:Ljava/lang/String;

.field public b0:Lcom/google/android/material/textfield/TextInputEditText;

.field public c0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;LZ6/f$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "defaultText",
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, LZ6/f;->X:Ljava/lang/String;

    iput-object p2, p0, LZ6/f;->a0:Ljava/lang/String;

    iput-object p3, p0, LZ6/f;->Y:LZ6/f$g;

    if-eqz p3, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "listener can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic p1(LZ6/f;Lcom/itsmagic/engine/Activities/Editor/Utils/E;)Lcom/itsmagic/engine/Activities/Editor/Utils/E;
    .locals 0

    iput-object p1, p0, LZ6/f;->c0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    return-object p1
.end method

.method public static synthetic q1(LZ6/f;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0

    iput-object p1, p0, LZ6/f;->Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p1
.end method

.method public static synthetic r1(LZ6/f;)V
    .locals 0

    invoke-direct {p0}, LZ6/f;->t1()V

    return-void
.end method

.method public static synthetic s1(LZ6/f;)LZ6/f$g;
    .locals 0

    iget-object p0, p0, LZ6/f;->Y:LZ6/f$g;

    return-object p0
.end method

.method private t1()V
    .locals 2

    invoke-static {}, LN7/c;->e()V

    iget-object v0, p0, LZ6/f;->b0:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LZ6/f;->b0:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, LZ6/f;->Y:LZ6/f$g;

    invoke-interface {v1, v0}, LZ6/f$g;->c(Ljava/lang/String;)V

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s0(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-void
.end method

.method public static u1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;LZ6/f$g;)V
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

    invoke-static/range {v0 .. v5}, LZ6/f;->w1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;LZ6/f$g;LZ6/f$h;)V

    return-void
.end method

.method public static v1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;LZ6/f$g;)V
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
            "defaultText",
            "listener"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, LZ6/f;->w1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;LZ6/f$g;LZ6/f$h;)V

    return-void
.end method

.method public static w1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;LZ6/f$g;LZ6/f$h;)V
    .locals 11
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
            "defaultText",
            "listener",
            "showListener"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p4, :cond_0

    const/16 v0, 0xdc

    const/16 v1, 0xfa

    const/16 v2, 0x60

    invoke-static {v2, v0, v1}, LNc/b;->F(III)I

    move-result v8

    invoke-static {v8}, LN7/c;->g(I)F

    move-result v6

    const/16 v0, 0x8c

    invoke-static {v0}, LN7/c;->f(I)F

    move-result v7

    new-instance v10, LZ6/f$a;

    move-object v0, v10

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, LZ6/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;LZ6/f$g;Landroid/view/View;Lr4/a$e;FFILZ6/f$h;)V

    invoke-static {v10}, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->s1(Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;)V

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

.method public static x1(Ljava/lang/String;Ljava/lang/String;LZ6/f$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "defaultText",
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, LZ6/f;->y1(Ljava/lang/String;Ljava/lang/String;LZ6/f$g;LZ6/f$h;)V

    return-void
.end method

.method public static y1(Ljava/lang/String;Ljava/lang/String;LZ6/f$g;LZ6/f$h;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "defaultText",
            "listener",
            "showListener"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/16 v0, 0xdc

    const/16 v1, 0xfa

    const/16 v2, 0x60

    invoke-static {v2, v0, v1}, LNc/b;->F(III)I

    move-result v9

    invoke-static {v9}, LN7/c;->g(I)F

    move-result v7

    const/16 v0, 0x82

    invoke-static {v0}, LN7/c;->f(I)F

    move-result v8

    new-instance v0, LZ6/f$b;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v10, p3

    invoke-direct/range {v3 .. v10}, LZ6/f$b;-><init>(Ljava/lang/String;Ljava/lang/String;LZ6/f$g;FFILZ6/f$h;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->s1(Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "listener can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c01bd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LZ6/f$c;

    invoke-direct {v1, p0}, LZ6/f$c;-><init>(LZ6/f;)V

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

    const v4, 0x7f0904fd

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v4, p0, LZ6/f;->b0:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v4, p0, LZ6/f;->X:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, LZ6/f;->b0:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v4, p0, LZ6/f;->a0:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, LZ6/f;->b0:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v4, LZ6/f$d;

    invoke-direct {v4, p0}, LZ6/f$d;-><init>(LZ6/f;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v1, LZ6/f$e;

    invoke-direct {v1, p0}, LZ6/f$e;-><init>(LZ6/f;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, LZ6/f$f;

    invoke-direct {v1, p0}, LZ6/f$f;-><init>(LZ6/f;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public G0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    iget-object v0, p0, LZ6/f;->c0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    const/4 v0, 0x0

    iput-object v0, p0, LZ6/f;->c0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    :cond_0
    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s0(Ljava/lang/Object;)V

    return-void
.end method

.method public n1()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    invoke-static {}, Lrc/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->u(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s0(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
