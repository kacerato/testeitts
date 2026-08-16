.class public abstract LYg/v;
.super LYg/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LYg/v$a;,
        LYg/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpeedometer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Speedometer.kt\norg/anastr/speedviewlib/Speedometer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,802:1\n1#2:803\n1924#3,3:804\n*S KotlinDebug\n*F\n+ 1 Speedometer.kt\norg/anastr/speedviewlib/Speedometer\n*L\n725#1:804,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSpeedometer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Speedometer.kt\norg/anastr/speedviewlib/Speedometer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,802:1\n1#2:803\n1924#3,3:804\n*S KotlinDebug\n*F\n+ 1 Speedometer.kt\norg/anastr/speedviewlib/Speedometer\n*L\n725#1:804,3\n*E\n"
    }
.end annotation


# instance fields
.field public final D0:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public F1:F

.field public final H1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lbh/b<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public L1:LYg/v$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public M1:I

.field public R1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public S:Lah/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lah/b<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final T:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public U:Z

.field public V:I

.field public V1:Z

.field public final W:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b1:I

.field public b2:F

.field public i1:F

.field public i2:F

.field public m1:F

.field public m2:LMf/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/p<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Float;",
            "+",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final q0:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q1:I

.field public q2:F

.field public final v0:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public v1:I

.field public y1:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, LYg/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, LYg/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, LYg/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Lah/f;

    invoke-direct {p3, p1}, Lah/f;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, LYg/v;->S:Lah/b;

    .line 5
    new-instance p3, Landroid/graphics/PointF;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p3, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p3, p0, LYg/v;->T:Landroid/graphics/PointF;

    const p3, -0x4400a8de

    .line 6
    iput p3, p0, LYg/v;->V:I

    .line 7
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, LYg/v;->W:Landroid/graphics/Paint;

    .line 8
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, LYg/v;->q0:Landroid/graphics/Paint;

    .line 9
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, LYg/v;->v0:Landroid/graphics/Paint;

    .line 10
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, LYg/v;->D0:Landroid/graphics/Path;

    const/high16 p3, 0x41100000    # 9.0f

    .line 11
    invoke-virtual {p0, p3}, LYg/j;->x(F)F

    move-result p3

    iput p3, p0, LYg/v;->m1:F

    const/4 p3, -0x1

    .line 12
    iput p3, p0, LYg/v;->q1:I

    const/16 p3, 0x87

    .line 13
    iput p3, p0, LYg/v;->v1:I

    const/16 v1, 0x195

    .line 14
    iput v1, p0, LYg/v;->y1:I

    int-to-float p3, p3

    .line 15
    iput p3, p0, LYg/v;->F1:F

    .line 16
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, LYg/v;->H1:Ljava/util/ArrayList;

    .line 17
    sget-object p3, LYg/v$a;->NORMAL:LYg/v$a;

    iput-object p3, p0, LYg/v;->L1:LYg/v$a;

    .line 18
    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, LYg/v;->R1:Ljava/util/List;

    .line 19
    iput-boolean v0, p0, LYg/v;->V1:Z

    .line 20
    invoke-virtual {p0}, LYg/v;->getSpeedometerWidth()F

    move-result p3

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p0, v0}, LYg/j;->x(F)F

    move-result v0

    add-float/2addr p3, v0

    iput p3, p0, LYg/v;->i2:F

    .line 21
    invoke-direct {p0}, LYg/v;->B()V

    .line 22
    invoke-direct {p0, p1, p2}, LYg/v;->C(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0}, LYg/v;->z0()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 24
    :cond_1
    invoke-direct {p0, p1, p2, p3}, LYg/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final B()V
    .locals 2

    iget-object v0, p0, LYg/v;->q0:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, LYg/v;->v0:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, LYg/v;->setMarkColor(I)V

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p0, v0}, LYg/j;->x(F)F

    move-result v0

    invoke-virtual {p0, v0}, LYg/v;->setMarkWidth(F)V

    sget-object v0, LZg/b;->BUTT:LZg/b;

    invoke-virtual {p0, v0}, LYg/v;->setMarkStyle(LZg/b;)V

    invoke-virtual {p0}, LYg/v;->o0()V

    return-void
.end method

