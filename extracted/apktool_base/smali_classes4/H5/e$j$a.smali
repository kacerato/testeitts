.class public LH5/e$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH5/e$j;->c(Lorg/mohammedalaa/seekbar/RangeSeekBarView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LH5/e$j;


# direct methods
.method public constructor <init>(LH5/e$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LH5/e$j$a;->b:LH5/e$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LH5/e$j$a;->b:LH5/e$j;

    iget v1, v0, LH5/e$j;->b:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iget-object v0, v0, LH5/e$j;->c:LH5/e;

    invoke-static {v0}, LH5/e;->y1(LH5/e;)F

    move-result v0

    mul-float/2addr v1, v0

    iget-object v0, p0, LH5/e$j$a;->b:LH5/e$j;

    iget-object v0, v0, LH5/e$j;->c:LH5/e;

    invoke-static {v0}, LH5/e;->w1(LH5/e;)F

    move-result v0

    iget-object v2, p0, LH5/e$j$a;->b:LH5/e$j;

    iget-object v2, v2, LH5/e$j;->c:LH5/e;

    invoke-static {v2}, LH5/e;->A1(LH5/e;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, LH5/e$j$a;->b:LH5/e$j;

    iget-object v2, v2, LH5/e$j;->c:LH5/e;

    invoke-static {v2}, LH5/e;->A1(LH5/e;)Landroid/view/View;

    move-result-object v2

    new-instance v3, LH5/e$j$a$a;

    invoke-direct {v3, p0, v1, v0}, LH5/e$j$a$a;-><init>(LH5/e$j$a;FF)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
