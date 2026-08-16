.class public LZj/C$a;
.super Lak/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lyj/c;->O:Loh/x;

    invoke-direct {p0, p1, v0}, Lak/e;-><init>(Ljava/lang/String;Loh/x;)V

    iput p2, p0, LZj/C$a;->d:I

    return-void
.end method


# virtual methods
.method public engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Lck/z;

    if-eqz v0, :cond_4

    check-cast p1, Lck/z;

    invoke-virtual {p1}, Lck/z;->f()[B

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lck/z;->b()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    invoke-virtual {p1}, Lck/z;->c()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lck/z;->e()[C

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    new-instance v0, LXi/o0;

    sget-object v1, LBi/M;->UTF8:LBi/M;

    invoke-virtual {p1}, Lck/z;->e()[C

    move-result-object v2

    invoke-interface {v1, v2}, LBi/i;->a([C)[B

    move-result-object v3

    invoke-virtual {p1}, Lck/z;->f()[B

    move-result-object v4

    invoke-virtual {p1}, Lck/z;->b()I

    move-result v5

    invoke-virtual {p1}, Lck/z;->a()I

    move-result v6

    invoke-virtual {p1}, Lck/z;->d()I

    move-result v7

    invoke-virtual {p1}, Lck/z;->c()I

    move-result p1

    div-int/lit8 v8, p1, 0x8

    invoke-static/range {v3 .. v8}, LOi/N;->i([B[BIIII)[B

    move-result-object p1

    invoke-direct {v0, p1}, LXi/o0;-><init>([B)V

    new-instance p1, Lak/a;

    iget-object v1, p0, Lak/e;->b:Ljava/lang/String;

    invoke-direct {p1, v1, v0}, Lak/a;-><init>(Ljava/lang/String;LBi/k;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "password empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "positive key length required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lck/z;->c()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cost parameter N must be > 1."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Salt S must be provided."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Invalid KeySpec"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
