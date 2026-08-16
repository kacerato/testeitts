.class public LHj/p$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LHj/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/security/cert/CRLSelector;

.field public b:Z

.field public c:Z

.field public d:Ljava/math/BigInteger;

.field public e:[B

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/security/cert/CRLSelector;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LHj/p$b;->b:Z

    iput-boolean v0, p0, LHj/p$b;->c:Z

    const/4 v1, 0x0

    iput-object v1, p0, LHj/p$b;->d:Ljava/math/BigInteger;

    iput-object v1, p0, LHj/p$b;->e:[B

    iput-boolean v0, p0, LHj/p$b;->f:Z

    invoke-interface {p1}, Ljava/security/cert/CRLSelector;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/CRLSelector;

    iput-object p1, p0, LHj/p$b;->a:Ljava/security/cert/CRLSelector;

    return-void
.end method

.method public static synthetic a(LHj/p$b;)Ljava/security/cert/CRLSelector;
    .locals 0

    iget-object p0, p0, LHj/p$b;->a:Ljava/security/cert/CRLSelector;

    return-object p0
.end method

.method public static synthetic b(LHj/p$b;)Z
    .locals 0

    iget-boolean p0, p0, LHj/p$b;->b:Z

    return p0
.end method

.method public static synthetic c(LHj/p$b;)Z
    .locals 0

    iget-boolean p0, p0, LHj/p$b;->c:Z

    return p0
.end method

.method public static synthetic d(LHj/p$b;)Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, LHj/p$b;->d:Ljava/math/BigInteger;

    return-object p0
.end method

.method public static synthetic e(LHj/p$b;)[B
    .locals 0

    iget-object p0, p0, LHj/p$b;->e:[B

    return-object p0
.end method

.method public static synthetic f(LHj/p$b;)Z
    .locals 0

    iget-boolean p0, p0, LHj/p$b;->f:Z

    return p0
.end method


# virtual methods
.method public g()LHj/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LHj/p<",
            "+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    new-instance v0, LHj/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LHj/p;-><init>(LHj/p$b;LHj/p$a;)V

    return-object v0
.end method

.method public h(Z)LHj/p$b;
    .locals 0

    iput-boolean p1, p0, LHj/p$b;->c:Z

    return-object p0
.end method

.method public i(Z)LHj/p$b;
    .locals 0

    iput-boolean p1, p0, LHj/p$b;->b:Z

    return-object p0
.end method

.method public j([B)V
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LHj/p$b;->e:[B

    return-void
.end method

.method public k(Z)V
    .locals 0

    iput-boolean p1, p0, LHj/p$b;->f:Z

    return-void
.end method

.method public l(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, LHj/p$b;->d:Ljava/math/BigInteger;

    return-void
.end method
