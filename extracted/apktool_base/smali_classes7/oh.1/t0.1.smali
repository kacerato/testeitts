.class public Loh/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loh/l;


# instance fields
.field public b:Loh/I;


# direct methods
.method public constructor <init>(Loh/I;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loh/t0;->b:Loh/I;

    return-void
.end method

.method public static e(Loh/I;)Loh/S0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Loh/S0;

    new-instance v1, Loh/V0;

    invoke-virtual {p0}, Loh/I;->k()Loh/h;

    move-result-object p0

    invoke-direct {v1, p0}, Loh/V0;-><init>(Loh/h;)V

    invoke-direct {v0, v1}, Loh/S0;-><init>(Loh/V0;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public c()Loh/B;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Loh/t0;->b:Loh/I;

    invoke-static {v0}, Loh/t0;->e(Loh/I;)Loh/S0;

    move-result-object v0

    return-object v0
.end method

.method public r()Loh/B;
    .locals 3

    const-string v0, "unable to get DER object"

    :try_start_0
    invoke-virtual {p0}, Loh/t0;->c()Loh/B;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Lorg/bouncycastle/asn1/ASN1ParsingException;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Lorg/bouncycastle/asn1/ASN1ParsingException;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public readObject()Loh/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Loh/t0;->b:Loh/I;

    invoke-virtual {v0}, Loh/I;->j()Loh/g;

    move-result-object v0

    return-object v0
.end method
