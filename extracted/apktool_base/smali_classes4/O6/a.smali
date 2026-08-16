.class public LO6/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LO6/a$F;,
        LO6/a$G;
    }
.end annotation


# static fields
.field public static final r0:Ljava/lang/String; = "SpriteEditorPanel"


# instance fields
.field public final X:Ljava/lang/String;

.field public Y:Ljava/io/File;

.field public Z:Landroid/view/View;

.field public a0:Landroid/widget/LinearLayout;

.field public b0:Landroid/view/View;

.field public c0:Landroid/widget/TextView;

.field public d0:Landroid/widget/ImageView;

.field public e0:Landroid/widget/ImageView;

.field public f0:Landroid/widget/TextView;

.field public g0:Landroid/view/View;

.field public h0:Landroid/view/View;

.field public final i0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public j0:Landroid/graphics/Bitmap;

.field public k0:Landroid/graphics/Bitmap;

.field public l0:Landroid/graphics/Bitmap;

.field public m0:Lub/g;

.field public n0:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

.field public final o0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public p0:I

.field public q0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inProjectFile"
        }
    .end annotation

    const-string v0, "Sprite editor"

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LO6/a;->i0:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LO6/a;->o0:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, LO6/a;->p0:I

    iput-object v1, p0, LO6/a;->q0:Ljava/util/List;

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    iput-object p1, p0, LO6/a;->X:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LO6/a;->Y:Ljava/io/File;

    return-void
.end method

.method public static synthetic A1(LO6/a;)I
    .locals 0

    invoke-virtual {p0}, LO6/a;->n2()I

    move-result p0

    return p0
.end method

.method public static synthetic B1(LO6/a;I)V
    .locals 0

    invoke-virtual {p0, p1}, LO6/a;->G2(I)V

    return-void
.end method

