.class public LM7/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM7/e;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:LM7/e;


# direct methods
.method public constructor <init>(LM7/e;Landroid/content/Context;)V
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

    iput-object p1, p0, LM7/e$a;->c:LM7/e;

    iput-object p2, p0, LM7/e$a;->b:Landroid/content/Context;

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

    iget-object v0, p0, LM7/e$a;->c:LM7/e;

    invoke-static {v0}, LM7/e;->q(LM7/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LM7/e$a;->c:LM7/e;

    iget v1, v0, LM7/e;->r:I

    invoke-static {v0}, LM7/e;->r(LM7/e;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, LM7/e;->R(IZ)LM7/e;

    iget-object v0, p0, LM7/e$a;->c:LM7/e;

    iget v1, v0, LM7/e;->x:I

    invoke-static {v0}, LM7/e;->s(LM7/e;)Z

    move-result v2

    invoke-static {v0, v1, v2}, LM7/e;->t(LM7/e;IZ)V

    new-instance v0, Lkd/a;

    invoke-direct {v0}, Lkd/a;-><init>()V

    new-instance v1, LM7/e$a$a;

    invoke-direct {v1, p0}, LM7/e$a$a;-><init>(LM7/e$a;)V

    const/16 v2, 0x32

    invoke-virtual {v0, v2, v1}, Lkd/a;->a(ILkd/b;)V

    :cond_0
    iget-object v0, p0, LM7/e$a;->c:LM7/e;

    iget-object v1, v0, LM7/e;->j:LM7/f;

    if-eqz v1, :cond_1

    iget-object v2, p0, LM7/e$a;->b:Landroid/content/Context;

    invoke-interface {v1, p1, v2, v0}, LM7/f;->a(Landroid/view/View;Landroid/content/Context;LM7/e;)V

    :cond_1
    return-void
.end method
