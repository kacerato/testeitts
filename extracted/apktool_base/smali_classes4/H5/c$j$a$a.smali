.class public LH5/c$j$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH5/c$j$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:F

.field public final synthetic c:LH5/c$j$a;


# direct methods
.method public constructor <init>(LH5/c$j$a;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$increment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LH5/c$j$a$a;->c:LH5/c$j$a;

    iput p2, p0, LH5/c$j$a$a;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LH5/c$j$a$a;->c:LH5/c$j$a;

    iget-object v0, v0, LH5/c$j$a;->b:LH5/c$j;

    iget-object v0, v0, LH5/c$j;->c:LH5/c;

    iget v1, p0, LH5/c$j$a$a;->b:F

    invoke-static {}, LK8/d;->e()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, LH5/c;->w1(LH5/c;F)V

    iget-object v0, p0, LH5/c$j$a$a;->c:LH5/c$j$a;

    iget-object v0, v0, LH5/c$j$a;->b:LH5/c$j;

    iget-object v0, v0, LH5/c$j;->b:LJAVARuntime/Runnable;

    if-eqz v0, :cond_0

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
