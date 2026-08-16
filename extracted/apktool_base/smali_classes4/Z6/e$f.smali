.class public LZ6/e$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE5/f$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ6/e;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/b;

.field public final synthetic b:Lorg/mohammedalaa/seekbar/RangeSeekBarView;

.field public final synthetic c:LZ6/e;


# direct methods
.method public constructor <init>(LZ6/e;LC5/b;Lorg/mohammedalaa/seekbar/RangeSeekBarView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$entry",
            "val$rangeSeekBarView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LZ6/e$f;->c:LZ6/e;

    iput-object p2, p0, LZ6/e$f;->a:LC5/b;

    iput-object p3, p0, LZ6/e$f;->b:Lorg/mohammedalaa/seekbar/RangeSeekBarView;

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

    iget-object v0, p0, LZ6/e$f;->a:LC5/b;

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

    iget-object v0, p0, LZ6/e$f;->b:Lorg/mohammedalaa/seekbar/RangeSeekBarView;

    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCurrentValue(I)V

    return-void
.end method
