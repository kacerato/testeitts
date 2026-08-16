.class public LUk/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Lhi/b;

.field public static final k:Lhi/b;

.field public static final l:Lhi/b;

.field public static final m:Lhi/b;

.field public static final n:Lhi/b;

.field public static final o:Lhi/b;

.field public static final p:Lhi/b;

.field public static final q:Lhi/b;

.field public static final r:LQk/k;


# instance fields
.field public a:Ldk/f;

.field public b:Lhi/b;

.field public c:Ljava/security/SecureRandom;

.field public d:I

.field public e:I

.field public f:I

.field public g:LXh/q;

.field public h:Lhi/b;

.field public i:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lhi/b;

    sget-object v1, LXh/t;->x1:Loh/x;

    sget-object v2, Loh/A0;->c:Loh/A0;

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sput-object v0, LUk/e;->j:Lhi/b;

    new-instance v0, Lhi/b;

    sget-object v1, LXh/t;->z1:Loh/x;

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sput-object v0, LUk/e;->k:Lhi/b;

    new-instance v0, Lhi/b;

    sget-object v1, LXh/t;->A1:Loh/x;

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sput-object v0, LUk/e;->l:Lhi/b;

    new-instance v0, Lhi/b;

    sget-object v1, LXh/t;->B1:Loh/x;

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sput-object v0, LUk/e;->m:Lhi/b;

    new-instance v0, Lhi/b;

    sget-object v1, LSh/d;->o:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    sput-object v0, LUk/e;->n:Lhi/b;

    new-instance v0, Lhi/b;

    sget-object v1, LSh/d;->p:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    sput-object v0, LUk/e;->o:Lhi/b;

    new-instance v0, Lhi/b;

    sget-object v1, LSh/d;->q:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    sput-object v0, LUk/e;->p:Lhi/b;

    new-instance v0, Lhi/b;

    sget-object v1, LSh/d;->r:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    sput-object v0, LUk/e;->q:Lhi/b;

    new-instance v0, LQk/k;

    invoke-direct {v0}, LQk/k;-><init>()V

    sput-object v0, LUk/e;->r:LQk/k;

    return-void
.end method

