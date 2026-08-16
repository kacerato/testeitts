.class public LH5/e$j$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH5/e$j$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:LH5/e$j$a;


# direct methods
.method public constructor <init>(LH5/e$j$a;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$2",
            "val$increment",
            "val$value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LH5/e$j$a$a;->d:LH5/e$j$a;

    iput p2, p0, LH5/e$j$a$a;->b:F

    iput p3, p0, LH5/e$j$a$a;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, LH5/e$j$a$a;->b:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, LH5/e$j$a$a;->c:F

    mul-float/2addr v0, v0

    invoke-static {}, LK8/d;->e()F

    move-result v2

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    iget-object v0, p0, LH5/e$j$a$a;->d:LH5/e$j$a;

    iget-object v0, v0, LH5/e$j$a;->b:LH5/e$j;

    iget-object v0, v0, LH5/e$j;->c:LH5/e;

    invoke-static {v0, v1}, LH5/e;->x1(LH5/e;F)V

    goto :goto_0

    :cond_0
    iget v1, p0, LH5/e$j$a$a;->c:F

    mul-float/2addr v0, v0

    invoke-static {}, LK8/d;->e()F

    move-result v2

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    iget-object v0, p0, LH5/e$j$a$a;->d:LH5/e$j$a;

    iget-object v0, v0, LH5/e$j$a;->b:LH5/e$j;

    iget-object v0, v0, LH5/e$j;->c:LH5/e;

    invoke-static {v0, v1}, LH5/e;->x1(LH5/e;F)V

    :goto_0
    iget-object v0, p0, LH5/e$j$a$a;->d:LH5/e$j$a;

    iget-object v0, v0, LH5/e$j$a;->b:LH5/e$j;

    iget-object v0, v0, LH5/e$j;->a:LJAVARuntime/Runnable;

    if-eqz v0, :cond_1

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
