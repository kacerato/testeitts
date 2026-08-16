.class public Lzd/c$b;
.super Lzd/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzd/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final g:F = 3.0f


# instance fields
.field public final e:Landroid/view/animation/Interpolator;

.field public final f:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x40400000    # 3.0f

    .line 1
    invoke-direct {p0, v0}, Lzd/c$b;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lzd/c;-><init>()V

    .line 3
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, p1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lzd/c$b;->e:Landroid/view/animation/Interpolator;

    .line 4
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, p1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lzd/c$b;->f:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 1

    iget-object v0, p0, Lzd/c$b;->e:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    return p1
.end method

.method public b(F)F
    .locals 1

    iget-object v0, p0, Lzd/c$b;->f:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    return p1
.end method

.method public c(F)F
    .locals 2

    invoke-virtual {p0, p1}, Lzd/c$b;->a(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    invoke-virtual {p0, p1}, Lzd/c$b;->b(F)F

    move-result p1

    add-float/2addr v0, p1

    div-float/2addr v1, v0

    return v1
.end method
