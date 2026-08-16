.class public Lsh/A;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:[Lsh/G;

.field public final c:[Lsh/J;

.field public final d:[Lsh/I;

.field public final e:[Lsh/y;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/E;

    invoke-virtual {v1}, Loh/E;->size()I

    move-result v2

    new-array v2, v2, [Lsh/G;

    iput-object v2, p0, Lsh/A;->b:[Lsh/G;

    move v2, v0

    :goto_0
    iget-object v3, p0, Lsh/A;->b:[Lsh/G;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    invoke-virtual {v1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, Lsh/G;->y(Ljava/lang/Object;)Lsh/G;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/E;

    invoke-virtual {v1}, Loh/E;->size()I

    move-result v2

    new-array v2, v2, [Lsh/J;

    iput-object v2, p0, Lsh/A;->c:[Lsh/J;

    move v2, v0

    :goto_1
    iget-object v3, p0, Lsh/A;->c:[Lsh/J;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    invoke-virtual {v1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, Lsh/J;->u(Ljava/lang/Object;)Lsh/J;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/E;

    invoke-virtual {v1}, Loh/E;->size()I

    move-result v2

    new-array v2, v2, [Lsh/I;

    iput-object v2, p0, Lsh/A;->d:[Lsh/I;

    move v2, v0

    :goto_2
    iget-object v3, p0, Lsh/A;->d:[Lsh/I;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    invoke-virtual {v1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, Lsh/I;->w(Ljava/lang/Object;)Lsh/I;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/E;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    new-array v1, v1, [Lsh/y;

    iput-object v1, p0, Lsh/A;->e:[Lsh/y;

    :goto_3
    iget-object v1, p0, Lsh/A;->e:[Lsh/y;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lsh/y;->v(Ljava/lang/Object;)Lsh/y;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sequence not 4 elements."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Lsh/G;[Lsh/J;[Lsh/I;[Lsh/y;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p0, p1}, Lsh/A;->v([Lsh/G;)[Lsh/G;

    move-result-object p1

    iput-object p1, p0, Lsh/A;->b:[Lsh/G;

    invoke-virtual {p0, p2}, Lsh/A;->x([Lsh/J;)[Lsh/J;

    move-result-object p1

    iput-object p1, p0, Lsh/A;->c:[Lsh/J;

    invoke-virtual {p0, p3}, Lsh/A;->w([Lsh/I;)[Lsh/I;

    move-result-object p1

    iput-object p1, p0, Lsh/A;->d:[Lsh/I;

    invoke-virtual {p0, p4}, Lsh/A;->u([Lsh/y;)[Lsh/y;

    move-result-object p1

    iput-object p1, p0, Lsh/A;->e:[Lsh/y;

    return-void
.end method

.method public static A(Ljava/lang/Object;)Lsh/A;
    .locals 1

    instance-of v0, p0, Lsh/A;

    if-eqz v0, :cond_0

    check-cast p0, Lsh/A;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lsh/A;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lsh/A;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public B()[Lsh/y;
    .locals 1

    iget-object v0, p0, Lsh/A;->e:[Lsh/y;

    invoke-virtual {p0, v0}, Lsh/A;->u([Lsh/y;)[Lsh/y;

    move-result-object v0

    return-object v0
.end method

.method public C()[Lsh/J;
    .locals 1

    iget-object v0, p0, Lsh/A;->c:[Lsh/J;

    invoke-virtual {p0, v0}, Lsh/A;->x([Lsh/J;)[Lsh/J;

    move-result-object v0

    return-object v0
.end method

.method public r()Loh/B;
    .locals 7

    new-instance v0, Loh/G0;

    new-instance v1, Loh/G0;

    iget-object v2, p0, Lsh/A;->b:[Lsh/G;

    invoke-direct {v1, v2}, Loh/G0;-><init>([Loh/g;)V

    new-instance v2, Loh/G0;

    iget-object v3, p0, Lsh/A;->c:[Lsh/J;

    invoke-direct {v2, v3}, Loh/G0;-><init>([Loh/g;)V

    new-instance v3, Loh/G0;

    iget-object v4, p0, Lsh/A;->d:[Lsh/I;

    invoke-direct {v3, v4}, Loh/G0;-><init>([Loh/g;)V

    new-instance v4, Loh/G0;

    iget-object v5, p0, Lsh/A;->e:[Lsh/y;

    invoke-direct {v4, v5}, Loh/G0;-><init>([Loh/g;)V

    const/4 v5, 0x4

    new-array v5, v5, [Loh/g;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    invoke-direct {v0, v5}, Loh/G0;-><init>([Loh/g;)V

    return-object v0
.end method

.method public final u([Lsh/y;)[Lsh/y;
    .locals 3

    array-length v0, p1

    new-array v1, v0, [Lsh/y;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public final v([Lsh/G;)[Lsh/G;
    .locals 3

    array-length v0, p1

    new-array v1, v0, [Lsh/G;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public final w([Lsh/I;)[Lsh/I;
    .locals 3

    array-length v0, p1

    new-array v1, v0, [Lsh/I;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public final x([Lsh/J;)[Lsh/J;
    .locals 3

    array-length v0, p1

    new-array v1, v0, [Lsh/J;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public y()[Lsh/I;
    .locals 1

    iget-object v0, p0, Lsh/A;->d:[Lsh/I;

    invoke-virtual {p0, v0}, Lsh/A;->w([Lsh/I;)[Lsh/I;

    move-result-object v0

    return-object v0
.end method

.method public z()[Lsh/G;
    .locals 1

    iget-object v0, p0, Lsh/A;->b:[Lsh/G;

    invoke-virtual {p0, v0}, Lsh/A;->v([Lsh/G;)[Lsh/G;

    move-result-object v0

    return-object v0
.end method
