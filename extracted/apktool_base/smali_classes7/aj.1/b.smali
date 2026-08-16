.class public Laj/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljk/i;

.field public final b:Ljk/i;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(ILjk/i;Ljk/i;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    invoke-virtual {p3}, Ljk/i;->i()Ljk/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljk/e;->n(Ljk/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Laj/b;->c:I

    iput-object p2, p0, Laj/b;->a:Ljk/i;

    iput-object p3, p0, Laj/b;->b:Ljk/i;

    iput p4, p0, Laj/b;->d:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "points need to be on the same curve"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static g(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    shr-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Laj/b;->d:I

    return v0
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Laj/b;->a:Ljk/i;

    invoke-virtual {v0}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    invoke-virtual {v0}, Ljk/e;->w()I

    move-result v0

    iget v1, p0, Laj/b;->d:I

    invoke-static {v1}, Laj/b;->g(I)I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public c()Ljk/i;
    .locals 1

    iget-object v0, p0, Laj/b;->a:Ljk/i;

    return-object v0
.end method

.method public d()Ljk/i;
    .locals 1

    iget-object v0, p0, Laj/b;->b:Ljk/i;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Laj/b;->c:I

    return v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Laj/b;->a:Ljk/i;

    invoke-virtual {v0}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    invoke-virtual {v0}, Ljk/e;->w()I

    move-result v0

    return v0
.end method
