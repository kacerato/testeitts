.class public LH5/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldn/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH5/a;->A1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:F

.field public b:I

.field public final synthetic c:LH5/a;


# direct methods
.method public constructor <init>(LH5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LH5/a$g;->c:LH5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x40a00000    # 5.0f

    iput p1, p0, LH5/a$g;->a:F

    const/4 p1, 0x0

    iput p1, p0, LH5/a$g;->b:I

    return-void
.end method


# virtual methods
.method public a(Lorg/mohammedalaa/seekbar/RangeSeekBarView;I)V
    .locals 0
    .param p1    # Lorg/mohammedalaa/seekbar/RangeSeekBarView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rangeSeekBarView",
            "i"
        }
    .end annotation

    const/16 p2, 0x32

    invoke-virtual {p1, p2}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCurrentValue(I)V

    return-void
.end method

.method public b(Lorg/mohammedalaa/seekbar/RangeSeekBarView;IZ)V
    .locals 0
    .param p1    # Lorg/mohammedalaa/seekbar/RangeSeekBarView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rangeSeekBarView",
            "i",
            "fromUser"
        }
    .end annotation

    if-eqz p3, :cond_1

    iput p2, p0, LH5/a$g;->b:I

    int-to-float p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    sub-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    iget p2, p0, LH5/a$g;->a:F

    mul-float/2addr p1, p2

    iget-object p2, p0, LH5/a$g;->c:LH5/a;

    invoke-static {p2}, LH5/a;->v1(LH5/a;)LH5/a$i;

    move-result-object p2

    invoke-interface {p2}, LH5/a$i;->get()F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p3, p1, p3

    if-lez p3, :cond_0

    mul-float/2addr p1, p1

    invoke-static {}, LK8/d;->e()F

    move-result p3

    mul-float/2addr p1, p3

    add-float/2addr p2, p1

    iget-object p1, p0, LH5/a$g;->c:LH5/a;

    invoke-static {p1}, LH5/a;->v1(LH5/a;)LH5/a$i;

    move-result-object p1

    invoke-interface {p1, p2}, LH5/a$i;->a(F)V

    goto :goto_0

    :cond_0
    mul-float/2addr p1, p1

    invoke-static {}, LK8/d;->e()F

    move-result p3

    mul-float/2addr p1, p3

    sub-float/2addr p2, p1

    iget-object p1, p0, LH5/a$g;->c:LH5/a;

    invoke-static {p1}, LH5/a;->v1(LH5/a;)LH5/a$i;

    move-result-object p1

    invoke-interface {p1, p2}, LH5/a$i;->a(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Lorg/mohammedalaa/seekbar/RangeSeekBarView;I)V
    .locals 1
    .param p1    # Lorg/mohammedalaa/seekbar/RangeSeekBarView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rangeSeekBarView",
            "i"
        }
    .end annotation

    iget p1, p0, LH5/a$g;->b:I

    int-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    sub-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    iget p2, p0, LH5/a$g;->a:F

    mul-float/2addr p1, p2

    iget-object p2, p0, LH5/a$g;->c:LH5/a;

    invoke-static {p2}, LH5/a;->v1(LH5/a;)LH5/a$i;

    move-result-object p2

    invoke-interface {p2}, LH5/a$i;->get()F

    move-result p2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    mul-float/2addr p1, p1

    invoke-static {}, LK8/d;->e()F

    move-result v0

    mul-float/2addr p1, v0

    add-float/2addr p2, p1

    iget-object p1, p0, LH5/a$g;->c:LH5/a;

    invoke-static {p1}, LH5/a;->v1(LH5/a;)LH5/a$i;

    move-result-object p1

    invoke-interface {p1, p2}, LH5/a$i;->a(F)V

    goto :goto_0

    :cond_0
    mul-float/2addr p1, p1

    invoke-static {}, LK8/d;->e()F

    move-result v0

    mul-float/2addr p1, v0

    sub-float/2addr p2, p1

    iget-object p1, p0, LH5/a$g;->c:LH5/a;

    invoke-static {p1}, LH5/a;->v1(LH5/a;)LH5/a$i;

    move-result-object p1

    invoke-interface {p1, p2}, LH5/a$i;->a(F)V

    :goto_0
    return-void
.end method
