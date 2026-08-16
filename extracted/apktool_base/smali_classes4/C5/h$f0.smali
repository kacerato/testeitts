.class public LC5/h$f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE5/f$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/b;

.field public final synthetic b:Lorg/mohammedalaa/seekbar/RangeSeekBarView;

.field public final synthetic c:F


# direct methods
.method public constructor <init>(LC5/b;Lorg/mohammedalaa/seekbar/RangeSeekBarView;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$entry",
            "val$rangeSeekBarView",
            "val$precision"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LC5/h$f0;->a:LC5/b;

    iput-object p2, p0, LC5/h$f0;->b:Lorg/mohammedalaa/seekbar/RangeSeekBarView;

    iput p3, p0, LC5/h$f0;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newValue"
        }
    .end annotation

    iget-object v0, p0, LC5/h$f0;->a:LC5/b;

    iget-boolean v1, v0, LC5/b;->y:Z

    if-eqz v1, :cond_1

    iget v1, v0, LC5/b;->w:F

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    return v1

    :cond_0
    iget v0, v0, LC5/b;->v:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method public b(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newValue"
        }
    .end annotation

    iget-object v0, p0, LC5/h$f0;->b:Lorg/mohammedalaa/seekbar/RangeSeekBarView;

    iget v1, p0, LC5/h$f0;->c:F

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCurrentValue(I)V

    return-void
.end method
