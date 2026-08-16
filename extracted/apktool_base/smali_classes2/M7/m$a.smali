.class public LM7/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM7/m;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:LM7/m;


# direct methods
.method public constructor <init>(LM7/m;Landroid/content/Context;)V
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

    iput-object p1, p0, LM7/m$a;->c:LM7/m;

    iput-object p2, p0, LM7/m$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, LN7/c;->Y()V

    iget-object v0, p0, LM7/m$a;->c:LM7/m;

    invoke-static {v0}, LM7/m;->q(LM7/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LM7/m$a;->c:LM7/m;

    iget v1, v0, LM7/m;->r:I

    invoke-static {v0}, LM7/m;->r(LM7/m;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, LM7/m;->R(IZ)LM7/m;

    iget-object v0, p0, LM7/m$a;->c:LM7/m;

    iget v1, v0, LM7/m;->x:I

    invoke-static {v0}, LM7/m;->s(LM7/m;)Z

    move-result v2

    invoke-static {v0, v1, v2}, LM7/m;->t(LM7/m;IZ)V

    new-instance v0, Lkd/a;

    invoke-direct {v0}, Lkd/a;-><init>()V

    new-instance v1, LM7/m$a$a;

    invoke-direct {v1, p0}, LM7/m$a$a;-><init>(LM7/m$a;)V

    const/16 v2, 0x32

    invoke-virtual {v0, v2, v1}, Lkd/a;->a(ILkd/b;)V

    :cond_0
    iget-object v0, p0, LM7/m$a;->c:LM7/m;

    iget-object v1, v0, LM7/m;->j:LM7/n;

    if-eqz v1, :cond_1

    iget-object v2, p0, LM7/m$a;->b:Landroid/content/Context;

    invoke-interface {v1, p1, v2, v0}, LM7/n;->a(Landroid/view/View;Landroid/content/Context;LM7/m;)V

    :cond_1
    return-void
.end method
