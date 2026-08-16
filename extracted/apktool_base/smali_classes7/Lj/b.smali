.class public LLj/b;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/c;
.source "SourceFile"


# static fields
.field public static final a:Lhi/b;

.field public static final b:Lhi/b;

.field public static final c:Lhi/b;

.field public static final d:Lhi/b;

.field public static final e:Lhi/b;

.field public static final f:Lhi/b;

.field public static final g:Lhi/b;

.field public static final h:Lhi/b;

.field public static final i:Lhi/b;

.field public static final j:Lhi/b;

.field public static final k:Lhi/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lhi/b;

    sget-object v1, Lqh/a;->u1:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    sput-object v0, LLj/b;->a:Lhi/b;

    new-instance v0, Lhi/b;

    sget-object v1, Lqh/a;->v1:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    sput-object v0, LLj/b;->b:Lhi/b;

    new-instance v0, Lhi/b;

    sget-object v1, Lqh/a;->w1:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    sput-object v0, LLj/b;->c:Lhi/b;

    new-instance v0, Lhi/b;

    sget-object v1, Lqh/a;->r1:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    sput-object v0, LLj/b;->d:Lhi/b;

    new-instance v0, Lhi/b;

    sget-object v1, Lqj/a;->d:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    sput-object v0, LLj/b;->e:Lhi/b;

    new-instance v0, Lhi/b;

    sget-object v1, Lki/r;->I5:Loh/x;

    new-instance v2, Lki/j;

    sget-object v3, LZh/d;->H:Loh/x;

    invoke-direct {v2, v3}, Lki/j;-><init>(Loh/x;)V

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sput-object v0, LLj/b;->f:Lhi/b;

    new-instance v0, Lhi/b;

    new-instance v2, Lki/j;

    sget-object v3, Lbi/b;->u:Loh/x;

    invoke-direct {v2, v3}, Lki/j;-><init>(Loh/x;)V

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sput-object v0, LLj/b;->g:Lhi/b;

    new-instance v0, Lhi/b;

    sget-object v2, LXh/t;->H0:Loh/x;

    invoke-direct {v0, v2}, Lhi/b;-><init>(Loh/x;)V

    sput-object v0, LLj/b;->h:Lhi/b;

    new-instance v0, Lhi/b;

    sget-object v2, Lqj/a;->e:Loh/x;

    invoke-direct {v0, v2}, Lhi/b;-><init>(Loh/x;)V

    sput-object v0, LLj/b;->i:Lhi/b;

    new-instance v0, Lhi/b;

    new-instance v2, Lki/j;

    sget-object v3, LZh/d;->A:Loh/x;

    invoke-direct {v2, v3}, Lki/j;-><init>(Loh/x;)V

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sput-object v0, LLj/b;->j:Lhi/b;

    new-instance v0, Lhi/b;

    new-instance v2, Lki/j;

    sget-object v3, Lbi/b;->y:Loh/x;

    invoke-direct {v2, v3}, Lki/j;-><init>(Loh/x;)V

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sput-object v0, LLj/b;->k:Lhi/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/h0;)Ljava/security/PublicKey;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lhi/h0;->z()Loh/c;

    move-result-object v0

    invoke-virtual {v0}, Loh/c;->F()[B

    move-result-object v0

    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object p1

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1}, LLj/b;->c(Loh/x;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v2

    new-array v2, v2, [Loh/c;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v0, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v5

    instance-of v5, v5, Loh/C0;

    if-eqz v5, :cond_0

    new-instance v5, Loh/r0;

    invoke-virtual {v0, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    check-cast v6, Loh/C0;

    invoke-virtual {v6}, Loh/y;->H()[B

    move-result-object v6

    invoke-direct {v5, v6}, Loh/r0;-><init>([B)V

    aput-object v5, v2, v4

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    invoke-virtual {v0, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v5

    check-cast v5, Loh/r0;

    aput-object v5, v2, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v2}, LLj/b;->d(Loh/x;[Loh/c;)[Ljava/security/spec/X509EncodedKeySpec;

    move-result-object v2

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v4

    new-array v4, v4, [Ljava/security/PublicKey;

    :goto_2
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/KeyFactory;

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, LHj/e;

    invoke-direct {v0, p1, v4}, LHj/e;-><init>(Loh/x;[Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/h;->c(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public b(LXh/v;)Ljava/security/PrivateKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LXh/v;->E()Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    invoke-virtual {p1}, LXh/v;->y()Lhi/b;

    move-result-object p1

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1}, LLj/b;->c(Loh/x;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/PrivateKey;

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v0, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v5

    invoke-static {v5}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object v5

    invoke-virtual {v5}, Loh/v;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/KeyFactory;

    invoke-virtual {v5, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance v0, LHj/d;

    invoke-direct {v0, p1, v2}, LHj/d;-><init>(Loh/x;[Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/h;->c(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public final c(Loh/x;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loh/x;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/KeyFactory;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, LLj/b$a;->a:[I

    sget-object v3, LLj/a;->c:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LLj/a$a;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const-string v2, "Ed25519"

    const-string v3, "ECDSA"

    const-string v4, "Falcon"

    const-string v5, "Dilithium"

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot create KeyFactories. Unsupported algorithm identifier."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "RSA"

    :goto_2
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_4
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "Ed448"

    goto :goto_2

    :pswitch_5
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :goto_3
    const/4 p1, 0x0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v2, "BC"

    invoke-static {p1, v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Loh/x;[Loh/c;)[Ljava/security/spec/X509EncodedKeySpec;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p2

    new-array v0, v0, [Ljava/security/spec/X509EncodedKeySpec;

    array-length v1, p2

    new-array v1, v1, [Lhi/h0;

    sget-object v2, LLj/b$a;->a:[I

    sget-object v3, LLj/a;->c:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LLj/a$a;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot create key specs. Unsupported algorithm identifier."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->d:Lhi/b;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v3

    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->g:Lhi/b;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v2

    goto/16 :goto_0

    :pswitch_1
    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->d:Lhi/b;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v3

    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->f:Lhi/b;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v2

    goto/16 :goto_0

    :pswitch_2
    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->d:Lhi/b;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v3

    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->e:Lhi/b;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v2

    goto/16 :goto_0

    :pswitch_3
    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->c:Lhi/b;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v3

    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->k:Lhi/b;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v2

    goto/16 :goto_0

    :pswitch_4
    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->c:Lhi/b;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v3

    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->j:Lhi/b;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v2

    goto/16 :goto_0

    :pswitch_5
    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->b:Lhi/b;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v3

    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->g:Lhi/b;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v2

    goto/16 :goto_0

    :pswitch_6
    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->b:Lhi/b;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v3

    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->f:Lhi/b;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v2

    goto/16 :goto_0

    :pswitch_7
    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->a:Lhi/b;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v3

    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->g:Lhi/b;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v2

    goto/16 :goto_0

    :pswitch_8
    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->a:Lhi/b;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v3

    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->f:Lhi/b;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v2

    goto :goto_0

    :pswitch_9
    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->b:Lhi/b;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v3

    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->h:Lhi/b;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v2

    goto :goto_0

    :pswitch_a
    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->a:Lhi/b;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v3

    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->h:Lhi/b;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v2

    goto :goto_0

    :pswitch_b
    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->c:Lhi/b;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v3

    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->i:Lhi/b;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v2

    goto :goto_0

    :pswitch_c
    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->b:Lhi/b;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v3

    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->e:Lhi/b;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v2

    goto :goto_0

    :pswitch_d
    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->a:Lhi/b;

    aget-object v5, p2, v3

    invoke-direct {p1, v4, v5}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v3

    new-instance p1, Lhi/h0;

    sget-object v4, LLj/b;->e:Lhi/b;

    aget-object p2, p2, v2

    invoke-direct {p1, v4, p2}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    aput-object p1, v1, v2

    :goto_0
    new-instance p1, Ljava/security/spec/X509EncodedKeySpec;

    aget-object p2, v1, v3

    invoke-virtual {p2}, Loh/v;->getEncoded()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    aput-object p1, v0, v3

    new-instance p1, Ljava/security/spec/X509EncodedKeySpec;

    aget-object p2, v1, v2

    invoke-virtual {p2}, Loh/v;->getEncoded()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    aput-object p1, v0, v2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    instance-of v0, p1, Ljava/security/PrivateKey;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object p1

    invoke-virtual {p0, p1}, LLj/b;->b(LXh/v;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object p1

    invoke-virtual {p0, p1}, LLj/b;->a(Lhi/h0;)Ljava/security/PublicKey;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Key not recognized"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key could not be parsed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
