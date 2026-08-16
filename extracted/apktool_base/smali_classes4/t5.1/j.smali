.class public Lt5/j;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final h0:Ljava/lang/String; = "GradientEditor"

.field public static i0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static j0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static k0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static l0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static m0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;


# instance fields
.field public X:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

.field public Y:Landroid/graphics/Bitmap;

.field public Z:Landroid/widget/ImageView;

.field public a0:Landroid/widget/FrameLayout;

.field public b0:Landroid/view/View;

.field public c0:Landroid/widget/ImageView;

.field public d0:Landroid/widget/EditText;

.field public e0:Landroid/view/View;

.field public f0:I

.field public g0:LN9/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const-string v1, "#10b178"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(Ljava/lang/String;)V

    sput-object v0, Lt5/j;->i0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(Ljava/lang/String;)V

    sput-object v0, Lt5/j;->j0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0x14

    invoke-direct {v0, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    sput-object v0, Lt5/j;->k0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    sput-object v0, Lt5/j;->l0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0x1e

    invoke-direct {v0, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    sput-object v0, Lt5/j;->m0:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    const-string v1, "Gradient Editor"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;-><init>()V

    iput-object v0, p0, Lt5/j;->X:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    .line 3
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->n()V

    const/4 v0, 0x0

    .line 4
    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;LN9/a$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gradient",
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    const-string v1, "Gradient Editor"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 7
    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    .line 8
    iput-object p1, p0, Lt5/j;->X:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    .line 9
    iput-object p2, p0, Lt5/j;->g0:LN9/a$b;

    return-void
.end method

.method public static synthetic A1(Lt5/j;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lt5/j;->Z:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic p1(Lt5/j;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lt5/j;->a0:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic q1(Lt5/j;)I
    .locals 0

    iget p0, p0, Lt5/j;->f0:I

    return p0
.end method

.method public static synthetic r1(Lt5/j;)LN9/a$b;
    .locals 0

    iget-object p0, p0, Lt5/j;->g0:LN9/a$b;

    return-object p0
.end method

.method public static synthetic s1(Lt5/j;I)I
    .locals 0

    iput p1, p0, Lt5/j;->f0:I

    return p1
.end method

.method public static synthetic t1(Lt5/j;)V
    .locals 0

    invoke-virtual {p0}, Lt5/j;->B1()V

    return-void
.end method

.method public static synthetic u1(Lt5/j;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lt5/j;->d0:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic v1(Lt5/j;)Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;
    .locals 0

    iget-object p0, p0, Lt5/j;->X:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    return-object p0
.end method

.method public static synthetic w1(Lt5/j;)V
    .locals 0

    invoke-virtual {p0}, Lt5/j;->D1()V

    return-void
.end method

.method public static synthetic x1(Lt5/j;Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;)V
    .locals 0

    invoke-virtual {p0, p1}, Lt5/j;->C1(Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;)V

    return-void
.end method

.method public static synthetic y1(Lt5/j;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lt5/j;->c0:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic z1(Lt5/j;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lt5/j;->Y:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public final B1()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lt5/j;->a0:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, LNc/b;->k0(F)I

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v1

    iget v2, p0, Lt5/j;->f0:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lt5/j;->a0:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, p0, Lt5/j;->f0:I

    :cond_0
    iget v2, p0, Lt5/j;->f0:I

    sub-int v8, v2, v0

    iget-object v2, p0, Lt5/j;->X:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->j()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lt5/j;->X:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->n()V

    :cond_1
    const/4 v2, 0x0

    move v9, v2

    :goto_0
    iget-object v2, p0, Lt5/j;->X:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->j()I

    move-result v2

    if-ge v9, v2, :cond_2

    iget-object v2, p0, Lt5/j;->X:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-virtual {v2, v9}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->i(I)Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    move-result-object v7

    new-instance v10, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lt5/j;->a0:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v3, v8

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v10, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f07014d

    invoke-static {v10, v2}, LVc/e;->U(Landroid/widget/ImageView;I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->c()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v3

    invoke-static {v10, v2, v3}, LVc/e;->y(Landroid/widget/ImageView;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    new-instance v11, Lt5/j$c;

    move-object v2, v11

    move-object v3, p0

    move-object v4, v10

    move v5, v8

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lt5/j$c;-><init>(Lt5/j;Landroid/widget/ImageView;IILcom/itsmagic/engine/Engines/Engine/Gradient/Entry;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public C0()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00c7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lt5/j$b;

    invoke-direct {v1, p0}, Lt5/j$b;-><init>(Lt5/j;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lt5/j;->X:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-object v0

    :cond_0
    const v1, 0x7f090246

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lt5/j;->Z:Landroid/widget/ImageView;

    const v1, 0x7f0903a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lt5/j;->a0:Landroid/widget/FrameLayout;

    const v1, 0x7f090451

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lt5/j;->c0:Landroid/widget/ImageView;

    const v1, 0x7f0902db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lt5/j;->d0:Landroid/widget/EditText;

    const v1, 0x7f090456

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lt5/j;->b0:Landroid/view/View;

    const v1, 0x7f09057a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lt5/j;->e0:Landroid/view/View;

    iget-object v1, p0, Lt5/j;->b0:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0xa

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v3, 0x100

    invoke-static {v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lt5/j;->Y:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lt5/j;->D1()V

    invoke-virtual {p0}, Lt5/j;->B1()V

    return-object v0
.end method

.method public final C1(Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    iget-object v0, p0, Lt5/j;->b0:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lt5/j;->c0:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->c()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lt5/j;->c0:Landroid/widget/ImageView;

    new-instance v1, Lt5/j$d;

    invoke-direct {v1, p0, p1}, Lt5/j$d;-><init>(Lt5/j;Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lt5/j;->d0:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lt5/j;->e0:Landroid/view/View;

    new-instance v1, Lt5/j$e;

    invoke-direct {v1, p0, p1}, Lt5/j$e;-><init>(Lt5/j;Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final D1()V
    .locals 1

    new-instance v0, Lt5/j$f;

    invoke-direct {v0, p0}, Lt5/j$f;-><init>(Lt5/j;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 3

    new-instance v0, Lt5/j;

    iget-object v1, p0, Lt5/j;->X:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    iget-object v2, p0, Lt5/j;->g0:LN9/a$b;

    invoke-direct {v0, v1, v2}, Lt5/j;-><init>(Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;LN9/a$b;)V

    return-object v0
.end method

.method public n1()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget-object v0, p0, Lt5/j;->a0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    new-instance v1, Lt5/j$a;

    invoke-direct {v1, p0}, Lt5/j$a;-><init>(Lt5/j;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
