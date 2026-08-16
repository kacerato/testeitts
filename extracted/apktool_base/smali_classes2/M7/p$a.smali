.class public LM7/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM7/p;->s(LM7/g;)LM7/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LM7/r;

.field public final synthetic b:LM7/p;


# direct methods
.method public constructor <init>(LM7/p;LM7/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$oldListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LM7/p$a;->b:LM7/p;

    iput-object p2, p0, LM7/p$a;->a:LM7/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ZLandroid/view/View;Landroid/content/Context;LM7/o;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "v",
            "context",
            "tbToggle",
            "isFromUserAction"
        }
    .end annotation

    invoke-static {}, LN7/c;->Y()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, LM7/p$a;->b:LM7/p;

    invoke-static {v1}, LM7/p;->q(LM7/p;)LM7/o;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LM7/p$a;->b:LM7/p;

    invoke-static {v1}, LM7/p;->q(LM7/p;)LM7/o;

    move-result-object v1

    if-eq v1, p4, :cond_0

    iget-object v1, p0, LM7/p$a;->b:LM7/p;

    invoke-static {v1}, LM7/p;->q(LM7/p;)LM7/o;

    move-result-object v1

    iget-object v2, p0, LM7/p$a;->b:LM7/p;

    const/4 v3, 0x0

    invoke-static {v2, v3}, LM7/p;->r(LM7/p;LM7/o;)LM7/o;

    invoke-virtual {v1, v0, v0, p5}, LM7/o;->z0(ZZZ)V

    :cond_0
    iget-object v0, p0, LM7/p$a;->b:LM7/p;

    invoke-static {v0, p4}, LM7/p;->r(LM7/p;LM7/o;)LM7/o;

    iget-object v0, p0, LM7/p$a;->b:LM7/p;

    iget-object v1, v0, LM7/p;->j:LM7/q;

    if-eqz v1, :cond_1

    invoke-static {v0}, LM7/p;->q(LM7/p;)LM7/o;

    move-result-object v0

    iget-object v2, p0, LM7/p$a;->b:LM7/p;

    iget-object v2, v2, LM7/p;->k:Ljava/util/List;

    invoke-interface {v2, p4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v0, v2, p3}, LM7/q;->a(LM7/o;ILandroid/content/Context;)V

    :cond_1
    iget-object v3, p0, LM7/p$a;->a:LM7/r;

    if-eqz v3, :cond_3

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, LM7/r;->b(ZLandroid/view/View;Landroid/content/Context;LM7/o;Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, LM7/p$a;->b:LM7/p;

    invoke-static {p1}, LM7/p;->q(LM7/p;)LM7/o;

    move-result-object p1

    if-ne p4, p1, :cond_3

    const/4 p1, 0x1

    invoke-virtual {p4, p1, v0, p5}, LM7/o;->z0(ZZZ)V

    :cond_3
    :goto_0
    return-void
.end method
