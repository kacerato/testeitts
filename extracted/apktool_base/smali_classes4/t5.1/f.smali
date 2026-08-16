.class public Lt5/f;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt5/f$j;
    }
.end annotation


# static fields
.field public static final j0:Ljava/lang/String; = "ColorPicker"


# instance fields
.field public X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public final Y:Lt5/f$j;

.field public final Z:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public a0:Lorg/jaredrummler/colorpicker/ColorPickerView;

.field public final b0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public c0:Landroid/widget/ImageView;

.field public d0:Landroid/view/View;

.field public e0:Landroid/widget/EditText;

.field public f0:Landroid/widget/EditText;

.field public g0:Landroid/widget/EditText;

.field public h0:Landroid/widget/EditText;

.field public i0:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lt5/f$j;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentColor",
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "Color Picker"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p0, Lt5/f;->b0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    :cond_0
    iput-object p1, p0, Lt5/f;->Z:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iput-object p2, p0, Lt5/f;->Y:Lt5/f$j;

    return-void
.end method

.method public static synthetic A1(Lt5/f;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lt5/f;->g0:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic B1(Lt5/f;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lt5/f;->h0:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic C1(Lt5/f;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lt5/f;->i0:Landroid/widget/EditText;

    return-object p0
.end method

.method public static L1(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Landroid/view/View;Landroid/content/Context;Lr4/a$e;Lt5/f$j;)V
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
            "currentColor",
            "anchor",
            "context",
            "anchorSide",
            "listener"
        }
    .end annotation

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p0, :cond_0

    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    :cond_0
    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->x0()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const p2, 0x7f060065

    invoke-static {p2}, LN7/c;->v(I)I

    move-result p2

    const v0, 0x7f060064

    invoke-static {v0}, LN7/c;->v(I)I

    move-result v0

    invoke-static {p2}, LN7/c;->g(I)F

    move-result v4

    invoke-static {v0}, LN7/c;->f(I)F

    move-result v5

    new-instance v2, Lt5/f;

    invoke-direct {v2, p0, p4}, Lt5/f;-><init>(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lt5/f$j;)V

    new-instance v6, Lt5/f$a;

    invoke-direct {v6, v2, p2, v0}, Lt5/f$a;-><init>(Lt5/f;II)V

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lr4/a;->i(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FFLr4/a$f;)V

    return-void
.end method

.method public static synthetic p1(Lt5/f;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lt5/f;->H1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q1(Lt5/f;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lt5/f;->G1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r1(Lt5/f;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lt5/f;->F1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic s1(Lt5/f;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lt5/f;->E1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic t1(Lt5/f;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lt5/f;->D1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic u1(Lt5/f;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0

    iput-object p1, p0, Lt5/f;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p1
.end method

.method public static synthetic v1(Lt5/f;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0

    iget-object p0, p0, Lt5/f;->b0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object p0
.end method

.method public static synthetic w1(Lt5/f;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0

    iget-object p0, p0, Lt5/f;->Z:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object p0
.end method

.method public static synthetic x1(Lt5/f;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lt5/f;->I1(IZ)V

    return-void
.end method

.method public static synthetic y1(Lt5/f;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lt5/f;->e0:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic z1(Lt5/f;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lt5/f;->f0:Landroid/widget/EditText;

    return-object p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0058

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lt5/f$b;

    invoke-direct {v1, p0}, Lt5/f$b;-><init>(Lt5/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v0, p0, Lt5/f;->d0:Landroid/view/View;

    const v1, 0x7f090148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/jaredrummler/colorpicker/ColorPickerView;

    iput-object v1, p0, Lt5/f;->a0:Lorg/jaredrummler/colorpicker/ColorPickerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/jaredrummler/colorpicker/ColorPickerView;->setAlphaSliderVisible(Z)V

    invoke-virtual {p0}, Lt5/f;->N1()V

    invoke-virtual {p0}, Lt5/f;->M1()V

    iget-object v1, p0, Lt5/f;->b0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v2, p0, Lt5/f;->Z:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v1, p0, Lt5/f;->a0:Lorg/jaredrummler/colorpicker/ColorPickerView;

    iget-object v2, p0, Lt5/f;->Z:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {v1, v2}, Lorg/jaredrummler/colorpicker/ColorPickerView;->setColor(I)V

    iget-object v1, p0, Lt5/f;->Z:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0, v1}, Lt5/f;->K1(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v1, p0, Lt5/f;->Z:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0, v1}, Lt5/f;->J1(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    const v1, 0x7f0905b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lt5/f;->c0:Landroid/widget/ImageView;

    iget-object v2, p0, Lt5/f;->Z:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const v1, 0x7f09036b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lt5/f;->Z:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const v1, 0x7f09036c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lt5/f$c;

    invoke-direct {v2, p0}, Lt5/f$c;-><init>(Lt5/f;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lt5/f;->a0:Lorg/jaredrummler/colorpicker/ColorPickerView;

    new-instance v2, Lt5/f$d;

    invoke-direct {v2, p0}, Lt5/f$d;-><init>(Lt5/f;)V

    invoke-virtual {v1, v2}, Lorg/jaredrummler/colorpicker/ColorPickerView;->setOnColorChangedListener(Lorg/jaredrummler/colorpicker/ColorPickerView$c;)V

    return-object v0
.end method

.method public final synthetic D1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lt5/f;->i0:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "#"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object p2, p0, Lt5/f;->b0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->V(Ljava/lang/String;)V

    iget-object p1, p0, Lt5/f;->b0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lt5/f;->I1(IZ)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic E1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lt5/f;->b0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LNc/b;->w1(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->L(I)V

    iget-object p1, p0, Lt5/f;->b0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lt5/f;->I1(IZ)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic F1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lt5/f;->b0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LNc/b;->w1(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->b0(I)V

    iget-object p1, p0, Lt5/f;->b0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lt5/f;->I1(IZ)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public G0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s0(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic G1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lt5/f;->b0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LNc/b;->w1(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->U(I)V

    iget-object p1, p0, Lt5/f;->b0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lt5/f;->I1(IZ)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic H1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lt5/f;->b0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LNc/b;->w1(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->M(I)V

    iget-object p1, p0, Lt5/f;->b0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lt5/f;->I1(IZ)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final I1(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newC",
            "changePallet"
        }
    .end annotation

    iget-object v0, p0, Lt5/f;->b0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iget-object v0, p0, Lt5/f;->c0:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lt5/f;->b0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0, v0}, Lt5/f;->K1(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v0, p0, Lt5/f;->b0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0, v0}, Lt5/f;->J1(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v0, p0, Lt5/f;->Y:Lt5/f$j;

    iget-object v1, p0, Lt5/f;->b0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    invoke-interface {v0, v1}, Lt5/f$j;->a(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lt5/f;->a0:Lorg/jaredrummler/colorpicker/ColorPickerView;

    invoke-virtual {p2, p1}, Lorg/jaredrummler/colorpicker/ColorPickerView;->setColor(I)V

    :cond_0
    return-void
.end method

.method public final J1(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iget-object v0, p0, Lt5/f;->i0:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->y()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final K1(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iget-object v0, p0, Lt5/f;->e0:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lt5/f;->f0:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->C()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lt5/f;->g0:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lt5/f;->h0:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final M1()V
    .locals 2

    iget-object v0, p0, Lt5/f;->d0:Landroid/view/View;

    const v1, 0x7f090251

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lt5/f;->i0:Landroid/widget/EditText;

    new-instance v1, Lt5/a;

    invoke-direct {v1, p0}, Lt5/a;-><init>(Lt5/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lt5/f;->i0:Landroid/widget/EditText;

    new-instance v1, Lt5/f$i;

    invoke-direct {v1, p0}, Lt5/f$i;-><init>(Lt5/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public final N1()V
    .locals 2

    iget-object v0, p0, Lt5/f;->d0:Landroid/view/View;

    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lt5/f;->e0:Landroid/widget/EditText;

    iget-object v0, p0, Lt5/f;->d0:Landroid/view/View;

    const v1, 0x7f0903d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lt5/f;->f0:Landroid/widget/EditText;

    iget-object v0, p0, Lt5/f;->d0:Landroid/view/View;

    const v1, 0x7f090237

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lt5/f;->g0:Landroid/widget/EditText;

    iget-object v0, p0, Lt5/f;->d0:Landroid/view/View;

    const v1, 0x7f0900c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lt5/f;->h0:Landroid/widget/EditText;

    iget-object v0, p0, Lt5/f;->e0:Landroid/widget/EditText;

    new-instance v1, Lt5/b;

    invoke-direct {v1, p0}, Lt5/b;-><init>(Lt5/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lt5/f;->e0:Landroid/widget/EditText;

    new-instance v1, Lt5/f$e;

    invoke-direct {v1, p0}, Lt5/f$e;-><init>(Lt5/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lt5/f;->f0:Landroid/widget/EditText;

    new-instance v1, Lt5/c;

    invoke-direct {v1, p0}, Lt5/c;-><init>(Lt5/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lt5/f;->f0:Landroid/widget/EditText;

    new-instance v1, Lt5/f$f;

    invoke-direct {v1, p0}, Lt5/f$f;-><init>(Lt5/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lt5/f;->g0:Landroid/widget/EditText;

    new-instance v1, Lt5/d;

    invoke-direct {v1, p0}, Lt5/d;-><init>(Lt5/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lt5/f;->g0:Landroid/widget/EditText;

    new-instance v1, Lt5/f$g;

    invoke-direct {v1, p0}, Lt5/f$g;-><init>(Lt5/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lt5/f;->h0:Landroid/widget/EditText;

    new-instance v1, Lt5/e;

    invoke-direct {v1, p0}, Lt5/e;-><init>(Lt5/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lt5/f;->h0:Landroid/widget/EditText;

    new-instance v1, Lt5/f$h;

    invoke-direct {v1, p0}, Lt5/f$h;-><init>(Lt5/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

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
