.class public LC5/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE5/g$i;


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


# direct methods
.method public constructor <init>(LC5/b;Lorg/mohammedalaa/seekbar/RangeSeekBarView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$entry",
            "val$rangeSeekBarView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LC5/h$b;->a:LC5/b;

    iput-object p2, p0, LC5/h$b;->b:Lorg/mohammedalaa/seekbar/RangeSeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newValue"
        }
    .end annotation

    iget-object v0, p0, LC5/h$b;->b:Lorg/mohammedalaa/seekbar/RangeSeekBarView;

    invoke-virtual {v0, p1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCurrentValue(I)V

    return-void
.end method

.method public c(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newValue"
        }
    .end annotation

    int-to-float v0, p1

    iget-object v1, p0, LC5/h$b;->a:LC5/b;

    iget v2, v1, LC5/b;->w:F

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    float-to-int p1, v2

    return p1

    :cond_0
    iget v1, v1, LC5/b;->v:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    float-to-int p1, v1

    :cond_1
    return p1
.end method
