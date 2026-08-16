.class public Lkl/b;
.super Lkl/a;
.source "SourceFile"


# instance fields
.field public e:I


# direct methods
.method public constructor <init>(Lkl/a;)V
    .locals 3

    invoke-virtual {p1}, Lkl/a;->c()I

    move-result v0

    invoke-virtual {p1}, Lkl/a;->d()I

    move-result v1

    invoke-virtual {p1}, Lkl/a;->a()I

    move-result v2

    invoke-virtual {p1}, Lkl/a;->b()[I

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lkl/a;-><init>(III[I)V

    const/4 p1, 0x0

    iput p1, p0, Lkl/b;->e:I

    return-void
.end method


# virtual methods
.method public f()I
    .locals 1

    iget v0, p0, Lkl/b;->e:I

    return v0
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lkl/b;->e:I

    return-void
.end method