.method private final C(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lt3/b$s;->CC:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0xd

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_1

    invoke-static {}, LYg/v$a;->values()[LYg/v$a;

    move-result-object v2

    aget-object p2, v2, p2

    invoke-virtual {p0, p2}, LYg/v;->setSpeedometerMode(LYg/v$a;)V

    :cond_1
    const/4 p2, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, v0, :cond_2

    invoke-static {}, Lah/b$b;->values()[Lah/b$b;

    move-result-object v2

    aget-object p2, v2, p2

    invoke-virtual {p0, p2}, LYg/v;->setIndicator(Lah/b$b;)V

    :cond_2
    const/16 p2, 0xb

    iget v2, p0, LYg/v;->b1:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, LYg/v;->setMarksNumber(I)V

    const/16 p2, 0xc

    iget v2, p0, LYg/v;->i1:F

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, LYg/v;->setMarksPadding(F)V

    const/16 p2, 0x8

    iget v2, p0, LYg/v;->m1:F

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, LYg/v;->setMarkHeight(F)V

    const/16 p2, 0xa

    invoke-virtual {p0}, LYg/v;->getMarkWidth()F

    move-result v2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, LYg/v;->setMarkWidth(F)V

    const/4 p2, 0x7

    invoke-virtual {p0}, LYg/v;->getMarkColor()I

    move-result v2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, LYg/v;->setMarkColor(I)V

    const/16 p2, 0x9

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, v0, :cond_3

    invoke-static {}, LZg/b;->values()[LZg/b;

    move-result-object v2

    aget-object p2, v2, p2

    invoke-virtual {p0, p2}, LYg/v;->setMarkStyle(LZg/b;)V

    :cond_3
    iget p2, p0, LYg/v;->q1:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, LYg/v;->setBackgroundCircleColor(I)V

    const/16 p2, 0xe

    iget v1, p0, LYg/v;->v1:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, LYg/v;->v1:I

    const/4 p2, 0x2

    iget v1, p0, LYg/v;->y1:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, LYg/v;->y1:I

    iget-object p2, p0, LYg/v;->S:Lah/b;

    const/4 v1, 0x6

    invoke-virtual {p2}, Lah/b;->l()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p2, v1}, Lah/b;->q(F)V

    iget p2, p0, LYg/v;->M1:I

    int-to-float p2, p2

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, LYg/v;->M1:I

    iget-object p2, p0, LYg/v;->R1:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/16 v2, 0xf

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-virtual {p0, p2}, LYg/v;->setTickNumber(I)V

    const/16 p2, 0x11

    iget-boolean v2, p0, LYg/v;->V1:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, LYg/v;->V1:Z

    const/16 p2, 0x10

    iget v2, p0, LYg/v;->i2:F

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, LYg/v;->setTickPadding(F)V

    iget-object p2, p0, LYg/v;->S:Lah/b;

    const/4 v2, 0x4

    invoke-virtual {p2}, Lah/b;->f()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p2, v2}, Lah/b;->m(I)V

    const/16 p2, 0x13

    iget-boolean v2, p0, LYg/v;->U:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, LYg/v;->U:Z

    const/4 p2, 0x5

    iget v2, p0, LYg/v;->V:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, LYg/v;->V:I

    const/16 p2, 0x12

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eqz p2, :cond_5

    if-eq p2, v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p2, LYg/u;

    invoke-direct {p2, p0}, LYg/u;-><init>(LYg/v;)V

    invoke-virtual {p0, p2}, LYg/v;->setOnPrintTickLabel(LMf/p;)V

    goto :goto_0

    :cond_5
    new-instance p2, LYg/t;

    invoke-direct {p2, p0}, LYg/t;-><init>(LYg/v;)V

    invoke-virtual {p0, p2}, LYg/v;->setOnPrintTickLabel(LMf/p;)V

    :goto_0
    iget p2, p0, LYg/v;->v1:I

    int-to-float p2, p2

    iput p2, p0, LYg/v;->F1:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, LYg/v;->m0()V

    return-void
.end method

.method public static synthetic g0(LYg/v;IF)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1, p2}, LYg/v;->y0(LYg/v;IF)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h0(LYg/v;Lbh/b;)V
    .locals 0

    invoke-static {p0, p1}, LYg/v;->l0(LYg/v;Lbh/b;)V

    return-void
.end method

.method public static synthetic i0(LYg/v;IF)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1, p2}, LYg/v;->x0(LYg/v;IF)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(LYg/v;Lbh/b;JILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0xbb8

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, LYg/v;->j0(Lbh/b;J)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addNote"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final l0(LYg/v;Lbh/b;)V
    .locals 1

    invoke-virtual {p0}, LYg/j;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LYg/v;->H1:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public static final x0(LYg/v;IF)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, LYg/j;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.0f"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final y0(LYg/v;IF)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, LYg/j;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.1f"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final z0()V
    .locals 2

    iget-object v0, p0, LYg/v;->W:Landroid/graphics/Paint;

    iget v1, p0, LYg/v;->q1:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final A0()Z
    .locals 1

    iget-boolean v0, p0, LYg/v;->V1:Z

    return v0
.end method

.method public final B0()Z
    .locals 1

    iget-boolean v0, p0, LYg/v;->U:Z

    return v0
.end method

.method public final C0()V
    .locals 1

    iget-object v0, p0, LYg/v;->H1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final D0(FF)V
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, LVf/t;->g(FF)LVf/f;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, LVf/f;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0, v1}, LVf/t;->g(FF)LVf/f;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, LVf/f;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LYg/v;->T:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p0}, LYg/j;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Fulcrum Y should be between [0f, 1f]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Fulcrum X should be between [0f, 1f]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final E0(II)V
    .locals 0

    iput p1, p0, LYg/v;->v1:I

    iput p2, p0, LYg/v;->y1:I

    invoke-virtual {p0}, LYg/v;->m0()V

    invoke-virtual {p0}, LYg/j;->l()V

    invoke-virtual {p0}, LYg/j;->getSpeed()F

    move-result p1

    invoke-virtual {p0, p1}, LYg/v;->v0(F)F

    move-result p1

    iput p1, p0, LYg/v;->F1:F

    invoke-virtual {p0}, LYg/j;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LYg/j;->F()V

    invoke-virtual {p0}, LYg/j;->b0()V

    :cond_0
    return-void
