.class public Ljk/B$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljk/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljk/B;->q(Ljk/i;Ljk/j;Ljk/A;Z)Ljk/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljk/A;

.field public final synthetic b:Z

.field public final synthetic c:Ljk/j;


# direct methods
.method public constructor <init>(Ljk/A;ZLjk/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ljk/B$c;->a:Ljk/A;

    iput-boolean p2, p0, Ljk/B$c;->b:Z

    iput-object p3, p0, Ljk/B$c;->c:Ljk/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Ljk/A;IIZ)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljk/A;->g()I

    move-result v0

    if-lt v0, p2, :cond_1

    invoke-virtual {p1}, Ljk/A;->c()[Ljk/i;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Ljk/B$c;->c([Ljk/i;I)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Ljk/A;->d()[Ljk/i;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Ljk/B$c;->c([Ljk/i;I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c([Ljk/i;I)Z
    .locals 0

    if-eqz p1, :cond_0

    array-length p1, p1

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(Ljk/q;)Ljk/q;
    .locals 8

    instance-of v0, p1, Ljk/A;

    if-eqz v0, :cond_0

    check-cast p1, Ljk/A;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Ljk/B$c;->a:Ljk/A;

    invoke-virtual {v0}, Ljk/A;->g()I

    move-result v0

    iget-object v1, p0, Ljk/B$c;->a:Ljk/A;

    invoke-virtual {v1}, Ljk/A;->c()[Ljk/i;

    move-result-object v1

    array-length v1, v1

    iget-boolean v2, p0, Ljk/B$c;->b:Z

    invoke-direct {p0, p1, v0, v1, v2}, Ljk/B$c;->b(Ljk/A;IIZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljk/A;->a()I

    return-object p1

    :cond_1
    new-instance p1, Ljk/A;

    invoke-direct {p1}, Ljk/A;-><init>()V

    iget-object v1, p0, Ljk/B$c;->a:Ljk/A;

    invoke-virtual {v1}, Ljk/A;->e()I

    move-result v1

    invoke-virtual {p1, v1}, Ljk/A;->l(I)V

    iget-object v1, p0, Ljk/B$c;->a:Ljk/A;

    invoke-virtual {v1}, Ljk/A;->f()Ljk/i;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Ljk/B$c;->c:Ljk/j;

    invoke-interface {v2, v1}, Ljk/j;->a(Ljk/i;)Ljk/i;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljk/A;->m(Ljk/i;)V

    :cond_2
    iget-object v1, p0, Ljk/B$c;->a:Ljk/A;

    invoke-virtual {v1}, Ljk/A;->c()[Ljk/i;

    move-result-object v1

    array-length v2, v1

    new-array v3, v2, [Ljk/i;

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Ljk/B$c;->c:Ljk/j;

    aget-object v7, v1, v5

    invoke-interface {v6, v7}, Ljk/j;->a(Ljk/i;)Ljk/i;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v3}, Ljk/A;->j([Ljk/i;)V

    invoke-virtual {p1, v0}, Ljk/A;->n(I)V

    iget-boolean v0, p0, Ljk/B$c;->b:Z

    if-eqz v0, :cond_5

    new-array v0, v2, [Ljk/i;

    :goto_2
    if-ge v4, v2, :cond_4

    aget-object v1, v3, v4

    invoke-virtual {v1}, Ljk/i;->A()Ljk/i;

    move-result-object v1

    aput-object v1, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v0}, Ljk/A;->k([Ljk/i;)V

    :cond_5
    return-object p1
.end method
