.class public Li5/b$c$a;
.super Lt5/i$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li5/b$c;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li5/b$c;


# direct methods
.method public constructor <init>(Li5/b$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Li5/b$c$a;->a:Li5/b$c;

    invoke-direct {p0}, Lt5/i$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Li5/b$c$a;->a:Li5/b$c;

    iget-object v0, v0, Li5/b$c;->a:Li5/b;

    invoke-static {v0, p1}, Li5/b;->n0(Li5/b;F)F

    return-void
.end method

.method public get()F
    .locals 1

    iget-object v0, p0, Li5/b$c$a;->a:Li5/b$c;

    iget-object v0, v0, Li5/b$c;->a:Li5/b;

    invoke-static {v0}, Li5/b;->m0(Li5/b;)F

    move-result v0

    return v0
.end method

.method public getMax()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getMin()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
