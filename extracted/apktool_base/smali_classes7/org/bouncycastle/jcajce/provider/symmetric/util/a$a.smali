.class public Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/util/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final b:Ljava/lang/reflect/Constructor;


# instance fields
.field public a:LTi/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;

    const-string v1, "javax.crypto.AEADBadTagException"

    invoke-static {v0, v1}, Lak/g;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;->l(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    :goto_0
    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;->b:Ljava/lang/reflect/Constructor;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(LTi/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;->a:LTi/b;

    return-void
.end method

.method public static synthetic k(Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;)LTi/b;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;->a:LTi/b;

    return-object p0
.end method

.method public static l(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1

    :try_start_0
    const-class v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;->a:LTi/b;

    invoke-interface {v0, p1, p2}, LTi/b;->a(ZLBi/k;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;->a:LTi/b;

    instance-of v1, v0, LTi/a;

    if-eqz v1, :cond_0

    check-cast v0, LTi/a;

    invoke-interface {v0}, LTi/a;->d()LBi/f;

    move-result-object v0

    invoke-interface {v0}, LBi/f;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, LTi/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c([BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;->a:LTi/b;

    invoke-interface {v0, p1, p2}, LTi/b;->c([BI)I

    move-result p1
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    sget-object p2, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;->b:Ljava/lang/reflect/Constructor;

    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/crypto/BadPaddingException;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_0

    throw p2

    :cond_0
    new-instance p2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public d()LBi/f;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;->a:LTi/b;

    instance-of v1, v0, LTi/a;

    if-eqz v1, :cond_0

    check-cast v0, LTi/a;

    invoke-interface {v0}, LTi/a;->d()LBi/f;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public e([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;->a:LTi/b;

    invoke-interface {v0, p1, p2, p3}, LTi/b;->j([BII)V

    return-void
.end method

.method public f([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;->a:LTi/b;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, LTi/b;->f([BII[BI)I

    move-result p1

    return p1
.end method

.method public g(I)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;->a:LTi/b;

    invoke-interface {v0, p1}, LTi/b;->g(I)I

    move-result p1

    return p1
.end method

.method public h(I)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;->a:LTi/b;

    invoke-interface {v0, p1}, LTi/b;->h(I)I

    move-result p1

    return p1
.end method

.method public i(B[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;->a:LTi/b;

    invoke-interface {v0, p1, p2, p3}, LTi/b;->i(B[BI)I

    move-result p1

    return p1
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
