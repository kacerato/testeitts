.class public Ljk/e$f;
.super Ljk/e$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static final t:I = 0x4

.field public static final u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field

.field public static final v:Lorg/bouncycastle/util/b$a;


# instance fields
.field public q:Ljava/math/BigInteger;

.field public r:Ljava/math/BigInteger;

.field public s:Ljk/i$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljk/e$f;->u:Ljava/util/Set;

    new-instance v0, Lorg/bouncycastle/util/b$a;

    invoke-direct {v0}, Lorg/bouncycastle/util/b$a;-><init>()V

    sput-object v0, Ljk/e$f;->v:Lorg/bouncycastle/util/b$a;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Ljk/e$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2
    invoke-direct/range {v0 .. v6}, Ljk/e$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V
    .locals 3

    .line 3
    invoke-direct {p0, p1}, Ljk/e$c;-><init>(Ljava/math/BigInteger;)V

    if-eqz p6, :cond_0

    iput-object p1, p0, Ljk/e$f;->q:Ljava/math/BigInteger;

    sget-object p6, Ljk/e$f;->u:Ljava/util/Set;

    invoke-interface {p6, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sget-object p6, Ljk/e$f;->u:Ljava/util/Set;

    invoke-interface {p6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_2

    sget-object p6, Ljk/e$f;->v:Lorg/bouncycastle/util/b$a;

    invoke-virtual {p6, p1}, Lorg/bouncycastle/util/b$a;->c(Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "org.bouncycastle.ec.fp_max_size"

    const/16 v1, 0x412

    invoke-static {v0, v1}, Lorg/bouncycastle/util/q;->b(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "org.bouncycastle.ec.fp_certainty"

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lorg/bouncycastle/util/q;->b(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-lt v0, v2, :cond_4

    invoke-static {p1}, Lik/a;->e(Ljava/math/BigInteger;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-static {v2, v1}, Ljk/e;->a(II)I

    move-result v1

    invoke-static {p1, v0, v1}, Lik/a;->l(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p6, p1}, Lorg/bouncycastle/util/b$a;->a(Ljava/math/BigInteger;)V

    :cond_2
    :goto_0
    iput-object p1, p0, Ljk/e$f;->q:Ljava/math/BigInteger;

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Fp q value not prime"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Fp q value out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    invoke-static {p1}, Ljk/f$d;->w(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Ljk/e$f;->r:Ljava/math/BigInteger;

    new-instance p1, Ljk/i$e;

    const/4 p6, 0x0

    invoke-direct {p1, p0, p6, p6}, Ljk/i$e;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    iput-object p1, p0, Ljk/e$f;->s:Ljk/i$e;

    invoke-virtual {p0, p2}, Ljk/e$f;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object p1

    iput-object p1, p0, Ljk/e;->b:Ljk/f;

    invoke-virtual {p0, p3}, Ljk/e$f;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object p1

    iput-object p1, p0, Ljk/e;->c:Ljk/f;

    iput-object p4, p0, Ljk/e;->d:Ljava/math/BigInteger;

    iput-object p5, p0, Ljk/e;->e:Ljava/math/BigInteger;

    const/4 p1, 0x4

    iput p1, p0, Ljk/e;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljk/f;Ljk/f;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljk/e$c;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Ljk/e$f;->q:Ljava/math/BigInteger;

    iput-object p2, p0, Ljk/e$f;->r:Ljava/math/BigInteger;

    new-instance p1, Ljk/i$e;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p2}, Ljk/i$e;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    iput-object p1, p0, Ljk/e$f;->s:Ljk/i$e;

    iput-object p3, p0, Ljk/e;->b:Ljk/f;

    iput-object p4, p0, Ljk/e;->c:Ljk/f;

    iput-object p5, p0, Ljk/e;->d:Ljava/math/BigInteger;

    iput-object p6, p0, Ljk/e;->e:Ljava/math/BigInteger;

    const/4 p1, 0x4

    iput p1, p0, Ljk/e;->f:I

    return-void
.end method


# virtual methods
.method public C(Ljk/i;)Ljk/i;
    .locals 4

    invoke-virtual {p1}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    if-eq p0, v0, :cond_1

    invoke-virtual {p0}, Ljk/e;->t()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ljk/i;->v()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    invoke-virtual {v0}, Ljk/e;->t()I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljk/i$e;

    iget-object v1, p1, Ljk/i;->b:Ljk/f;

    invoke-virtual {v1}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljk/e$f;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object v1

    iget-object v2, p1, Ljk/i;->c:Ljk/f;

    invoke-virtual {v2}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljk/e$f;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object v2

    iget-object p1, p1, Ljk/i;->d:[Ljk/f;

    const/4 v3, 0x0

    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljk/e$f;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object p1

    filled-new-array {p1}, [Ljk/f;

    move-result-object p1

    invoke-direct {v0, p0, v1, v2, p1}, Ljk/i$e;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Ljk/e;->C(Ljk/i;)Ljk/i;

    move-result-object p1

    return-object p1
.end method

.method public J(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method public N()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljk/e$f;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public e()Ljk/e;
    .locals 8

    new-instance v7, Ljk/e$f;

    iget-object v1, p0, Ljk/e$f;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Ljk/e$f;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Ljk/e;->b:Ljk/f;

    iget-object v4, p0, Ljk/e;->c:Ljk/f;

    iget-object v5, p0, Ljk/e;->d:Ljava/math/BigInteger;

    iget-object v6, p0, Ljk/e;->e:Ljava/math/BigInteger;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljk/e$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljk/f;Ljk/f;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v7
.end method

.method public j(Ljk/f;Ljk/f;)Ljk/i;
    .locals 1

    new-instance v0, Ljk/i$e;

    invoke-direct {v0, p0, p1, p2}, Ljk/i$e;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    return-object v0
.end method

.method public k(Ljk/f;Ljk/f;[Ljk/f;)Ljk/i;
    .locals 1

    new-instance v0, Ljk/i$e;

    invoke-direct {v0, p0, p1, p2, p3}, Ljk/i$e;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v0
.end method

.method public o(Ljava/math/BigInteger;)Ljk/f;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Ljk/e$f;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljk/f$d;

    iget-object v1, p0, Ljk/e$f;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Ljk/e$f;->r:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, p1}, Ljk/f$d;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "x value invalid for Fp field element"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w()I
    .locals 1

    iget-object v0, p0, Ljk/e$f;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public x()Ljk/i;
    .locals 1

    iget-object v0, p0, Ljk/e$f;->s:Ljk/i$e;

    return-object v0
.end method
