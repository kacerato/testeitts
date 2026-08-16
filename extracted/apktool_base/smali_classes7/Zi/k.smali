.class public LZi/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZi/k$a;,
        LZi/k$b;,
        LZi/k$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/security/SecureRandom;

.field public final b:LZi/e;

.field public c:[B

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LZi/k;-><init>(Ljava/security/SecureRandom;Z)V

    return-void
.end method

.method public constructor <init>(LZi/e;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, LZi/k;->d:I

    iput v0, p0, LZi/k;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, LZi/k;->a:Ljava/security/SecureRandom;

    iput-object p1, p0, LZi/k;->b:LZi/e;

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;Z)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, LZi/k;->d:I

    iput v0, p0, LZi/k;->e:I

    iput-object p1, p0, LZi/k;->a:Ljava/security/SecureRandom;

    new-instance v0, LZi/a;

    invoke-direct {v0, p1, p2}, LZi/a;-><init>(Ljava/security/SecureRandom;Z)V

    iput-object v0, p0, LZi/k;->b:LZi/e;

    return-void
.end method

.method public static synthetic a(LBi/y;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, LZi/k;->e(LBi/y;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(LBi/y;)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, LBi/y;->b()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const-string v1, "SHA3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public b(LBi/f;I[BZ)LZi/j;
    .locals 10

    new-instance v0, LZi/j;

    iget-object v1, p0, LZi/k;->a:Ljava/security/SecureRandom;

    iget-object v2, p0, LZi/k;->b:LZi/e;

    iget v3, p0, LZi/k;->e:I

    invoke-interface {v2, v3}, LZi/e;->get(I)LZi/d;

    move-result-object v2

    new-instance v9, LZi/k$a;

    iget-object v7, p0, LZi/k;->c:[B

    iget v8, p0, LZi/k;->d:I

    move-object v3, v9

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, LZi/k$a;-><init>(LBi/f;I[B[BI)V

    invoke-direct {v0, v1, v2, v9, p4}, LZi/j;-><init>(Ljava/security/SecureRandom;LZi/d;LZi/b;Z)V

    return-object v0
.end method

.method public c(LBi/I;[BZ)LZi/j;
    .locals 6

    new-instance v0, LZi/j;

    iget-object v1, p0, LZi/k;->a:Ljava/security/SecureRandom;

    iget-object v2, p0, LZi/k;->b:LZi/e;

    iget v3, p0, LZi/k;->e:I

    invoke-interface {v2, v3}, LZi/e;->get(I)LZi/d;

    move-result-object v2

    new-instance v3, LZi/k$b;

    iget-object v4, p0, LZi/k;->c:[B

    iget v5, p0, LZi/k;->d:I

    invoke-direct {v3, p1, p2, v4, v5}, LZi/k$b;-><init>(LBi/I;[B[BI)V

    invoke-direct {v0, v1, v2, v3, p3}, LZi/j;-><init>(Ljava/security/SecureRandom;LZi/d;LZi/b;Z)V

    return-object v0
.end method

.method public d(LBi/y;[BZ)LZi/j;
    .locals 6

    new-instance v0, LZi/j;

    iget-object v1, p0, LZi/k;->a:Ljava/security/SecureRandom;

    iget-object v2, p0, LZi/k;->b:LZi/e;

    iget v3, p0, LZi/k;->e:I

    invoke-interface {v2, v3}, LZi/e;->get(I)LZi/d;

    move-result-object v2

    new-instance v3, LZi/k$c;

    iget-object v4, p0, LZi/k;->c:[B

    iget v5, p0, LZi/k;->d:I

    invoke-direct {v3, p1, p2, v4, v5}, LZi/k$c;-><init>(LBi/y;[B[BI)V

    invoke-direct {v0, v1, v2, v3, p3}, LZi/j;-><init>(Ljava/security/SecureRandom;LZi/d;LZi/b;Z)V

    return-object v0
.end method

.method public f(I)LZi/k;
    .locals 0

    iput p1, p0, LZi/k;->e:I

    return-object p0
.end method

.method public g([B)LZi/k;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LZi/k;->c:[B

    return-object p0
.end method

.method public h(I)LZi/k;
    .locals 0

    iput p1, p0, LZi/k;->d:I

    return-object p0
.end method
