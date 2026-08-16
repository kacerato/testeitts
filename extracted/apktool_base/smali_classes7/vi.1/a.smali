.class public Lvi/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lli/h;


# direct methods
.method public constructor <init>([Lli/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lvi/a;->a([Lli/h;)[Lli/h;

    move-result-object p1

    iput-object p1, p0, Lvi/a;->a:[Lli/h;

    return-void
.end method


# virtual methods
.method public final a([Lli/h;)[Lli/h;
    .locals 3

    array-length v0, p1

    new-array v1, v0, [Lli/h;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public b([Lvi/c;)Lvi/e;
    .locals 8

    new-instance v0, Lvi/d;

    iget-object v1, p0, Lvi/a;->a:[Lli/h;

    invoke-static {v1}, Lvi/b;->a([Lli/h;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lvi/d;-><init>(Ljava/util/Set;)V

    new-instance v1, Lvi/f;

    invoke-direct {v1, v0}, Lvi/f;-><init>(Lvi/d;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    if-eq v3, v4, :cond_2

    iget-object v4, p0, Lvi/a;->a:[Lli/h;

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_1
    if-ltz v4, :cond_1

    if-nez v4, :cond_0

    move v6, v5

    goto :goto_2

    :cond_0
    move v6, v2

    :goto_2
    :try_start_0
    invoke-virtual {v0, v6}, Lvi/d;->d(Z)V

    aget-object v6, p1, v3

    iget-object v7, p0, Lvi/a;->a:[Lli/h;

    aget-object v7, v7, v4

    invoke-interface {v6, v0, v7}, Lvi/c;->g(Lvi/d;Lli/h;)V
    :try_end_0
    .catch Lorg/bouncycastle/cert/path/CertPathValidationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    invoke-virtual {v1, v4, v3, v6}, Lvi/f;->a(IILorg/bouncycastle/cert/path/CertPathValidationException;)V

    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lvi/f;->b()Lvi/e;

    move-result-object p1

    return-object p1
.end method

.method public c()[Lli/h;
    .locals 1

    iget-object v0, p0, Lvi/a;->a:[Lli/h;

    invoke-virtual {p0, v0}, Lvi/a;->a([Lli/h;)[Lli/h;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lvi/a;->a:[Lli/h;

    array-length v0, v0

    return v0
.end method

.method public e([Lvi/c;)Lvi/e;
    .locals 7

    new-instance v0, Lvi/d;

    iget-object v1, p0, Lvi/a;->a:[Lli/h;

    invoke-static {v1}, Lvi/b;->a([Lli/h;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lvi/d;-><init>(Ljava/util/Set;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-eq v2, v3, :cond_2

    iget-object v3, p0, Lvi/a;->a:[Lli/h;

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_1
    if-ltz v3, :cond_1

    if-nez v3, :cond_0

    move v5, v4

    goto :goto_2

    :cond_0
    move v5, v1

    :goto_2
    :try_start_0
    invoke-virtual {v0, v5}, Lvi/d;->d(Z)V

    aget-object v5, p1, v2

    iget-object v6, p0, Lvi/a;->a:[Lli/h;

    aget-object v6, v6, v3

    invoke-interface {v5, v0, v6}, Lvi/c;->g(Lvi/d;Lli/h;)V
    :try_end_0
    .catch Lorg/bouncycastle/cert/path/CertPathValidationException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v1, Lvi/e;

    invoke-direct {v1, v0, v3, v2, p1}, Lvi/e;-><init>(Lvi/d;IILorg/bouncycastle/cert/path/CertPathValidationException;)V

    return-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lvi/e;

    invoke-direct {p1, v0}, Lvi/e;-><init>(Lvi/d;)V

    return-object p1
.end method
