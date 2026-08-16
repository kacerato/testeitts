.class public LM7/c$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM7/c;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:LM7/c;


# direct methods
.method public constructor <init>(LM7/c;Landroid/content/Context;)V
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

    iput-object p1, p0, LM7/c$a;->c:LM7/c;

    iput-object p2, p0, LM7/c$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, LM7/c$a;->c:LM7/c;

    invoke-static {v0}, LM7/c;->q(LM7/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LM7/c$a;->c:LM7/c;

    iget v1, v0, LM7/c;->s:I

    invoke-static {v0}, LM7/c;->r(LM7/c;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, LM7/c;->R(IZ)LM7/c;

    iget-object v0, p0, LM7/c$a;->c:LM7/c;

    iget v1, v0, LM7/c;->y:I

    invoke-static {v0}, LM7/c;->s(LM7/c;)Z

    move-result v2

    invoke-static {v0, v1, v2}, LM7/c;->t(LM7/c;IZ)V

    new-instance v0, Lkd/a;

    invoke-direct {v0}, Lkd/a;-><init>()V

    new-instance v1, LM7/c$a$a;

    invoke-direct {v1, p0}, LM7/c$a$a;-><init>(LM7/c$a;)V

    const/16 v2, 0x32

    invoke-virtual {v0, v2, v1}, Lkd/a;->a(ILkd/b;)V

    :cond_0
    iget-object v0, p0, LM7/c$a;->c:LM7/c;

    iget-object v1, v0, LM7/c;->j:LM7/d;

    if-eqz v1, :cond_1

    iget-object v2, p0, LM7/c$a;->b:Landroid/content/Context;

    invoke-interface {v1, p1, v2, v0}, LM7/d;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V

    :cond_1
    return-void
.end method
