.class public LZj/i$j;
.super Lak/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field public d:Z

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Loh/x;ZIIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lak/e;-><init>(Ljava/lang/String;Loh/x;)V

    iput-boolean p3, p0, LZj/i$j;->d:Z

    iput p4, p0, LZj/i$j;->e:I

    iput p5, p0, LZj/i$j;->f:I

    iput p6, p0, LZj/i$j;->g:I

    iput p7, p0, LZj/i$j;->h:I

    return-void
.end method


# virtual methods
.method public engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/spec/PBEKeySpec;

    if-eqz v0, :cond_6

    move-object v8, p1

    check-cast v8, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object p1

    if-nez p1, :cond_3

    iget v4, p0, LZj/i$j;->e:I

    if-eqz v4, :cond_1

    const/4 p1, 0x4

    if-ne v4, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lak/a;

    iget-object v2, p0, Lak/e;->b:Ljava/lang/String;

    iget-object v3, p0, Lak/e;->c:Loh/x;

    iget v5, p0, LZj/i$j;->f:I

    iget v6, p0, LZj/i$j;->g:I

    iget v7, p0, LZj/i$j;->h:I

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lak/a;-><init>(Ljava/lang/String;Loh/x;IIIILjavax/crypto/spec/PBEKeySpec;LBi/k;)V

    return-object p1

    :cond_1
    :goto_0
    new-instance p1, LHj/g;

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    iget v1, p0, LZj/i$j;->e:I

    if-nez v1, :cond_2

    sget-object v1, LBi/M;->ASCII:LBi/M;

    goto :goto_1

    :cond_2
    sget-object v1, LBi/M;->UTF8:LBi/M;

    :goto_1
    invoke-direct {p1, v0, v1}, LHj/g;-><init>([CLBi/i;)V

    return-object p1

    :cond_3
    iget-boolean p1, p0, LZj/i$j;->d:Z

    if-eqz p1, :cond_4

    iget p1, p0, LZj/i$j;->e:I

    iget v0, p0, LZj/i$j;->f:I

    iget v1, p0, LZj/i$j;->g:I

    iget v2, p0, LZj/i$j;->h:I

    invoke-static {v8, p1, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/d$a;->g(Ljavax/crypto/spec/PBEKeySpec;IIII)LBi/k;

    move-result-object p1

    :goto_2
    move-object v9, p1

    goto :goto_3

    :cond_4
    iget p1, p0, LZj/i$j;->e:I

    iget v0, p0, LZj/i$j;->f:I

    iget v1, p0, LZj/i$j;->g:I

    invoke-static {v8, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/d$a;->e(Ljavax/crypto/spec/PBEKeySpec;III)LBi/k;

    move-result-object p1

    goto :goto_2

    :goto_3
    instance-of p1, v9, LXi/w0;

    if-eqz p1, :cond_5

    move-object p1, v9

    check-cast p1, LXi/w0;

    invoke-virtual {p1}, LXi/w0;->b()LBi/k;

    move-result-object p1

    check-cast p1, LXi/o0;

    goto :goto_4

    :cond_5
    move-object p1, v9

    check-cast p1, LXi/o0;

    :goto_4
    invoke-virtual {p1}, LXi/o0;->b()[B

    move-result-object p1

    invoke-static {p1}, LXi/k;->f([B)V

    new-instance p1, Lak/a;

    iget-object v2, p0, Lak/e;->b:Ljava/lang/String;

    iget-object v3, p0, Lak/e;->c:Loh/x;

    iget v4, p0, LZj/i$j;->e:I

    iget v5, p0, LZj/i$j;->f:I

    iget v6, p0, LZj/i$j;->g:I

    iget v7, p0, LZj/i$j;->h:I

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lak/a;-><init>(Ljava/lang/String;Loh/x;IIIILjavax/crypto/spec/PBEKeySpec;LBi/k;)V

    return-object p1

    :cond_6
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Invalid KeySpec"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