.method public static synthetic C1(LO6/a;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, LO6/a;->E2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D1(LO6/a;LAb/b;)V
    .locals 0

    invoke-virtual {p0, p1}, LO6/a;->O2(LAb/b;)V

    return-void
.end method

.method public static synthetic E1(LO6/a;)V
    .locals 0

    invoke-direct {p0}, LO6/a;->R2()V

    return-void
.end method

.method public static synthetic F1(LO6/a;)I
    .locals 0

    invoke-virtual {p0}, LO6/a;->r2()I

    move-result p0

    return p0
.end method

.method public static synthetic G1(LO6/a;I)V
    .locals 0

    invoke-virtual {p0, p1}, LO6/a;->K2(I)V

    return-void
.end method

.method public static synthetic H1(LO6/a;)I
    .locals 0

    invoke-virtual {p0}, LO6/a;->q2()I

    move-result p0

    return p0
.end method

.method public static synthetic I1(LO6/a;I)V
    .locals 0

    invoke-virtual {p0, p1}, LO6/a;->J2(I)V

    return-void
.end method

.method public static synthetic J1(LO6/a;)I
    .locals 0

    invoke-virtual {p0}, LO6/a;->s2()I

    move-result p0

    return p0
.end method

.method public static synthetic K1(LO6/a;I)V
    .locals 0

    invoke-virtual {p0, p1}, LO6/a;->L2(I)V

    return-void
.end method

.method public static synthetic L1(LO6/a;)I
    .locals 0

    invoke-virtual {p0}, LO6/a;->t2()I

    move-result p0

    return p0
.end method

.method public static synthetic M1(LO6/a;I)V
    .locals 0

    invoke-virtual {p0, p1}, LO6/a;->M2(I)V

    return-void
.end method

.method public static synthetic N1(LO6/a;)Ljava/io/File;
    .locals 0

    invoke-virtual {p0}, LO6/a;->i2()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O1(LO6/a;)I
    .locals 0

    invoke-virtual {p0}, LO6/a;->o2()I

    move-result p0

    return p0
.end method

.method public static synthetic P1(LO6/a;I)V
    .locals 0

    invoke-virtual {p0, p1}, LO6/a;->H2(I)V

    return-void
.end method

.method public static P2(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inProjectFile"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x172

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0x12c

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    new-instance v2, LO6/a;

    invoke-direct {v2, p0}, LO6/a;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "listener can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic Q1(LO6/a;)I
    .locals 0

    invoke-virtual {p0}, LO6/a;->p2()I

    move-result p0

    return p0
.end method

.method public static synthetic R1(LO6/a;I)V
    .locals 0

    invoke-virtual {p0, p1}, LO6/a;->I2(I)V

    return-void
.end method

.method private R2()V
    .locals 4

    invoke-virtual {p0}, LO6/a;->e2()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LO6/a;->q0:Ljava/util/List;

    iget-object v1, p0, LO6/a;->a0:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, LO6/a;->Q2(Ljava/util/List;Landroid/widget/LinearLayout;ZLB5/b;)V

    return-void
.end method

.method public static synthetic S1(LO6/a;I)V
    .locals 0

    invoke-virtual {p0, p1}, LO6/a;->F2(I)V

    return-void
.end method

.method public static synthetic T1(LO6/a;)I
    .locals 0

    invoke-virtual {p0}, LO6/a;->m2()I

    move-result p0

    return p0
.end method

.method public static synthetic U1(LO6/a;I)V
    .locals 0

    invoke-virtual {p0, p1}, LO6/a;->N2(I)V

    return-void
.end method

.method public static synthetic V1(LO6/a;)I
    .locals 0

    invoke-virtual {p0}, LO6/a;->u2()I

    move-result p0

    return p0
.end method

.method public static synthetic W1(LO6/a;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LO6/a;->U2(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic X1(LO6/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LO6/a;->X:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic Y1(LO6/a;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, LO6/a;->j0:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic Z1(LO6/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, LO6/a;->j0:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic a2(LO6/a;)V
    .locals 0

    invoke-virtual {p0}, LO6/a;->B2()V

    return-void
.end method

.method public static synthetic b2(LO6/a;)V
    .locals 0

    invoke-virtual {p0}, LO6/a;->Y2()V

    return-void
.end method

.method public static synthetic c2(LO6/a;)V
    .locals 0

    invoke-virtual {p0}, LO6/a;->X2()V

    return-void
.end method

.method public static synthetic d2(LO6/a;Lub/g;)Lub/g;
    .locals 0

    iput-object p1, p0, LO6/a;->m0:Lub/g;

    return-object p1
.end method

.method private h2()V
    .locals 2

    iget-object v0, p0, LO6/a;->Z:Landroid/view/View;

    const v1, 0x7f090532

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LO6/a;->c0:Landroid/widget/TextView;

    iget-object v1, p0, LO6/a;->X:Ljava/lang/String;

    invoke-static {v1}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LO6/a;->Z:Landroid/view/View;

    const v1, 0x7f090426

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LO6/a;->a0:Landroid/widget/LinearLayout;

    iget-object v0, p0, LO6/a;->Z:Landroid/view/View;

    const v1, 0x7f09047d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LO6/a;->d0:Landroid/widget/ImageView;

    iget-object v0, p0, LO6/a;->Z:Landroid/view/View;

    const v1, 0x7f0904b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LO6/a;->e0:Landroid/widget/ImageView;

    iget-object v0, p0, LO6/a;->Z:Landroid/view/View;

    const v1, 0x7f0904b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LO6/a;->f0:Landroid/widget/TextView;

    iget-object v0, p0, LO6/a;->Z:Landroid/view/View;

    const v1, 0x7f0903b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LO6/a;->g0:Landroid/view/View;

    iget-object v0, p0, LO6/a;->Z:Landroid/view/View;

    const v1, 0x7f090351

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LO6/a;->h0:Landroid/view/View;

    iget-object v0, p0, LO6/a;->Z:Landroid/view/View;

    const v1, 0x7f0901ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LO6/a;->b0:Landroid/view/View;

    iget-object v0, p0, LO6/a;->g0:Landroid/view/View;

    new-instance v1, LO6/a$k;

    invoke-direct {v1, p0}, LO6/a$k;-><init>(LO6/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LO6/a;->h0:Landroid/view/View;

    new-instance v1, LO6/a$v;

    invoke-direct {v1, p0}, LO6/a$v;-><init>(LO6/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LO6/a;->b0:Landroid/view/View;

    new-instance v1, LO6/a$y;

    invoke-direct {v1, p0}, LO6/a$y;-><init>(LO6/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, LO6/a;->R2()V

    invoke-virtual {p0}, LO6/a;->Y2()V

    invoke-virtual {p0}, LO6/a;->X2()V

    invoke-virtual {p0}, LO6/a;->C2()V

    return-void
.end method

.method public static synthetic p1(LO6/a;)V
    .locals 0

    invoke-virtual {p0}, LO6/a;->A2()V

    return-void
.end method

.method public static synthetic q1(LO6/a;)V
    .locals 0

    invoke-virtual {p0}, LO6/a;->z2()V

    return-void
.end method

.method public static synthetic r1(LO6/a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .locals 0

    iget-object p0, p0, LO6/a;->n0:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    return-object p0
.end method

.method public static synthetic s1(LO6/a;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .locals 0

    iput-object p1, p0, LO6/a;->n0:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    return-object p1
.end method

.method public static synthetic t1(LO6/a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .locals 0

    invoke-virtual {p0}, LO6/a;->l2()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u1(LO6/a;)V
    .locals 0

    invoke-virtual {p0}, LO6/a;->y2()V

    return-void
.end method

.method public static synthetic v1(LO6/a;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, LO6/a;->f2()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w1(LO6/a;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, LO6/a;->D2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic x1(LO6/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LO6/a;->o0:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic y1(LO6/a;I)I
    .locals 0

    iput p1, p0, LO6/a;->p0:I

    return p1
.end method

.method public static synthetic z1(LO6/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, LO6/a;->i0:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public final A2()V
    .locals 1

    iget-object v0, p0, LO6/a;->o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, LO6/a;->p0:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LO6/a;->p0:I

    if-gez v0, :cond_1

    iget-object v0, p0, LO6/a;->o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LO6/a;->p0:I

    :cond_1
    invoke-virtual {p0}, LO6/a;->X2()V

    return-void
.end method

.method public final B2()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, LO6/a;->k0:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, LO6/a;->k0:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iput-object v1, v0, LO6/a;->k0:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v1, v0, LO6/a;->j0:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v1, v0, LO6/a;->o0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, v0, LO6/a;->j0:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v0, LO6/a;->j0:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    goto :goto_0

    :cond_3
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v3}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, LO6/a;->j0:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, v0, LO6/a;->j0:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x43200000    # 160.0f

    div-float/2addr v4, v5

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v4, 0xdc

    const/16 v5, 0xff

    const/16 v6, 0x40

    invoke-static {v4, v5, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12, v3}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v8, 0x20

    invoke-static {v8, v5, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v12, v8}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13, v3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v7, 0xc8

    invoke-static {v4, v5, v7, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, LO6/a;->o0:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->k()I

    move-result v5

    iget-object v6, v0, LO6/a;->j0:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, v3

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v7, v6}, LNc/b;->F(III)I

    move-result v5

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->l()I

    move-result v6

    iget-object v8, v0, LO6/a;->j0:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v6, v7, v8}, LNc/b;->F(III)I

    move-result v6

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->j()I

    move-result v7

    iget-object v8, v0, LO6/a;->j0:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v3, v8}, LNc/b;->F(III)I

    move-result v7

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->g()I

    move-result v4

    iget-object v8, v0, LO6/a;->j0:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v4, v3, v8}, LNc/b;->F(III)I

    move-result v4

    int-to-float v15, v5

    int-to-float v9, v6

    add-int/2addr v5, v7

    int-to-float v8, v5

    add-int/2addr v6, v4

    int-to-float v7, v6

    move-object v4, v2

    move v5, v15

    move v6, v9

    move/from16 v16, v7

    move v7, v8

    move/from16 v17, v8

    move/from16 v8, v16

    move/from16 v18, v9

    move-object v9, v12

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move/from16 v6, v18

    move/from16 v7, v17

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v15, v4

    add-float v9, v18, v4

    invoke-virtual {v10}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    const v5, 0x3f99999a    # 1.2f

    mul-float/2addr v4, v5

    invoke-static {v11, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v2, v15, v9, v4, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_6
    iput-object v1, v0, LO6/a;->k0:Landroid/graphics/Bitmap;

    :cond_7
    :goto_2
    return-void
.end method

.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c01a1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LO6/a;->Z:Landroid/view/View;

    invoke-direct {p0}, LO6/a;->h2()V

    invoke-virtual {p0}, LO6/a;->x2()V

    invoke-virtual {p0}, LO6/a;->w2()V

    return-object v0
.end method

.method public final C2()V
    .locals 3

    iget-object v0, p0, LO6/a;->f0:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LO6/a;->o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LO6/a;->f0:Landroid/widget/TextView;

    const-string v1, "0/0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LO6/a;->f0:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, LO6/a;->p0:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LO6/a;->o0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final D2(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newSprites"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, LO6/a;->l2()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;->Sprite:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->type:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    invoke-virtual {p0}, LO6/a;->k2()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v2

    invoke-virtual {p0, v2}, LO6/a;->V2(Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->c()V

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->b(Ljava/util/List;)V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->type:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LO6/a;->X:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".config"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v0, v1}, LX7/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to save sprite config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final E2(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, LO6/a;->i0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, LO6/a;->b0:Landroid/view/View;

    :goto_0
    sget-object v0, Lr4/a$e;->Left:Lr4/a$e;

    invoke-static {p1, v0}, Lq7/a;->t1(Landroid/view/View;Lr4/a$e;)Lq7/a;

    move-result-object p1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LO6/a$C;

    invoke-direct {v1, p0, p1}, LO6/a$C;-><init>(LO6/a;Lq7/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final F2(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alphaThreshold"
        }
    .end annotation

    invoke-virtual {p0}, LO6/a;->k2()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->q(I)V

    return-void
.end method

.method public final G2(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0}, LO6/a;->k2()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->r(I)V

    return-void
.end method

.method public final H2(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0}, LO6/a;->k2()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->s(I)V

    return-void
.end method

.method public final I2(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0}, LO6/a;->k2()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->t(I)V

    return-void
.end method

.method public final J2(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0}, LO6/a;->k2()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->u(I)V

    return-void
.end method

.method public final K2(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0}, LO6/a;->k2()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->v(I)V

    return-void
.end method

.method public final L2(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0}, LO6/a;->k2()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->w(I)V

    return-void
.end method

.method public final M2(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0}, LO6/a;->k2()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->x(I)V

    return-void
.end method

.method public final N2(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minIslandSizePixels"
        }
    .end annotation

    invoke-virtual {p0}, LO6/a;->k2()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->y(I)V

    return-void
.end method

.method public final O2(LAb/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sliceType"
        }
    .end annotation

    invoke-virtual {p0}, LO6/a;->k2()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->z(LAb/b;)V

    return-void
.end method

.method public Q2(Ljava/util/List;Landroid/widget/LinearLayout;ZLB5/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "entries",
            "content",
            "clearViews",
            "entriesListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/b;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "Z",
            "LB5/b;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, LC5/b;

    iget-object p3, v2, LC5/b;->n:LC5/b$a;

    sget-object p4, LC5/b$a;->Vector:LC5/b$a;

    if-ne p3, p4, :cond_1

    iget-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const/4 p4, 0x0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, p3, v2, p4, v0}, LC5/h;->y(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v5}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final S2()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, LO6/a;->j2()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, LO6/a;->o2()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, LO6/a;->p2()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    div-int v2, v9, v10

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v12

    div-int v2, v0, v11

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v11, :cond_6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v10, :cond_5

    invoke-virtual/range {p0 .. p0}, LO6/a;->s2()I

    move-result v2

    mul-int v3, v8, v12

    add-int/2addr v3, v2

    invoke-virtual/range {p0 .. p0}, LO6/a;->t2()I

    move-result v2

    mul-int v4, v15, v13

    add-int/2addr v4, v2

    if-ge v3, v9, :cond_1

    if-lt v4, v0, :cond_2

    :cond_1
    move/from16 v16, v8

    goto :goto_4

    :cond_2
    add-int/lit8 v2, v10, -0x1

    if-ne v8, v2, :cond_3

    sub-int v2, v9, v3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v12

    :goto_2
    add-int/lit8 v2, v11, -0x1

    if-ne v15, v2, :cond_4

    sub-int v2, v0, v4

    move v6, v2

    goto :goto_3

    :cond_4
    move v6, v13

    :goto_3
    if-lez v5, :cond_1

    if-lez v6, :cond_1

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-object v2, v7

    move-object v14, v7

    move v7, v9

    move/from16 v16, v8

    move v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;-><init>(IIIIII)V

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v8, v16, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method public final T2()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, LO6/a;->j2()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, LO6/a;->r2()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, LO6/a;->q2()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, LO6/a;->t2()I

    move-result v2

    const/4 v12, 0x0

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v13, v2

    :goto_0
    if-ge v13, v0, :cond_3

    invoke-virtual/range {p0 .. p0}, LO6/a;->s2()I

    move-result v2

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v14, v2

    :goto_1
    if-ge v14, v9, :cond_2

    sub-int v2, v9, v14

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v2, v0, v13

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-lez v5, :cond_1

    if-lez v6, :cond_1

    new-instance v15, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-object v2, v15

    move v3, v14

    move v4, v13

    move v7, v9

    move v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;-><init>(IIIIII)V

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/2addr v14, v10

    goto :goto_1

    :cond_2
    add-int/2addr v13, v11

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final U2(Landroid/view/View;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "closePanel"
        }
    .end annotation

    iget-object v0, p0, LO6/a;->i0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, LO6/a;->b0:Landroid/view/View;

    :goto_0
    sget-object v0, Lr4/a$e;->Left:Lr4/a$e;

    invoke-static {p1, v0}, Lq7/a;->t1(Landroid/view/View;Lr4/a$e;)Lq7/a;

    move-result-object p1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LO6/a$B;

    invoke-direct {v1, p0, p1, p2}, LO6/a$B;-><init>(LO6/a;Lq7/a;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final V2(Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spriteData"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LO6/a;->v2()LAb/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->z(LAb/b;)V

    invoke-virtual {p0}, LO6/a;->n2()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->r(I)V

    invoke-virtual {p0}, LO6/a;->m2()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->q(I)V

    invoke-virtual {p0}, LO6/a;->u2()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->y(I)V

    invoke-virtual {p0}, LO6/a;->r2()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->v(I)V

    invoke-virtual {p0}, LO6/a;->q2()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->u(I)V

    invoke-virtual {p0}, LO6/a;->o2()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->s(I)V

    invoke-virtual {p0}, LO6/a;->p2()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->t(I)V

    invoke-virtual {p0}, LO6/a;->s2()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->w(I)V

    invoke-virtual {p0}, LO6/a;->t2()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->x(I)V

    return-void
.end method

.method public final W2(Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spriteData"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->n()LAb/b;

    move-result-object v0

    invoke-virtual {p0, v0}, LO6/a;->O2(LAb/b;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->f()I

    move-result v0

    invoke-virtual {p0, v0}, LO6/a;->G2(I)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->e()I

    move-result v0

    invoke-virtual {p0, v0}, LO6/a;->F2(I)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->m()I

    move-result v0

    invoke-virtual {p0, v0}, LO6/a;->N2(I)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->j()I

    move-result v0

    invoke-virtual {p0, v0}, LO6/a;->K2(I)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->i()I

    move-result v0

    invoke-virtual {p0, v0}, LO6/a;->J2(I)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->g()I

    move-result v0

    invoke-virtual {p0, v0}, LO6/a;->H2(I)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->h()I

    move-result v0

    invoke-virtual {p0, v0}, LO6/a;->I2(I)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->k()I

    move-result v0

    invoke-virtual {p0, v0}, LO6/a;->L2(I)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->l()I

    move-result p1

    invoke-virtual {p0, p1}, LO6/a;->M2(I)V

    return-void
.end method

.method public final X2()V
    .locals 6

    iget-object v0, p0, LO6/a;->e0:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LO6/a;->l0:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LO6/a;->l0:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, LO6/a;->l0:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, LO6/a;->o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, LO6/a;->j0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    :cond_2
    iget v0, p0, LO6/a;->p0:I

    const/4 v1, 0x0

    if-gez v0, :cond_3

    iput v1, p0, LO6/a;->p0:I

    :cond_3
    iget v0, p0, LO6/a;->p0:I

    iget-object v2, p0, LO6/a;->o0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v0, v2, :cond_4

    iget-object v0, p0, LO6/a;->o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, p0, LO6/a;->p0:I

    :cond_4
    iget-object v0, p0, LO6/a;->o0:Ljava/util/List;

    iget v2, p0, LO6/a;->p0:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->k()I

    move-result v2

    iget-object v4, p0, LO6/a;->j0:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v2, v1, v4}, LNc/b;->F(III)I

    move-result v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->l()I

    move-result v4

    iget-object v5, p0, LO6/a;->j0:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v1, v5}, LNc/b;->F(III)I

    move-result v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->j()I

    move-result v4

    iget-object v5, p0, LO6/a;->j0:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v3, v5}, LNc/b;->F(III)I

    move-result v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->g()I

    move-result v0

    iget-object v5, p0, LO6/a;->j0:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v0, v3, v5}, LNc/b;->F(III)I

    move-result v0

    iget-object v3, p0, LO6/a;->j0:Landroid/graphics/Bitmap;

    invoke-static {v3, v2, v1, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, LO6/a;->l0:Landroid/graphics/Bitmap;

    iget-object v1, p0, LO6/a;->e0:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, LO6/a;->C2()V

    return-void

    :cond_5
    :goto_0
    iget-object v0, p0, LO6/a;->e0:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, LO6/a;->f0:Landroid/widget/TextView;

    const-string v1, "0/0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final Y2()V
    .locals 2

    iget-object v0, p0, LO6/a;->Z:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, LO6/a;->d0:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LO6/a;->k0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LO6/a;->d0:Landroid/widget/ImageView;

    iget-object v1, p0, LO6/a;->k0:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LO6/a;->j0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LO6/a;->d0:Landroid/widget/ImageView;

    iget-object v1, p0, LO6/a;->j0:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, LO6/a;->i2()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LO6/a;->d0:Landroid/widget/ImageView;

    invoke-virtual {p0}, LO6/a;->i2()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, LVc/e;->F(Landroid/widget/ImageView;Ljava/io/File;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, LO6/a;->d0:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final e2()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, LO6/a$D;

    invoke-direct {v1, p0}, LO6/a$D;-><init>(LO6/a;)V

    new-instance v2, LO6/a$E;

    invoke-direct {v2, p0}, LO6/a$E;-><init>(LO6/a;)V

    const-string v3, "Frames per second"

    invoke-virtual {p0, v3, v1, v2}, LO6/a;->g2(Ljava/lang/String;LO6/a$F;LO6/a$G;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LO6/a;->v2()LAb/b;

    move-result-object v1

    new-instance v2, LO6/a$a;

    invoke-direct {v2, p0}, LO6/a$a;-><init>(LO6/a;)V

    const-string v3, "Type"

    const-class v4, LAb/b;

    invoke-static {v3, v4, v1, v2}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, LO6/a$x;->a:[I

    invoke-virtual {p0}, LO6/a;->v2()LAb/b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const-string v3, "Offset Y"

    const-string v4, "Offset X"

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    new-instance v1, LC5/b;

    const-string v2, "Automatic"

    sget-object v3, LC5/b$a;->Header:LC5/b$a;

    invoke-direct {v1, v2, v3}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, LO6/a$s;

    invoke-direct {v2, p0}, LO6/a$s;-><init>(LO6/a;)V

    sget-object v3, LC5/b$a;->SLInt:LC5/b$a;

    const-string v4, "Alpha Threshold"

    invoke-direct {v1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, LO6/a$t;

    invoke-direct {v2, p0}, LO6/a$t;-><init>(LO6/a;)V

    const-string v4, "Min island size"

    invoke-direct {v1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    new-instance v1, LC5/b;

    const-string v2, "Grid by cell count"

    sget-object v5, LC5/b$a;->Header:LC5/b$a;

    invoke-direct {v1, v2, v5}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LO6/a$j;

    invoke-direct {v1, p0}, LO6/a$j;-><init>(LO6/a;)V

    new-instance v2, LO6/a$l;

    invoke-direct {v2, p0}, LO6/a$l;-><init>(LO6/a;)V

    const-string v5, "Columns"

    invoke-virtual {p0, v5, v1, v2}, LO6/a;->g2(Ljava/lang/String;LO6/a$F;LO6/a$G;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LO6/a$m;

    invoke-direct {v1, p0}, LO6/a$m;-><init>(LO6/a;)V

    new-instance v2, LO6/a$n;

    invoke-direct {v2, p0}, LO6/a$n;-><init>(LO6/a;)V

    const-string v5, "Rows"

    invoke-virtual {p0, v5, v1, v2}, LO6/a;->g2(Ljava/lang/String;LO6/a$F;LO6/a$G;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LO6/a$o;

    invoke-direct {v1, p0}, LO6/a$o;-><init>(LO6/a;)V

    new-instance v2, LO6/a$p;

    invoke-direct {v2, p0}, LO6/a$p;-><init>(LO6/a;)V

    invoke-virtual {p0, v4, v1, v2}, LO6/a;->g2(Ljava/lang/String;LO6/a$F;LO6/a$G;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LO6/a$q;

    invoke-direct {v1, p0}, LO6/a$q;-><init>(LO6/a;)V

    new-instance v2, LO6/a$r;

    invoke-direct {v2, p0}, LO6/a$r;-><init>(LO6/a;)V

    invoke-virtual {p0, v3, v1, v2}, LO6/a;->g2(Ljava/lang/String;LO6/a$F;LO6/a$G;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, LC5/b;

    const-string v2, "Grid by cell size"

    sget-object v5, LC5/b$a;->Header:LC5/b$a;

    invoke-direct {v1, v2, v5}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LO6/a$b;

    invoke-direct {v1, p0}, LO6/a$b;-><init>(LO6/a;)V

    new-instance v2, LO6/a$c;

    invoke-direct {v2, p0}, LO6/a$c;-><init>(LO6/a;)V

    const-string v5, "Cell width"

    invoke-virtual {p0, v5, v1, v2}, LO6/a;->g2(Ljava/lang/String;LO6/a$F;LO6/a$G;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LO6/a$d;

    invoke-direct {v1, p0}, LO6/a$d;-><init>(LO6/a;)V

    new-instance v2, LO6/a$e;

    invoke-direct {v2, p0}, LO6/a$e;-><init>(LO6/a;)V

    const-string v5, "Cell height"

    invoke-virtual {p0, v5, v1, v2}, LO6/a;->g2(Ljava/lang/String;LO6/a$F;LO6/a$G;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LO6/a$f;

    invoke-direct {v1, p0}, LO6/a$f;-><init>(LO6/a;)V

    new-instance v2, LO6/a$g;

    invoke-direct {v2, p0}, LO6/a$g;-><init>(LO6/a;)V

    invoke-virtual {p0, v4, v1, v2}, LO6/a;->g2(Ljava/lang/String;LO6/a$F;LO6/a$G;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LO6/a$h;

    invoke-direct {v1, p0}, LO6/a$h;-><init>(LO6/a;)V

    new-instance v2, LO6/a$i;

    invoke-direct {v2, p0}, LO6/a$i;-><init>(LO6/a;)V

    invoke-virtual {p0, v3, v1, v2}, LO6/a;->g2(Ljava/lang/String;LO6/a$F;LO6/a$G;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v1, LO6/a$u;

    invoke-direct {v1, p0}, LO6/a$u;-><init>(LO6/a;)V

    const-string v2, "Slice"

    invoke-static {v2, v1}, LF5/c;->c(Ljava/lang/String;LF5/b;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final f2()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;",
            ">;"
        }
    .end annotation

    sget-object v0, LO6/a$x;->a:[I

    invoke-virtual {p0}, LO6/a;->v2()LAb/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, LO6/a;->i2()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, LO6/a;->m2()I

    move-result v1

    invoke-virtual {p0}, LO6/a;->u2()I

    move-result v2

    invoke-static {v0, v1, v2}, LAb/a;->c(Ljava/io/File;II)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, LO6/a;->S2()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, LO6/a;->T2()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final g2(Ljava/lang/String;LO6/a$F;LO6/a$G;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "getter",
            "setter"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, LO6/a$w;

    invoke-direct {v1, p0, p3, p2}, LO6/a$w;-><init>(LO6/a;LO6/a$G;LO6/a$F;)V

    sget-object p2, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {v0, v1, p1, p2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    return-object v0
.end method

.method public final i2()Ljava/io/File;
    .locals 3

    iget-object v0, p0, LO6/a;->Y:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LO6/a;->Y:Ljava/io/File;

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LO6/a;->X:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, LO6/a;->Y:Ljava/io/File;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, LO6/a;->X:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, LO6/a;->Y:Ljava/io/File;

    return-object v1
.end method

.method public final j2()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, LO6/a;->j0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LO6/a;->j0:Landroid/graphics/Bitmap;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LO6/a;->X:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b;->p(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, LO6/a;->j0:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 2

    new-instance v0, LO6/a;

    iget-object v1, p0, LO6/a;->X:Ljava/lang/String;

    invoke-direct {v0, v1}, LO6/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final k2()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;
    .locals 2

    invoke-virtual {p0}, LO6/a;->l2()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;-><init>()V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->G0(Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;)V

    :cond_0
    return-object v1
.end method

.method public final l2()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .locals 2

    iget-object v0, p0, LO6/a;->n0:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, LO6/a;->m0:Lub/g;

    if-nez v0, :cond_1

    new-instance v0, Lub/g;

    iget-object v1, p0, LO6/a;->X:Ljava/lang/String;

    invoke-direct {v0, v1}, Lub/g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LO6/a;->m0:Lub/g;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, LO6/a;->m0:Lub/g;

    invoke-virtual {v0}, Lub/g;->u0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    iput-object v0, p0, LO6/a;->n0:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iput-object v0, p0, LO6/a;->n0:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    :goto_2
    iget-object v0, p0, LO6/a;->n0:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    return-object v0
.end method

.method public final m2()I
    .locals 1

    invoke-virtual {p0}, LO6/a;->k2()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->e()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final n2()I
    .locals 1

    invoke-virtual {p0}, LO6/a;->k2()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->f()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    return v0
.end method

.method public final o2()I
    .locals 1

    invoke-virtual {p0}, LO6/a;->k2()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->g()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    return v0
.end method

.method public final p2()I
    .locals 1

    invoke-virtual {p0}, LO6/a;->k2()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->h()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    return v0
.end method

.method public final q2()I
    .locals 1

    invoke-virtual {p0}, LO6/a;->k2()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->i()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    :goto_0
    return v0
.end method

.method public final r2()I
    .locals 1

    invoke-virtual {p0}, LO6/a;->k2()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->j()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    :goto_0
    return v0
.end method

.method public final s2()I
    .locals 1

    invoke-virtual {p0}, LO6/a;->k2()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->k()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final t2()I
    .locals 1

    invoke-virtual {p0}, LO6/a;->k2()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->l()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final u2()I
    .locals 1

    invoke-virtual {p0}, LO6/a;->k2()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->m()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final v2()LAb/b;
    .locals 1

    invoke-virtual {p0}, LO6/a;->k2()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->n()LAb/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, LAb/b;->Automatic:LAb/b;

    :goto_0
    return-object v0
.end method

.method public final w2()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LO6/a$z;

    invoke-direct {v1, p0}, LO6/a$z;-><init>(LO6/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final x2()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LO6/a$A;

    invoke-direct {v1, p0}, LO6/a$A;-><init>(LO6/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final y2()V
    .locals 5

    invoke-virtual {p0}, LO6/a;->k2()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {p0, v0}, LO6/a;->W2(Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;)V

    iget-object v1, p0, LO6/a;->o0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->C()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->B(I)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, LO6/a;->o0:Ljava/util/List;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->a(Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, LO6/a;->p0:I

    invoke-virtual {p0}, LO6/a;->B2()V

    invoke-virtual {p0}, LO6/a;->X2()V

    invoke-virtual {p0}, LO6/a;->C2()V

    return-void
.end method

.method public final z2()V
    .locals 2

    iget-object v0, p0, LO6/a;->o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, LO6/a;->p0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LO6/a;->p0:I

    iget-object v1, p0, LO6/a;->o0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, LO6/a;->p0:I

    :cond_1
    invoke-virtual {p0}, LO6/a;->X2()V

    return-void
.end method
