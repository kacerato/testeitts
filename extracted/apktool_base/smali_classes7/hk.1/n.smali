.class public Lhk/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;
.implements Lfk/j;


# instance fields
.field public b:Lhk/p;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lhk/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhk/n;->b:Lhk/p;

    sget-object p1, Lyh/a;->p:Loh/x;

    invoke-virtual {p1}, Loh/x;->J()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lhk/n;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lhk/n;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    sget-object v0, Lyh/a;->p:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lhk/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lhk/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Loh/x;

    invoke-direct {v0, p1}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lyh/e;->b(Loh/x;)Lyh/f;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p1}, Lyh/e;->d(Ljava/lang/String;)Loh/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lyh/e;->b(Loh/x;)Lyh/f;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lhk/p;

    invoke-virtual {v0}, Lyh/f;->z()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lyh/f;->A()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lyh/f;->u()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lhk/p;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v1, p0, Lhk/n;->b:Lhk/p;

    iput-object p1, p0, Lhk/n;->c:Ljava/lang/String;

    iput-object p2, p0, Lhk/n;->d:Ljava/lang/String;

    iput-object p3, p0, Lhk/n;->e:Ljava/lang/String;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no key parameter set for passed in name/OID."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static e(Lyh/g;)Lhk/n;
    .locals 3

    invoke-virtual {p0}, Lyh/g;->v()Loh/x;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lhk/n;

    invoke-virtual {p0}, Lyh/g;->y()Loh/x;

    move-result-object v1

    invoke-virtual {v1}, Loh/x;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lyh/g;->u()Loh/x;

    move-result-object v2

    invoke-virtual {v2}, Loh/x;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lyh/g;->v()Loh/x;

    move-result-object p0

    invoke-virtual {p0}, Loh/x;->J()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lhk/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lyh/g;->u()Loh/x;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lhk/n;

    invoke-virtual {p0}, Lyh/g;->y()Loh/x;

    move-result-object v1

    invoke-virtual {v1}, Loh/x;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lyh/g;->u()Loh/x;

    move-result-object p0

    invoke-virtual {p0}, Loh/x;->J()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lhk/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Lhk/n;

    invoke-virtual {p0}, Lyh/g;->y()Loh/x;

    move-result-object p0

    invoke-virtual {p0}, Loh/x;->J()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lhk/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Lhk/p;
    .locals 1

    iget-object v0, p0, Lhk/n;->b:Lhk/p;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lhk/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lhk/n;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lhk/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lhk/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lhk/n;

    iget-object v0, p0, Lhk/n;->b:Lhk/p;

    iget-object v2, p1, Lhk/n;->b:Lhk/p;

    invoke-virtual {v0, v2}, Lhk/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhk/n;->d:Ljava/lang/String;

    iget-object v2, p1, Lhk/n;->d:Ljava/lang/String;

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lhk/n;->e:Ljava/lang/String;

    iget-object p1, p1, Lhk/n;->e:Ljava/lang/String;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lhk/n;->b:Lhk/p;

    invoke-virtual {v0}, Lhk/p;->hashCode()I

    move-result v0

    iget-object v1, p0, Lhk/n;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lhk/n;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method
