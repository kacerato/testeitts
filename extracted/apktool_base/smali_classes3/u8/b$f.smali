.class public Lu8/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/b;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lu8/b;


# direct methods
.method public constructor <init>(Lu8/b;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lu8/b$f;->b:Lu8/b;

    iput-object p2, p0, Lu8/b$f;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lu8/b$f;->b:Lu8/b;

    const-string v1, "11/14 Error"

    invoke-static {v0, v1}, Lu8/b;->E(Lu8/b;Ljava/lang/String;)V

    return-void
.end method

.method public onProgressChange(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "count",
            "max"
        }
    .end annotation

    return-void
.end method

.method public onSuccess()V
    .locals 3

    iget-object v0, p0, Lu8/b$f;->b:Lu8/b;

    invoke-static {v0}, Lu8/b;->l(Lu8/b;)Lu8/a;

    move-result-object v0

    new-instance v1, Lu8/b$f$a;

    invoke-direct {v1, p0}, Lu8/b$f$a;-><init>(Lu8/b$f;)V

    iget-object v2, p0, Lu8/b$f;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lu8/a;->o(Lu8/d;Landroid/content/Context;)V

    return-void
.end method
