.class public final LW0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/g;


# instance fields
.field public final synthetic a:LW0/a;


# direct methods
.method public constructor <init>(LW0/a;)V
    .locals 0

    iput-object p1, p0, LW0/i;->a:LW0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LW0/e;)V
    .locals 2

    iget-object v0, p0, LW0/i;->a:LW0/a;

    invoke-static {v0, p1}, LW0/a;->r(LW0/a;LW0/e;)V

    iget-object p1, p0, LW0/i;->a:LW0/a;

    invoke-static {p1}, LW0/a;->q(LW0/a;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW0/p;

    iget-object v1, p0, LW0/i;->a:LW0/a;

    invoke-static {v1}, LW0/a;->p(LW0/a;)LW0/e;

    move-result-object v1

    invoke-interface {v0, v1}, LW0/p;->d(LW0/e;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LW0/i;->a:LW0/a;

    invoke-static {p1}, LW0/a;->q(LW0/a;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    iget-object p1, p0, LW0/i;->a:LW0/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, LW0/a;->s(LW0/a;Landroid/os/Bundle;)V

    return-void
.end method