.end method

.method public final F0()V
    .locals 4

    iget-object v0, p0, LYg/v;->L1:LYg/v$a;

    invoke-virtual {v0}, LYg/v$a;->o()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v3, p0, LYg/v;->M1:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, LYg/j;->setTranslatedDx(F)V

    iget-object v0, p0, LYg/v;->L1:LYg/v$a;

    invoke-virtual {v0}, LYg/v$a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v1, p0, LYg/v;->M1:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    :cond_1
    invoke-virtual {p0, v1}, LYg/j;->setTranslatedDy(F)V

    return-void
.end method

.method public final getBackgroundCircleColor()I
    .locals 1

    iget v0, p0, LYg/v;->q1:I

    return v0
.end method

.method public final getDegree()F
    .locals 1

    iget v0, p0, LYg/v;->F1:F

    return v0
.end method

.method public final getEndDegree()I
    .locals 1

    iget v0, p0, LYg/v;->y1:I

    return v0
.end method

.method public final getFulcrumX()F
    .locals 1

    iget-object v0, p0, LYg/v;->T:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    return v0
.end method

.method public final getFulcrumY()F
    .locals 1

    iget-object v0, p0, LYg/v;->T:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    return v0
.end method

.method public final getIndicator()Lah/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lah/b<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LYg/v;->S:Lah/b;

    return-object v0
.end method

.method public final getIndicatorLightColor()I
    .locals 1

    iget v0, p0, LYg/v;->V:I

    return v0
.end method

.method public final getInitTickPadding()F
    .locals 1

    iget v0, p0, LYg/v;->b2:F

    return v0
.end method

.method public final getMarkColor()I
    .locals 1

    iget-object v0, p0, LYg/v;->v0:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public final getMarkHeight()F
    .locals 1

    iget v0, p0, LYg/v;->m1:F

    return v0
.end method

.method public final getMarkPaint()Landroid/graphics/Paint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LYg/v;->v0:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getMarkStyle()LZg/b;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LYg/v;->v0:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    if-ne v0, v1, :cond_0

    sget-object v0, LZg/b;->ROUND:LZg/b;

    goto :goto_0

    :cond_0
    sget-object v0, LZg/b;->BUTT:LZg/b;

    :goto_0
    return-object v0
.end method

.method public final getMarkWidth()F
    .locals 1

    iget-object v0, p0, LYg/v;->v0:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public final getMarksNumber()I
    .locals 1

    iget v0, p0, LYg/v;->b1:I

    return v0
.end method

.method public final getMarksPadding()F
    .locals 1

    iget v0, p0, LYg/v;->i1:F

    return v0
.end method

.method public final getOnPrintTickLabel()LMf/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LMf/p<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, LYg/v;->m2:LMf/p;

    return-object v0
.end method

