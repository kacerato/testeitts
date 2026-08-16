.class public LM7/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM7/b;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:LM7/b;


# direct methods
.method public constructor <init>(LM7/b;Landroid/content/Context;)V
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

    iput-object p1, p0, LM7/b$a;->c:LM7/b;

    iput-object p2, p0, LM7/b$a;->b:Landroid/content/Context;

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

    iget-object v0, p0, LM7/b$a;->c:LM7/b;

    invoke-static {v0}, LM7/b;->q(LM7/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LM7/b$a;->c:LM7/b;

    iget v1, v0, LM7/b;->o:I

    invoke-static {v0}, LM7/b;->r(LM7/b;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, LM7/b;->L(IZ)LM7/b;

    new-instance v0, Lkd/a;

    invoke-direct {v0}, Lkd/a;-><init>()V

    new-instance v1, LM7/b$a$a;

    invoke-direct {v1, p0}, LM7/b$a$a;-><init>(LM7/b$a;)V

    const/16 v2, 0x32

    invoke-virtual {v0, v2, v1}, Lkd/a;->a(ILkd/b;)V

    :cond_0
    iget-object v0, p0, LM7/b$a;->c:LM7/b;

    iget-object v1, v0, LM7/b;->i:LM7/a;

    if-eqz v1, :cond_1

    iget-object v2, p0, LM7/b$a;->b:Landroid/content/Context;

    invoke-interface {v1, p1, v2, v0}, LM7/a;->a(Landroid/view/View;Landroid/content/Context;LM7/b;)V

    :cond_1
    return-void
.end method
