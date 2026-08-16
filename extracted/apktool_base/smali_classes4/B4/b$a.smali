.class public LB4/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG7/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LB4/b;-><init>(LB4/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LB4/b;


# direct methods
.method public constructor <init>(LB4/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LB4/b$a;->a:LB4/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LB4/b$a;->a:LB4/b;

    invoke-virtual {v0}, LB4/b;->u()LB4/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-boolean p1, v0, LB4/a;->a:Z

    iget-object p1, p0, LB4/b$a;->a:LB4/b;

    iget-object v0, p1, LF7/i;->l:LF7/m;

    if-eqz v0, :cond_0

    iget-object v0, p1, LF7/i;->j:LF7/c;

    if-eqz v0, :cond_0

    iget-object v1, p1, LF7/i;->k:LF7/b;

    invoke-interface {v1}, LF7/b;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, LB4/b;->o:LF7/e;

    invoke-interface {v0, p1, v1, v2}, LF7/c;->a(LF7/i;Landroid/content/Context;LF7/e;)V

    iget-object p1, p0, LB4/b$a;->a:LB4/b;

    iget-object p1, p1, LF7/i;->l:LF7/m;

    iget-object p1, p1, LF7/m;->a:Landroid/widget/TextView;

    iget v0, v2, LF7/e;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, LB4/b$a;->a:LB4/b;

    invoke-virtual {v0}, LB4/b;->u()LB4/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, LB4/a;->a:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
