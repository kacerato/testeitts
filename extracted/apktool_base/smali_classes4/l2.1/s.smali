.class public final Ll2/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/w;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Ll2/s;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Ll2/s;->a:F

    const v1, 0x3f8ccccd    # 1.1f

    .line 4
    iput v1, p0, Ll2/s;->b:F

    const v1, 0x3f4ccccd    # 0.8f

    .line 5
    iput v1, p0, Ll2/s;->c:F

    .line 6
    iput v0, p0, Ll2/s;->d:F

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Ll2/s;->f:Z

    .line 8
    iput-boolean p1, p0, Ll2/s;->e:Z

    return-void
.end method

.method public static c(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v1

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    mul-float v3, v0, p1

    mul-float v4, v0, p2

    const/4 v5, 0x2

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v3, v6, v7

    const/4 v3, 0x1

    aput v4, v6, v3

    invoke-static {v2, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    mul-float/2addr p1, v1

    mul-float/2addr p2, v1

    new-array v5, v5, [F

    aput p1, v5, v7

    aput p2, v5, v3

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    filled-new-array {v2, p1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance p2, Ll2/s$a;

    invoke-direct {p2, p0, v0, v1}, Ll2/s$a;-><init>(Landroid/view/View;FF)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean p1, p0, Ll2/s;->f:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-boolean p1, p0, Ll2/s;->e:Z

    if-eqz p1, :cond_1

    iget p1, p0, Ll2/s;->a:F

    iget v0, p0, Ll2/s;->b:F

    invoke-static {p2, p1, v0}, Ll2/s;->c(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_1
    iget p1, p0, Ll2/s;->d:F

    iget v0, p0, Ll2/s;->c:F

    invoke-static {p2, p1, v0}, Ll2/s;->c(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean p1, p0, Ll2/s;->e:Z

    if-eqz p1, :cond_0

    iget p1, p0, Ll2/s;->c:F

    iget v0, p0, Ll2/s;->d:F

    invoke-static {p2, p1, v0}, Ll2/s;->c(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_0
    iget p1, p0, Ll2/s;->b:F

    iget v0, p0, Ll2/s;->a:F

    invoke-static {p2, p1, v0}, Ll2/s;->c(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public d()F
    .locals 1

    iget v0, p0, Ll2/s;->d:F

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Ll2/s;->c:F

    return v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Ll2/s;->b:F

    return v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, Ll2/s;->a:F

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Ll2/s;->e:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Ll2/s;->f:Z

    return v0
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, Ll2/s;->e:Z

    return-void
.end method

.method public k(F)V
    .locals 0

    iput p1, p0, Ll2/s;->d:F

    return-void
.end method

.method public l(F)V
    .locals 0

    iput p1, p0, Ll2/s;->c:F

    return-void
.end method

.method public m(F)V
    .locals 0

    iput p1, p0, Ll2/s;->b:F

    return-void
.end method

.method public n(F)V
    .locals 0

    iput p1, p0, Ll2/s;->a:F

    return-void
.end method

.method public o(Z)V
    .locals 0

    iput-boolean p1, p0, Ll2/s;->f:Z

    return-void
.end method
