.class public Lel/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/A;


# instance fields
.field public a:Lel/a;

.field public b:Lel/f;


# direct methods
.method public constructor <init>(Lel/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lel/b;->b:Lel/f;

    invoke-virtual {p1}, Lel/f;->d()Lel/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lel/b;->c(Lel/h;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lel/b;->a:Lel/a;

    invoke-virtual {v0}, Lel/a;->e()I

    move-result v0

    return v0
.end method

.method public b([B)[B
    .locals 3

    iget-object v0, p0, Lel/b;->a:Lel/a;

    invoke-virtual {v0}, Lel/a;->h()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lel/b;->a:Lel/a;

    iget-object v2, p0, Lel/b;->b:Lel/f;

    check-cast v2, Lel/i;

    invoke-virtual {v2}, Lel/i;->e()[B

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lel/a;->i([B[B[B)V

    return-object v0
.end method

.method public final c(Lel/h;)V
    .locals 0

    invoke-virtual {p1}, Lel/h;->c()Lel/a;

    move-result-object p1

    iput-object p1, p0, Lel/b;->a:Lel/a;

    return-void
.end method
