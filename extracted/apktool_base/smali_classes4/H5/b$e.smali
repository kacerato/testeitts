.class public LH5/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldn/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH5/b;->D1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:F

.field public b:I

.field public final synthetic c:LH5/b;


# direct methods
.method public constructor <init>(LH5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LH5/b$e;->c:LH5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x40a00000    # 5.0f

    iput p1, p0, LH5/b$e;->a:F

    const/4 p1, 0x0

    iput p1, p0, LH5/b$e;->b:I

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

    iget-object p1, p0, LH5/b$e;->c:LH5/b;

    invoke-static {p1}, LH5/b;->t1(LH5/b;)LH5/b$g;

    move-result-object p2

    invoke-interface {p2}, LH5/b$g;->get()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, LH5/b;->q1(LH5/b;F)F

    return-void
.end method

.method public b(Lorg/mohammedalaa/seekbar/RangeSeekBarView;IZ)V
    .locals 1
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

    if-eqz p3, :cond_0

    iput p2, p0, LH5/b$e;->b:I

    int-to-float p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    sub-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    iget p2, p0, LH5/b$e;->a:F

    mul-float/2addr p1, p2

    iget-object p2, p0, LH5/b$e;->c:LH5/b;

    invoke-static {p2}, LH5/b;->p1(LH5/b;)F

    move-result p2

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object p3

    new-instance v0, LH5/b$e$a;

    invoke-direct {v0, p0, p1, p2}, LH5/b$e$a;-><init>(LH5/b$e;FF)V

    invoke-virtual {p3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c(Lorg/mohammedalaa/seekbar/RangeSeekBarView;I)V
    .locals 2
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

    iget p1, p0, LH5/b$e;->b:I

    int-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    sub-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    iget p2, p0, LH5/b$e;->a:F

    mul-float/2addr p1, p2

    iget-object p2, p0, LH5/b$e;->c:LH5/b;

    invoke-static {p2}, LH5/b;->p1(LH5/b;)F

    move-result p2

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, LH5/b$e$b;

    invoke-direct {v1, p0, p1, p2}, LH5/b$e$b;-><init>(LH5/b$e;FF)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
