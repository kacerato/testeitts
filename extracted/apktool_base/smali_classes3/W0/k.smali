.class public final LW0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/p;


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:LW0/a;


# direct methods
.method public constructor <init>(LW0/a;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, LW0/k;->b:LW0/a;

    iput-object p2, p0, LW0/k;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d(LW0/e;)V
    .locals 1

    iget-object p1, p0, LW0/k;->b:LW0/a;

    invoke-static {p1}, LW0/a;->p(LW0/a;)LW0/e;

    move-result-object p1

    iget-object v0, p0, LW0/k;->a:Landroid/os/Bundle;

    invoke-interface {p1, v0}, LW0/e;->e(Landroid/os/Bundle;)V

    return-void
.end method
