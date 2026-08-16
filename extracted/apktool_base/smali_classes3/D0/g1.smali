.class public final LD0/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LD0/h;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:LD0/h1;


# direct methods
.method public constructor <init>(LD0/h1;LD0/h;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, LD0/g1;->b:LD0/h;

    iput-object p3, p0, LD0/g1;->c:Ljava/lang/String;

    iput-object p1, p0, LD0/g1;->d:LD0/h1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LD0/g1;->d:LD0/h1;

    invoke-static {v0}, LD0/h1;->a(LD0/h1;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, LD0/g1;->b:LD0/h;

    invoke-static {v0}, LD0/h1;->b(LD0/h1;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, LD0/g1;->c:Ljava/lang/String;

    invoke-static {v0}, LD0/h1;->b(LD0/h1;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, LD0/h;->g(Landroid/os/Bundle;)V

    :cond_1
    iget-object v0, p0, LD0/g1;->d:LD0/h1;

    invoke-static {v0}, LD0/h1;->a(LD0/h1;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    iget-object v0, p0, LD0/g1;->b:LD0/h;

    invoke-virtual {v0}, LD0/h;->k()V

    :cond_2
    iget-object v0, p0, LD0/g1;->d:LD0/h1;

    invoke-static {v0}, LD0/h1;->a(LD0/h1;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    iget-object v0, p0, LD0/g1;->b:LD0/h;

    invoke-virtual {v0}, LD0/h;->i()V

    :cond_3
    iget-object v0, p0, LD0/g1;->d:LD0/h1;

    invoke-static {v0}, LD0/h1;->a(LD0/h1;)I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    iget-object v0, p0, LD0/g1;->b:LD0/h;

    invoke-virtual {v0}, LD0/h;->l()V

    :cond_4
    iget-object v0, p0, LD0/g1;->d:LD0/h1;

    invoke-static {v0}, LD0/h1;->a(LD0/h1;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_5

    iget-object v0, p0, LD0/g1;->b:LD0/h;

    invoke-virtual {v0}, LD0/h;->h()V

    :cond_5
    return-void
.end method