.method public final getSize()I
    .locals 2

    iget-object v0, p0, LYg/v;->L1:LYg/v$a;

    sget-object v1, LYg/v$a;->NORMAL:LYg/v$a;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, LYg/v$a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, LYg/v;->M1:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public final getSizePa()I
    .locals 2

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v0

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getSpeedometerMode()LYg/v$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LYg/v;->L1:LYg/v$a;

    return-object v0
.end method

.method public getSpeedometerWidth()F
    .locals 1

    invoke-super {p0}, LYg/j;->getSpeedometerWidth()F

    move-result v0

    return v0
.end method

.method public final getStartDegree()I
    .locals 1

    iget v0, p0, LYg/v;->v1:I

    return v0
.end method

.method public final getTickNumber()I
    .locals 1

    iget-object v0, p0, LYg/v;->R1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getTickPadding()F
    .locals 1

    iget v0, p0, LYg/v;->i2:F

    return v0
.end method

.method public final getTicks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LYg/v;->R1:Ljava/util/List;

    return-object v0
.end method

.method public final getViewBottom()F
    .locals 3

    invoke-virtual {p0}, LYg/v;->getViewCenterY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final getViewCenterX()F
    .locals 3

    iget-object v0, p0, LYg/v;->L1:LYg/v$a;

    sget-object v1, LYg/v$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getViewCenterY()F
    .locals 3

    iget-object v0, p0, LYg/v;->L1:LYg/v$a;

    sget-object v1, LYg/v$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    const/high16 v2, 0x3f000000    # 0.5f

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public final getViewLeft()F
    .locals 3

    invoke-virtual {p0}, LYg/v;->getViewCenterX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getViewRight()F
    .locals 3

    invoke-virtual {p0}, LYg/v;->getViewCenterX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final getViewTop()F
    .locals 3

    invoke-virtual {p0}, LYg/v;->getViewCenterY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final j0(Lbh/b;J)V
    .locals 2
    .param p1    # Lbh/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbh/b<",
            "*>;J)V"
        }
    .end annotation

    const-string v0, "note"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Lbh/b;->e(I)V

    iget-object v0, p0, LYg/v;->H1:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LYg/s;

    invoke-direct {v0, p0, p1}, LYg/s;-><init>(LYg/v;Lbh/b;)V

    invoke-virtual {p0, v0, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final m0()V
    .locals 4

    iget v0, p0, LYg/v;->v1:I

    if-ltz v0, :cond_5

    iget v1, p0, LYg/v;->y1:I

    if-ltz v1, :cond_4

    if-ge v0, v1, :cond_3

    sub-int/2addr v1, v0

    const/16 v2, 0x168

    if-gt v1, v2, :cond_2

    iget-object v1, p0, LYg/v;->L1:LYg/v$a;

    invoke-virtual {v1}, LYg/v$a;->g()I

    move-result v1

    const-string v2, " Mode !"

    const-string v3, " in "

    if-lt v0, v1, :cond_1

    iget v0, p0, LYg/v;->y1:I

    iget-object v1, p0, LYg/v;->L1:LYg/v$a;

    invoke-virtual {v1}, LYg/v$a;->e()I

    move-result v1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EndDegree must be smaller than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LYg/v;->L1:LYg/v$a;

    invoke-virtual {v1}, LYg/v$a;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LYg/v;->L1:LYg/v$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartDegree must be bigger than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LYg/v;->L1:LYg/v$a;

    invoke-virtual {v1}, LYg/v$a;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LYg/v;->L1:LYg/v$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(EndDegree - StartDegree) must be smaller than 360 !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EndDegree must be bigger than StartDegree !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EndDegree can\'t be Negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "StartDegree can\'t be Negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n0()V
    .locals 3

    iget-object v0, p0, LYg/v;->R1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ticks must be between [0f, 1f] !!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public abstract o0()V
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, LYg/j;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, LYg/j;->getCurrentSpeed()F

    move-result p1

    invoke-virtual {p0, p1}, LYg/v;->v0(F)F

    move-result p1

    iput p1, p0, LYg/v;->F1:F

    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    const/high16 v0, 0x437a0000    # 250.0f

    invoke-virtual {p0, v0}, LYg/j;->x(F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    if-ne v2, v3, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne v2, v3, :cond_2

    move p1, p2

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_5

    if-ne v2, v3, :cond_5

    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_5
    if-ne v1, v3, :cond_6

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_6
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p2, p0, LYg/v;->L1:LYg/v$a;

    invoke-virtual {p2}, LYg/v$a;->c()I

    move-result p2

    div-int p2, p1, p2

    iget-object v0, p0, LYg/v;->L1:LYg/v$a;

    invoke-virtual {v0}, LYg/v$a;->b()I

    move-result v0

    div-int/2addr p1, v0

    iget-object v0, p0, LYg/v;->L1:LYg/v$a;

    invoke-virtual {v0}, LYg/v$a;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, LYg/v;->L1:LYg/v$a;

    invoke-virtual {v0}, LYg/v$a;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    iget v0, p0, LYg/v;->M1:I

    add-int/2addr p2, v0

    goto :goto_1

    :cond_7
    iget v0, p0, LYg/v;->M1:I

    add-int/2addr p1, v0

    :cond_8
    :goto_1
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, LYg/j;->onSizeChanged(IIII)V

    iget-object p1, p0, LYg/v;->S:Lah/b;

    invoke-virtual {p1}, Lah/b;->s()V

    invoke-virtual {p0}, LYg/v;->F0()V

    return-void
.end method

.method public final p0(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LYg/j;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v1, p0, LYg/v;->v1:I

    rem-int/lit16 v2, v1, 0x168

    const/16 v3, 0x10e

    const/16 v4, 0xb4

    const/16 v5, 0x5a

    if-gt v2, v5, :cond_0

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_0

    :cond_0
    rem-int/lit16 v2, v1, 0x168

    if-gt v2, v4, :cond_1

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_0

    :cond_1
    rem-int/lit16 v1, v1, 0x168

    if-gt v1, v3, :cond_2

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, LYg/v;->m2:LMf/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, LYg/j;->getMinSpeed()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v2, v6}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    const-string v2, "format(...)"

    const-string v6, "%.0f"

    const/4 v7, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p0}, LYg/j;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0}, LYg/j;->getMinSpeed()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v0, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v8, p0, LYg/v;->v1:I

    int-to-float v8, v8

    const/high16 v9, 0x42b40000    # 90.0f

    add-float/2addr v8, v9

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v11

    invoke-virtual {p1, v8, v10, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v8, p0, LYg/v;->v1:I

    int-to-float v8, v8

    add-float/2addr v8, v9

    neg-float v8, v8

    invoke-virtual {p0}, LYg/v;->getSizePa()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v11

    invoke-virtual {p0}, LYg/j;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Paint;->getTextSize()F

    move-result v12

    sub-float/2addr v10, v12

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v10, v12

    invoke-virtual {p0}, LYg/j;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Paint;->getTextSize()F

    move-result v12

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    invoke-virtual {p1, v8, v10, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LYg/v;->getSizePa()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v11

    invoke-virtual {p0}, LYg/j;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Paint;->getTextSize()F

    move-result v10

    sub-float/2addr v8, v10

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v8, v10

    invoke-virtual {p0}, LYg/j;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Paint;->getTextSize()F

    move-result v10

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v10, v12

    invoke-virtual {p0}, LYg/j;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {p1, v0, v8, v10, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, LYg/j;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v8, p0, LYg/v;->y1:I

    rem-int/lit16 v10, v8, 0x168

    if-gt v10, v5, :cond_5

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_2

    :cond_5
    rem-int/lit16 v5, v8, 0x168

    if-gt v5, v4, :cond_6

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_2

    :cond_6
    rem-int/lit16 v8, v8, 0x168

    if-gt v8, v3, :cond_7

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    goto :goto_2

    :cond_7
    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_2
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, LYg/v;->m2:LMf/p;

    if-eqz v0, :cond_8

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, LYg/j;->getMaxSpeed()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v1, v3}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    :cond_8
    if-nez v1, :cond_9

    invoke-virtual {p0}, LYg/j;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0}, LYg/j;->getMaxSpeed()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, LYg/v;->y1:I

    int-to-float v0, v0

    add-float/2addr v0, v9

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v11

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v11

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v0, p0, LYg/v;->y1:I

    int-to-float v0, v0

    add-float/2addr v0, v9

    neg-float v0, v0

    invoke-virtual {p0}, LYg/v;->getSizePa()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v11

    invoke-virtual {p0}, LYg/j;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, LYg/j;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LYg/v;->getSizePa()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v11

    invoke-virtual {p0}, LYg/j;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, LYg/j;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, LYg/j;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final q0(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, LYg/v;->getFulcrumX()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, LYg/v;->getFulcrumY()F

    move-result v3

    sub-float/2addr v3, v2

    mul-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x42b40000    # 90.0f

    iget v1, p0, LYg/v;->F1:F

    add-float/2addr v1, v0

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p1, v1, v0, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-boolean v0, p0, LYg/v;->U:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, LYg/v;->r0(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, LYg/v;->S:Lah/b;

    invoke-virtual {v0, p1}, Lah/b;->b(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final r0(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LYg/j;->getPercentSpeed()F

    move-result v0

    iget v1, p0, LYg/v;->q2:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, LYg/j;->getPercentSpeed()F

    move-result v2

    iput v2, p0, LYg/v;->q2:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v0

    :goto_0
    iget v0, p0, LYg/v;->V:I

    const v1, 0xffffff

    filled-new-array {v0, v1}, [I

    move-result-object v0

    new-instance v1, Landroid/graphics/SweepGradient;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    const/high16 v5, 0x43b40000    # 360.0f

    div-float v5, v6, v5

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v8, v7, v9

    const/4 v8, 0x1

    aput v5, v7, v8

    invoke-direct {v1, v2, v4, v0, v7}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iget-object v0, p0, LYg/v;->q0:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, LYg/v;->q0:Landroid/graphics/Paint;

    iget-object v1, p0, LYg/v;->S:Lah/b;

    invoke-virtual {v1}, Lah/b;->h()F

    move-result v1

    iget-object v2, p0, LYg/v;->S:Lah/b;

    invoke-virtual {v2}, Lah/b;->j()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, LYg/v;->S:Lah/b;

    invoke-virtual {v0}, Lah/b;->j()F

    move-result v0

    iget-object v1, p0, LYg/v;->q0:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-direct {v4, v0, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {p0}, LYg/j;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1
    const/4 v7, 0x0

    iget-object v8, p0, LYg/v;->q0:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final s0(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LYg/v;->D0:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, LYg/v;->D0:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v3, p0, LYg/v;->i1:F

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, LYg/v;->D0:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget v3, p0, LYg/v;->i1:F

    iget v4, p0, LYg/v;->m1:F

    add-float/2addr v3, v4

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, LYg/v;->getStartDegree()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {p0}, LYg/v;->getEndDegree()I

    move-result v0

    invoke-virtual {p0}, LYg/v;->getStartDegree()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, LYg/v;->b1:I

    int-to-float v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    div-float/2addr v0, v3

    const/4 v3, 0x1

    if-gt v3, v1, :cond_0

    :goto_0
    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-virtual {p1, v0, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v4, p0, LYg/v;->D0:Landroid/graphics/Path;

    iget-object v5, p0, LYg/v;->v0:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eq v3, v1, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final setBackgroundCircleColor(I)V
    .locals 1

    iput p1, p0, LYg/v;->q1:I

    iget-object v0, p0, LYg/v;->W:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, LYg/j;->F()V

    return-void
.end method

.method public final setEndDegree(I)V
    .locals 1

    iget v0, p0, LYg/v;->v1:I

    invoke-virtual {p0, v0, p1}, LYg/v;->E0(II)V

    return-void
.end method

.method public setIndicator(Lah/b$b;)V
    .locals 3
    .param p1    # Lah/b$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "indicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lah/b;->f:Lah/b$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0, p1}, Lah/b$a;->a(Landroid/content/Context;LYg/v;Lah/b$b;)Lah/b;

    move-result-object p1

    invoke-virtual {p0, p1}, LYg/v;->setIndicator(Lah/b;)V

    return-void
.end method

.method public final setIndicator(Lah/b;)V
    .locals 1
    .param p1    # Lah/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lah/b<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "indicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, LYg/v;->S:Lah/b;

    invoke-virtual {v0}, Ljava/util/Observable;->deleteObservers()V

    .line 2
    invoke-virtual {p1, p0}, Lah/b;->p(LYg/v;)Lah/b;

    .line 3
    iput-object p1, p0, LYg/v;->S:Lah/b;

    .line 4
    invoke-virtual {p0}, LYg/j;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, LYg/v;->S:Lah/b;

    invoke-virtual {p1, p0}, Lah/b;->p(LYg/v;)Lah/b;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setIndicatorLightColor(I)V
    .locals 0

    iput p1, p0, LYg/v;->V:I

    return-void
.end method

.method public final setInitTickPadding(F)V
    .locals 0

    iput p1, p0, LYg/v;->b2:F

    return-void
.end method

.method public final setMarkColor(I)V
    .locals 1

    iget-object v0, p0, LYg/v;->v0:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final setMarkHeight(F)V
    .locals 0

    iput p1, p0, LYg/v;->m1:F

    invoke-virtual {p0}, LYg/j;->F()V

    return-void
.end method

.method public final setMarkStyle(LZg/b;)V
    .locals 1
    .param p1    # LZg/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "markStyle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LZg/b;->ROUND:LZg/b;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, LYg/v;->v0:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LYg/v;->v0:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :goto_0
    invoke-virtual {p0}, LYg/j;->F()V

    return-void
.end method

.method public final setMarkWidth(F)V
    .locals 1

    iget-object v0, p0, LYg/v;->v0:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, LYg/j;->F()V

    return-void
.end method

.method public final setMarksNumber(I)V
    .locals 0

    iput p1, p0, LYg/v;->b1:I

    invoke-virtual {p0}, LYg/j;->F()V

    return-void
.end method

.method public final setMarksPadding(F)V
    .locals 0

    iput p1, p0, LYg/v;->i1:F

    invoke-virtual {p0}, LYg/j;->F()V

    return-void
.end method

.method public final setOnPrintTickLabel(LMf/p;)V
    .locals 0
    .param p1    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/p<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Float;",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LYg/v;->m2:LMf/p;

    invoke-virtual {p0}, LYg/j;->F()V

    return-void
.end method

.method public final setSpeedometerMode(LYg/v$a;)V
    .locals 1
    .param p1    # LYg/v$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "speedometerMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LYg/v;->L1:LYg/v$a;

    sget-object v0, LYg/v$a;->NORMAL:LYg/v$a;

    if-eq p1, v0, :cond_0

    invoke-virtual {p1}, LYg/v$a;->g()I

    move-result v0

    iput v0, p0, LYg/v;->v1:I

    invoke-virtual {p1}, LYg/v$a;->e()I

    move-result p1

    iput p1, p0, LYg/v;->y1:I

    :cond_0
    invoke-virtual {p0}, LYg/v;->F0()V

    invoke-virtual {p0}, LYg/j;->l()V

    invoke-virtual {p0}, LYg/j;->getSpeed()F

    move-result p1

    invoke-virtual {p0, p1}, LYg/v;->v0(F)F

    move-result p1

    iput p1, p0, LYg/v;->F1:F

    iget-object p1, p0, LYg/v;->S:Lah/b;

    invoke-virtual {p1}, Lah/b;->s()V

    invoke-virtual {p0}, LYg/j;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, LYg/j;->F()V

    invoke-virtual {p0}, LYg/j;->b0()V

    :cond_1
    return-void
.end method

.method public setSpeedometerWidth(F)V
    .locals 0

    invoke-super {p0, p1}, LYg/j;->setSpeedometerWidth(F)V

    invoke-virtual {p0}, LYg/j;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LYg/v;->S:Lah/b;

    invoke-virtual {p1}, Lah/b;->s()V

    :cond_0
    return-void
.end method

.method public final setStartDegree(I)V
    .locals 1

    iget v0, p0, LYg/v;->y1:I

    invoke-virtual {p0, p1, v0}, LYg/v;->E0(II)V

    return-void
.end method

.method public final setTickNumber(I)V
    .locals 4

    if-ltz p1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_1

    int-to-float v3, v2

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, LYg/v;->setTicks(Ljava/util/List;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "tickNumber mustn\'t be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setTickPadding(F)V
    .locals 0

    iput p1, p0, LYg/v;->i2:F

    invoke-virtual {p0}, LYg/j;->F()V

    return-void
.end method

.method public final setTickRotation(Z)V
    .locals 0

    iput-boolean p1, p0, LYg/v;->V1:Z

    invoke-virtual {p0}, LYg/j;->F()V

    return-void
.end method

.method public final setTicks(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ticks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LYg/v;->R1:Ljava/util/List;

    invoke-virtual {p0}, LYg/v;->n0()V

    invoke-virtual {p0}, LYg/j;->F()V

    return-void
.end method

.method public final setWithIndicatorLight(Z)V
    .locals 0

    iput-boolean p1, p0, LYg/v;->U:Z

    return-void
.end method

.method public final t0(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LYg/v;->H1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lbh/b;

    invoke-virtual {v1}, Lbh/b;->l()Lbh/b$c;

    move-result-object v2

    sget-object v3, Lbh/b$c;->CenterSpeedometer:Lbh/b$c;

    const/high16 v4, 0x3f000000    # 0.5f

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-virtual {v1, p1, v2, v3}, Lbh/b;->g(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lbh/b;->l()Lbh/b$c;

    move-result-object v2

    sget-object v3, LYg/v$b;->b:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    invoke-virtual {p0}, LYg/v;->getViewCenterY()F

    move-result v2

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, LYg/j;->getHeightPa()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v2, v3

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v2

    int-to-float v2, v2

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, LYg/v;->S:Lah/b;

    invoke-virtual {v2}, Lah/b;->c()F

    move-result v2

    goto :goto_1

    :pswitch_4
    iget-object v2, p0, LYg/v;->S:Lah/b;

    invoke-virtual {v2}, Lah/b;->j()F

    move-result v2

    iget-object v3, p0, LYg/v;->S:Lah/b;

    invoke-virtual {v3}, Lah/b;->c()F

    move-result v3

    add-float/2addr v2, v3

    mul-float/2addr v2, v4

    goto :goto_1

    :pswitch_5
    iget-object v2, p0, LYg/v;->S:Lah/b;

    invoke-virtual {v2}, Lah/b;->j()F

    move-result v2

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v3, p0, LYg/v;->F1:F

    const/high16 v5, 0x42b40000    # 90.0f

    add-float/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    invoke-virtual {p1, v3, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v3, p0, LYg/v;->F1:F

    add-float/2addr v3, v5

    neg-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-virtual {p1, v3, v5, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-virtual {v1, p1, v3, v2}, Lbh/b;->g(Landroid/graphics/Canvas;FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final u0(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LYg/v;->R1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LYg/j;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v0, p0, LYg/v;->y1:I

    iget v1, p0, LYg/v;->v1:I

    sub-int/2addr v0, v1

    iget-object v1, p0, LYg/v;->R1:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_1

    invoke-static {}, Lpf/H;->b0()V

    :cond_1
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iget v6, p0, LYg/v;->v1:I

    int-to-float v6, v6

    int-to-float v7, v0

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v4, 0x42b40000    # 90.0f

    add-float/2addr v4, v6

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    invoke-virtual {p1, v4, v7, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-boolean v7, p0, LYg/v;->V1:Z

    if-nez v7, :cond_2

    neg-float v4, v4

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    iget v8, p0, LYg/v;->b2:F

    invoke-virtual {p0}, LYg/j;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Paint;->getTextSize()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, p0, LYg/v;->i2:F

    add-float/2addr v8, v9

    invoke-virtual {p1, v4, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_2
    iget-object v4, p0, LYg/v;->m2:LMf/p;

    if-eqz v4, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v6}, LYg/v;->w0(F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v4, v3, v7}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_4

    invoke-virtual {p0}, LYg/j;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p0, v6}, LYg/v;->w0(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v6, "%.0f"

    invoke-static {v3, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "format(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iget v4, p0, LYg/v;->b2:F

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget v6, p0, LYg/v;->i2:F

    add-float/2addr v4, v6

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {p0}, LYg/j;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v7

    invoke-static {v3, v2, v4, v6, v7}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    move v3, v5

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public v()Landroid/graphics/Canvas;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    return-object v0

    :cond_0
    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v0

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LYg/j;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-virtual {p0}, LYg/j;->getBackgroundBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v4, v2

    iget-object v2, p0, LYg/v;->W:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v1

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    return-object v0
.end method

.method public final v0(F)F
    .locals 2

    invoke-virtual {p0}, LYg/j;->getMinSpeed()F

    move-result v0

    sub-float/2addr p1, v0

    iget v0, p0, LYg/v;->y1:I

    iget v1, p0, LYg/v;->v1:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-virtual {p0}, LYg/j;->getMaxSpeed()F

    move-result v0

    invoke-virtual {p0}, LYg/j;->getMinSpeed()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    iget v0, p0, LYg/v;->v1:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1
.end method

.method public final w0(F)F
    .locals 2

    iget v0, p0, LYg/v;->v1:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, LYg/j;->getMaxSpeed()F

    move-result v0

    invoke-virtual {p0}, LYg/j;->getMinSpeed()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr p1, v0

    iget v0, p0, LYg/v;->y1:I

    iget v1, p0, LYg/v;->v1:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p0}, LYg/j;->getMinSpeed()F

    move-result v0

    add-float/2addr p1, v0

    return p1
.end method
