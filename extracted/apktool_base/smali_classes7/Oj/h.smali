.class public LOj/h;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/c;
.source "SourceFile"

# interfaces
.implements Lbk/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOj/h$a;,
        LOj/h$b;,
        LOj/h$c;,
        LOj/h$d;,
        LOj/h$e;,
        LOj/h$f;
    }
.end annotation


# static fields
.field public static final d:[B

.field public static final e:[B

.field public static final f:[B

.field public static final g:[B

.field public static final h:B = 0x6ft

.field public static final i:B = 0x6et

.field public static final j:B = 0x71t

.field public static final k:B = 0x70t


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Z

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "3042300506032b656f033900"

    invoke-static {v0}, Lem/h;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, LOj/h;->d:[B

    const-string v0, "302a300506032b656e032100"

    invoke-static {v0}, Lem/h;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, LOj/h;->e:[B

    const-string v0, "3043300506032b6571033a00"

    invoke-static {v0}, Lem/h;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, LOj/h;->f:[B

    const-string v0, "302a300506032b6570032100"

    invoke-static {v0}, Lem/h;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, LOj/h;->g:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/c;-><init>()V

    iput-object p1, p0, LOj/h;->a:Ljava/lang/String;

    iput-boolean p2, p0, LOj/h;->b:Z

    iput p3, p0, LOj/h;->c:I

    return-void
.end method


# virtual methods
.method public a(Lhi/h0;)Ljava/security/PublicKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    iget-boolean v1, p0, LOj/h;->b:Z

    if-eqz v1, :cond_3

    iget v1, p0, LOj/h;->c:I

    if-eqz v1, :cond_0

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_1

    :cond_0
    sget-object v1, Lqj/a;->c:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, LOj/d;

    invoke-direct {v0, p1}, LOj/d;-><init>(Lhi/h0;)V

    return-object v0

    :cond_1
    iget v1, p0, LOj/h;->c:I

    if-eqz v1, :cond_2

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_8

    :cond_2
    sget-object v1, Lqj/a;->b:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v0, LOj/d;

    invoke-direct {v0, p1}, LOj/d;-><init>(Lhi/h0;)V

    return-object v0

    :cond_3
    sget-object v1, Lqj/a;->e:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lqj/a;->d:Loh/x;

    invoke-virtual {v0, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget v2, p0, LOj/h;->c:I

    if-eqz v2, :cond_5

    const/16 v3, 0x71

    if-ne v2, v3, :cond_6

    :cond_5
    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, LOj/b;

    invoke-direct {v0, p1}, LOj/b;-><init>(Lhi/h0;)V

    return-object v0

    :cond_6
    iget v1, p0, LOj/h;->c:I

    if-eqz v1, :cond_7

    const/16 v2, 0x70

    if-ne v1, v2, :cond_8

    :cond_7
    sget-object v1, Lqj/a;->d:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v0, LOj/b;

    invoke-direct {v0, p1}, LOj/b;-><init>(Lhi/h0;)V

    return-object v0

    :cond_8
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "algorithm identifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in key not recognized"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(LXh/v;)Ljava/security/PrivateKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LXh/v;->y()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    iget-boolean v1, p0, LOj/h;->b:Z

    if-eqz v1, :cond_3

    iget v1, p0, LOj/h;->c:I

    if-eqz v1, :cond_0

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_1

    :cond_0
    sget-object v1, Lqj/a;->c:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, LOj/c;

    invoke-direct {v0, p1}, LOj/c;-><init>(LXh/v;)V

    return-object v0

    :cond_1
    iget v1, p0, LOj/h;->c:I

    if-eqz v1, :cond_2

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_8

    :cond_2
    sget-object v1, Lqj/a;->b:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v0, LOj/c;

    invoke-direct {v0, p1}, LOj/c;-><init>(LXh/v;)V

    return-object v0

    :cond_3
    sget-object v1, Lqj/a;->e:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lqj/a;->d:Loh/x;

    invoke-virtual {v0, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget v2, p0, LOj/h;->c:I

    if-eqz v2, :cond_5

    const/16 v3, 0x71

    if-ne v2, v3, :cond_6

    :cond_5
    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, LOj/a;

    invoke-direct {v0, p1}, LOj/a;-><init>(LXh/v;)V

    return-object v0

    :cond_6
    iget v1, p0, LOj/h;->c:I

    if-eqz v1, :cond_7

    const/16 v2, 0x70

    if-ne v1, v2, :cond_8

    :cond_7
    sget-object v1, Lqj/a;->d:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v0, LOj/a;

    invoke-direct {v0, p1}, LOj/a;-><init>(LXh/v;)V

    return-object v0

    :cond_8
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "algorithm identifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in key not recognized"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Lck/t;

    if-eqz v0, :cond_1

    check-cast p1, Lck/t;

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/j;->c([B)LXi/c;

    move-result-object p1

    instance-of v0, p1, LXi/O;

    if-eqz v0, :cond_0

    new-instance v0, LOj/a;

    check-cast p1, LXi/O;

    invoke-direct {v0, p1}, LOj/a;-><init>(LXi/c;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "openssh private key not Ed25519 private key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-super {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/c;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v0

    iget v1, p0, LOj/h;->c:I

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    aget-byte v3, v0, v2

    if-ne v1, v3, :cond_5

    :cond_0
    const/16 v1, 0x9

    aget-byte v1, v0, v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    const/16 v1, 0xa

    aget-byte v1, v0, v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object v0

    new-instance v1, Lhi/h0;

    new-instance v3, Lhi/b;

    invoke-virtual {v0}, Lhi/h0;->u()Lhi/b;

    move-result-object v4

    invoke-virtual {v4}, Lhi/b;->u()Loh/x;

    move-result-object v4

    invoke-direct {v3, v4}, Lhi/b;-><init>(Loh/x;)V

    invoke-virtual {v0}, Lhi/h0;->z()Loh/c;

    move-result-object v0

    invoke-virtual {v0}, Loh/c;->F()[B

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lhi/h0;-><init>(Lhi/b;[B)V

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {v1, v0}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to reconstruct key failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    aget-byte v1, v0, v2

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/c;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1

    :pswitch_0
    new-instance p1, LOj/b;

    sget-object v1, LOj/h;->f:[B

    invoke-direct {p1, v1, v0}, LOj/b;-><init>([B[B)V

    return-object p1

    :pswitch_1
    new-instance p1, LOj/b;

    sget-object v1, LOj/h;->g:[B

    invoke-direct {p1, v1, v0}, LOj/b;-><init>([B[B)V

    return-object p1

    :pswitch_2
    new-instance p1, LOj/d;

    sget-object v1, LOj/h;->d:[B

    invoke-direct {p1, v1, v0}, LOj/d;-><init>([B[B)V

    return-object p1

    :pswitch_3
    new-instance p1, LOj/d;

    sget-object v1, LOj/h;->e:[B

    invoke-direct {p1, v1, v0}, LOj/d;-><init>([B[B)V

    return-object p1

    :cond_2
    instance-of v0, p1, Lck/w;

    if-eqz v0, :cond_3

    check-cast p1, Lck/w;

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    iget v0, p0, LOj/h;->c:I

    packed-switch v0, :pswitch_data_1

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "factory not a specific type, cannot recognise raw encoding"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    new-instance v0, LOj/b;

    new-instance v1, LXi/T;

    invoke-direct {v1, p1}, LXi/T;-><init>([B)V

    invoke-direct {v0, v1}, LOj/b;-><init>(LXi/c;)V

    return-object v0

    :pswitch_5
    new-instance v0, LOj/b;

    new-instance v1, LXi/P;

    invoke-direct {v1, p1}, LXi/P;-><init>([B)V

    invoke-direct {v0, v1}, LOj/b;-><init>(LXi/c;)V

    return-object v0

    :pswitch_6
    new-instance v0, LOj/d;

    new-instance v1, LXi/R0;

    invoke-direct {v1, p1}, LXi/R0;-><init>([B)V

    invoke-direct {v0, v1}, LOj/d;-><init>(LXi/c;)V

    return-object v0

    :pswitch_7
    new-instance v0, LOj/d;

    new-instance v1, LXi/O0;

    invoke-direct {v1, p1}, LXi/O0;-><init>([B)V

    invoke-direct {v0, v1}, LOj/d;-><init>(LXi/c;)V

    return-object v0

    :cond_3
    instance-of v0, p1, Lck/u;

    if-eqz v0, :cond_5

    check-cast p1, Lck/u;

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/k;->c([B)LXi/c;

    move-result-object p1

    instance-of v0, p1, LXi/P;

    if-eqz v0, :cond_4

    new-instance v0, LOj/b;

    const/4 v1, 0x0

    new-array v1, v1, [B

    check-cast p1, LXi/P;

    invoke-virtual {p1}, LXi/P;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, LOj/b;-><init>([B[B)V

    return-object v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "openssh public key not Ed25519 public key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-super {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/c;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6e
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const-class v0, Lck/t;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, LOj/a;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-static {p1}, Loh/B;->B([B)Loh/B;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    new-instance p2, Lck/t;

    new-instance v0, LXi/O;

    invoke-direct {v0, p1}, LXi/O;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/util/j;->b(LXi/c;)[B

    move-result-object p1

    invoke-direct {p2, p1}, Lck/t;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    const-class v0, Lck/u;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, LOj/b;

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    sget-object p2, LOj/h;->g:[B

    array-length v3, p2

    array-length v0, p1

    add-int/lit8 v6, v0, -0x20

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/util/a;->f([BII[BII)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, LXi/P;

    array-length p2, p2

    invoke-direct {v0, p1, p2}, LXi/P;-><init>([BI)V

    new-instance p1, Lck/u;

    invoke-static {v0}, Lorg/bouncycastle/crypto/util/k;->a(LXi/c;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lck/u;-><init>([B)V

    return-object p1

    :catch_1
    move-exception p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string p2, "Invalid Ed25519 public key encoding"

    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    new-instance p2, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    const-class v0, Lck/w;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p1, LIj/g;

    if-eqz v0, :cond_3

    new-instance p2, Lck/w;

    check-cast p1, LIj/g;

    invoke-interface {p1}, LIj/g;->ne()[B

    move-result-object p1

    invoke-direct {p2, p1}, Lck/w;-><init>([B)V

    return-object p2

    :cond_3
    instance-of v0, p1, LIj/d;

    if-eqz v0, :cond_4

    new-instance p2, Lck/w;

    check-cast p1, LIj/d;

    invoke-interface {p1}, LIj/d;->v3()[B

    move-result-object p1

    invoke-direct {p2, p1}, Lck/w;-><init>([B)V

    return-object p2

    :cond_4
    invoke-super {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/c;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object p1

    return-object p1
.end method

.method public engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "key type unknown"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