.method public constructor <init>(LXh/r;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldk/d;

    invoke-direct {v0}, Ldk/d;-><init>()V

    iput-object v0, p0, LUk/e;->a:Ldk/f;

    const/4 v0, -0x1

    iput v0, p0, LUk/e;->d:I

    const/16 v0, 0x2000

    iput v0, p0, LUk/e;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, LUk/e;->g:LXh/q;

    sget-object v1, LUk/e;->k:Lhi/b;

    iput-object v1, p0, LUk/e;->h:Lhi/b;

    iput-object v0, p0, LUk/e;->i:[B

    invoke-virtual {p1}, LXh/r;->x()Lhi/b;

    move-result-object v0

    iput-object v0, p0, LUk/e;->b:Lhi/b;

    invoke-virtual {p1}, LXh/r;->v()Lhi/b;

    move-result-object p1

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, LXh/q;->u(Ljava/lang/Object;)LXh/q;

    move-result-object p1

    iput-object p1, p0, LUk/e;->g:LXh/q;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 2
    sget-object v0, LUk/e;->r:LQk/k;

    invoke-direct {p0, p1, p2, v0}, LUk/e;-><init>(Ljava/lang/String;ILQk/z;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILQk/z;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldk/d;

    invoke-direct {v0}, Ldk/d;-><init>()V

    iput-object v0, p0, LUk/e;->a:Ldk/f;

    const/4 v0, -0x1

    iput v0, p0, LUk/e;->d:I

    const/16 v0, 0x2000

    iput v0, p0, LUk/e;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, LUk/e;->g:LXh/q;

    sget-object v1, LUk/e;->k:Lhi/b;

    iput-object v1, p0, LUk/e;->h:Lhi/b;

    iput-object v0, p0, LUk/e;->i:[B

    invoke-interface {p3, p1}, LQk/z;->a(Ljava/lang/String;)Lhi/b;

    move-result-object p1

    iput-object p1, p0, LUk/e;->b:Lhi/b;

    iput p2, p0, LUk/e;->f:I

    return-void
.end method

.method public static synthetic a(LUk/e;)[B
    .locals 0

    iget-object p0, p0, LUk/e;->i:[B

    return-object p0
.end method

.method public static synthetic b(LUk/e;)I
    .locals 0

    iget p0, p0, LUk/e;->e:I

    return p0
.end method

.method public static synthetic c(LUk/e;)I
    .locals 0

    iget p0, p0, LUk/e;->f:I

    return p0
.end method

.method public static synthetic d(LUk/e;)Lhi/b;
    .locals 0

    iget-object p0, p0, LUk/e;->h:Lhi/b;

    return-object p0
.end method

.method public static synthetic e(LUk/e;)Lhi/b;
    .locals 0

    iget-object p0, p0, LUk/e;->b:Lhi/b;

    return-object p0
.end method


# virtual methods
.method public f([C)LQk/A;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object v0, p0, LUk/e;->c:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, LUk/e;->c:Ljava/security/SecureRandom;

    :cond_0
    :try_start_0
    iget-object v0, p0, LUk/e;->a:Ldk/f;

    iget-object v1, p0, LUk/e;->b:Lhi/b;

    invoke-virtual {v1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    invoke-virtual {v1}, Loh/x;->J()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldk/f;->w(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iget-object v1, p0, LUk/e;->g:LXh/q;

    if-nez v1, :cond_2

    iget-object v1, p0, LUk/e;->i:[B

    if-nez v1, :cond_3

    iget v1, p0, LUk/e;->d:I

    if-gez v1, :cond_1

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    iput v1, p0, LUk/e;->d:I

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget v1, p0, LUk/e;->d:I

    new-array v1, v1, [B

    iput-object v1, p0, LUk/e;->i:[B

    iget-object v2, p0, LUk/e;->c:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, LXh/q;->z()[B

    move-result-object v1

    iput-object v1, p0, LUk/e;->i:[B

    iget-object v1, p0, LUk/e;->g:LXh/q;

    invoke-virtual {v1}, LXh/q;->v()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/b;->l(Ljava/math/BigInteger;)I

    move-result v1

    iput v1, p0, LUk/e;->e:I

    iget-object v1, p0, LUk/e;->g:LXh/q;

    invoke-virtual {v1}, LXh/q;->x()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/b;->l(Ljava/math/BigInteger;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, LUk/e;->f:I

    :cond_3
    :goto_1
    iget-object v1, p0, LUk/e;->a:Ldk/f;

    const-string v2, "PBKDF2"

    invoke-interface {v1, v2}, Ldk/f;->s(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    new-instance v8, Lck/v;

    iget-object v4, p0, LUk/e;->i:[B

    iget v5, p0, LUk/e;->e:I

    iget v6, p0, LUk/e;->f:I

    iget-object v7, p0, LUk/e;->h:Lhi/b;

    move-object v2, v8

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lck/v;-><init>([C[BIILhi/b;)V

    invoke-virtual {v1, v8}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    new-instance v1, LUk/e$a;

    invoke-direct {v1, p0, v0, p1}, LUk/e$a;-><init>(LUk/e;Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_2
    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to create MAC calculator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public g(Ldk/f;)LUk/e;
    .locals 0

    iput-object p1, p0, LUk/e;->a:Ldk/f;

    return-object p0
.end method

.method public h(I)LUk/e;
    .locals 0

    iput p1, p0, LUk/e;->e:I

    return-object p0
.end method

.method public i(Lhi/b;)LUk/e;
    .locals 0

    iput-object p1, p0, LUk/e;->h:Lhi/b;

    return-object p0
.end method

.method public j(Ljava/lang/String;)LUk/e;
    .locals 1

    new-instance v0, Ldk/i;

    invoke-direct {v0, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LUk/e;->a:Ldk/f;

    return-object p0
.end method

.method public k(Ljava/security/Provider;)LUk/e;
    .locals 1

    new-instance v0, Ldk/k;

    invoke-direct {v0, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, LUk/e;->a:Ldk/f;

    return-object p0
.end method

.method public l(Ljava/security/SecureRandom;)LUk/e;
    .locals 0

    iput-object p1, p0, LUk/e;->c:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public m([B)LUk/e;
    .locals 0

    iput-object p1, p0, LUk/e;->i:[B

    return-object p0
.end method

.method public n(I)LUk/e;
    .locals 0

    iput p1, p0, LUk/e;->d:I

    return-object p0
.end method
