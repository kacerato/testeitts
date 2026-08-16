.class public Lql/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lql/N;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lql/K$a;
    }
.end annotation


# instance fields
.field public final b:Lql/H;

.field public final c:Lql/p;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lql/E;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lql/K$a;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lql/K$a;->a(Lql/K$a;)Lql/H;

    move-result-object v0

    iput-object v0, p0, Lql/K;->b:Lql/H;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lql/H;->h()I

    move-result v1

    invoke-virtual {v0}, Lql/H;->i()Lql/k;

    move-result-object v2

    invoke-virtual {v2}, Lql/k;->e()Lql/m;

    move-result-object v2

    invoke-virtual {v2}, Lql/m;->a()I

    move-result v2

    invoke-virtual {v0}, Lql/H;->b()I

    move-result v3

    invoke-static {p1}, Lql/K$a;->b(Lql/K$a;)[B

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    mul-int p1, v2, v1

    mul-int v0, v3, v1

    add-int/2addr p1, v0

    array-length v0, v4

    if-ne v0, p1, :cond_2

    new-array p1, v2, [[B

    move v0, v5

    move v6, v0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-static {v4, v6, v1}, Lql/O;->i([BII)[B

    move-result-object v7

    aput-object v7, p1, v0

    add-int/2addr v6, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lql/p;

    iget-object v2, p0, Lql/K;->b:Lql/H;

    invoke-virtual {v2}, Lql/H;->i()Lql/k;

    move-result-object v2

    invoke-virtual {v2}, Lql/k;->e()Lql/m;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lql/p;-><init>(Lql/m;[[B)V

    iput-object v0, p0, Lql/K;->c:Lql/p;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v5, v3, :cond_1

    new-instance v0, Lql/E;

    invoke-static {v4, v6, v1}, Lql/O;->i([BII)[B

    move-result-object v2

    invoke-direct {v0, v5, v2}, Lql/E;-><init>(I[B)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iput-object p1, p0, Lql/K;->d:Ljava/util/List;

    goto :goto_5

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "signature has wrong size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-static {p1}, Lql/K$a;->c(Lql/K$a;)Lql/p;

    move-result-object v4

    if-eqz v4, :cond_4

    :goto_3
    iput-object v4, p0, Lql/K;->c:Lql/p;

    goto :goto_4

    :cond_4
    new-instance v4, Lql/p;

    invoke-virtual {v0}, Lql/H;->i()Lql/k;

    move-result-object v0

    invoke-virtual {v0}, Lql/k;->e()Lql/m;

    move-result-object v0

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x1

    aput v1, v6, v7

    aput v2, v6, v5

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    invoke-direct {v4, v0, v1}, Lql/p;-><init>(Lql/m;[[B)V

    goto :goto_3

    :goto_4
    invoke-static {p1}, Lql/K$a;->d(Lql/K$a;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of authPath needs to be equal to height of tree"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :goto_5
    return-void

    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "params == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lql/E;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lql/K;->d:Ljava/util/List;

    return-object v0
.end method

.method public b()Lql/H;
    .locals 1

    iget-object v0, p0, Lql/K;->b:Lql/H;

    return-object v0
.end method

.method public c()Lql/p;
    .locals 1

    iget-object v0, p0, Lql/K;->c:Lql/p;

    return-object v0
.end method

.method public toByteArray()[B
    .locals 7

    iget-object v0, p0, Lql/K;->b:Lql/H;

    invoke-virtual {v0}, Lql/H;->h()I

    move-result v0

    iget-object v1, p0, Lql/K;->b:Lql/H;

    invoke-virtual {v1}, Lql/H;->i()Lql/k;

    move-result-object v1

    invoke-virtual {v1}, Lql/k;->e()Lql/m;

    move-result-object v1

    invoke-virtual {v1}, Lql/m;->a()I

    move-result v1

    mul-int/2addr v1, v0

    iget-object v2, p0, Lql/K;->b:Lql/H;

    invoke-virtual {v2}, Lql/H;->b()I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    iget-object v2, p0, Lql/K;->c:Lql/p;

    invoke-virtual {v2}, Lql/p;->a()[[B

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    array-length v6, v2

    if-ge v4, v6, :cond_0

    aget-object v6, v2, v4

    invoke-static {v1, v6, v5}, Lql/O;->f([B[BI)V

    add-int/2addr v5, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v2, p0, Lql/K;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    iget-object v2, p0, Lql/K;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lql/E;

    invoke-virtual {v2}, Lql/E;->b()[B

    move-result-object v2

    invoke-static {v1, v2, v5}, Lql/O;->f([B[BI)V

    add-int/2addr v5, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method
