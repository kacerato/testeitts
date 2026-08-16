.class public Lml/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/A;


# instance fields
.field public a:Lml/b;

.field public b:Lml/g;


# direct methods
.method public constructor <init>(Lml/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lml/c;->b:Lml/g;

    invoke-virtual {p1}, Lml/g;->d()Lml/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lml/c;->c(Lml/h;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lml/c;->a:Lml/b;

    invoke-virtual {v0}, Lml/b;->e()I

    move-result v0

    return v0
.end method

.method public b([B)[B
    .locals 3

    iget-object v0, p0, Lml/c;->a:Lml/b;

    invoke-virtual {v0}, Lml/b;->s()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lml/c;->a:Lml/b;

    iget-object v2, p0, Lml/c;->b:Lml/g;

    check-cast v2, Lml/i;

    invoke-virtual {v2}, Lml/i;->e()[B

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lml/b;->b([B[B[B)I

    return-object v0
.end method

.method public final c(Lml/h;)V
    .locals 0

    invoke-virtual {p1}, Lml/h;->a()Lml/b;

    move-result-object p1

    iput-object p1, p0, Lml/c;->a:Lml/b;

    return-void
.end method
