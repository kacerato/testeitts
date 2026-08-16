.class public final Lud/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/util/DisplayMetrics;

.field public b:[F

.field public c:Z

.field public d:F

.field public e:Landroid/content/res/ColorStateList;

.field public f:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lud/d;->b:[F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lud/d;->c:Z

    iput v0, p0, Lud/d;->d:F

    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lud/d;->e:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lud/d;->f:Landroid/widget/ImageView$ScaleType;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lud/d;->a:Landroid/util/DisplayMetrics;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static synthetic a(Lud/d;)Z
    .locals 0

    iget-boolean p0, p0, Lud/d;->c:Z

    return p0
.end method

.method public static synthetic b(Lud/d;)Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lud/d;->e:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public static synthetic c(Lud/d;)F
    .locals 0

    iget p0, p0, Lud/d;->d:F

    return p0
.end method

.method public static synthetic d(Lud/d;)[F
    .locals 0

    iget-object p0, p0, Lud/d;->b:[F

    return-object p0
.end method

.method public static synthetic e(Lud/d;)Landroid/widget/ImageView$ScaleType;
    .locals 0

    iget-object p0, p0, Lud/d;->f:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method


# virtual methods
.method public f(I)Lud/d;
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lud/d;->e:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public g(Landroid/content/res/ColorStateList;)Lud/d;
    .locals 0

    iput-object p1, p0, Lud/d;->e:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public h(F)Lud/d;
    .locals 0

    iput p1, p0, Lud/d;->d:F

    return-object p0
.end method

.method public i(F)Lud/d;
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lud/d;->a:Landroid/util/DisplayMetrics;

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lud/d;->d:F

    return-object p0
.end method

.method public j()Lcom/squareup/picasso/Transformation;
    .locals 1

    new-instance v0, Lud/d$a;

    invoke-direct {v0, p0}, Lud/d$a;-><init>(Lud/d;)V

    return-object v0
.end method

.method public k(F)Lud/d;
    .locals 2

    iget-object v0, p0, Lud/d;->b:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    return-object p0
.end method

.method public l(IF)Lud/d;
    .locals 1

    iget-object v0, p0, Lud/d;->b:[F

    aput p2, v0, p1

    return-object p0
.end method

.method public m(F)Lud/d;
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lud/d;->a:Landroid/util/DisplayMetrics;

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-virtual {p0, p1}, Lud/d;->k(F)Lud/d;

    move-result-object p1

    return-object p1
.end method

.method public n(IF)Lud/d;
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lud/d;->a:Landroid/util/DisplayMetrics;

    invoke-static {v0, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lud/d;->l(IF)Lud/d;

    move-result-object p1

    return-object p1
.end method

.method public o(Z)Lud/d;
    .locals 0

    iput-boolean p1, p0, Lud/d;->c:Z

    return-object p0
.end method

.method public p(Landroid/widget/ImageView$ScaleType;)Lud/d;
    .locals 0

    iput-object p1, p0, Lud/d;->f:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method
