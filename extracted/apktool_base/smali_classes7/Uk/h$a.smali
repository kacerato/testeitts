.class public LUk/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LSk/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LUk/h;->a(Lhi/b;)LSk/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lhi/b;

.field public final synthetic b:LUk/h;


# direct methods
.method public constructor <init>(LUk/h;Lhi/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LUk/h$a;->b:LUk/h;

    iput-object p2, p0, LUk/h$a;->a:Lhi/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([C)LQk/A;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object v0, p0, LUk/h$a;->a:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, LXh/s;->v(Ljava/lang/Object;)LXh/s;

    move-result-object v4

    :try_start_0
    iget-object v0, p0, LUk/h$a;->a:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v3

    iget-object v0, p0, LUk/h$a;->b:LUk/h;

    invoke-static {v0}, LUk/h;->b(LUk/h;)Ldk/f;

    move-result-object v0

    invoke-virtual {v3}, Loh/x;->J()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldk/f;->w(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v5

    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v4}, LXh/s;->u()[B

    move-result-object v1

    invoke-virtual {v4}, LXh/s;->x()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    new-instance v6, LHj/l;

    invoke-direct {v6, p1}, LHj/l;-><init>([C)V

    invoke-virtual {v5, v6, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance p1, LUk/h$a$a;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, LUk/h$a$a;-><init>(LUk/h$a;Loh/x;LXh/s;Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

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

.method public b()Lhi/b;
    .locals 3

    new-instance v0, Lhi/b;

    iget-object v1, p0, LUk/h$a;->a:Lhi/b;

    invoke-virtual {v1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    sget-object v2, Loh/A0;->c:Loh/A0;

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    return-object v0
.end method
