.class public LH5/c$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH5/c$j;->c(Lorg/mohammedalaa/seekbar/RangeSeekBarView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LH5/c$j;


# direct methods
.method public constructor <init>(LH5/c$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LH5/c$j$a;->b:LH5/c$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LH5/c$j$a;->b:LH5/c$j;

    iget v1, v0, LH5/c$j;->a:F

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    iget-object v0, v0, LH5/c$j;->c:LH5/c;

    invoke-static {v0}, LH5/c;->x1(LH5/c;)F

    move-result v0

    mul-float/2addr v1, v0

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    iget-object v0, p0, LH5/c$j$a;->b:LH5/c$j;

    iget-object v0, v0, LH5/c$j;->c:LH5/c;

    invoke-static {v0}, LH5/c;->z1(LH5/c;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LH5/c$j$a;->b:LH5/c$j;

    iget-object v0, v0, LH5/c$j;->c:LH5/c;

    invoke-static {v0}, LH5/c;->z1(LH5/c;)Landroid/view/View;

    move-result-object v0

    new-instance v2, LH5/c$j$a$a;

    invoke-direct {v2, p0, v1}, LH5/c$j$a$a;-><init>(LH5/c$j$a;F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
