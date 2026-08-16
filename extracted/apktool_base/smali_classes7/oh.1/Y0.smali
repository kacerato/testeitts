.class public Loh/Y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loh/H;


# instance fields
.field public b:Loh/I;


# direct methods
.method public constructor <init>(Loh/I;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loh/Y0;->b:Loh/I;

    return-void
.end method


# virtual methods
.method public c()Loh/B;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Loh/Y0;->b:Loh/I;

    invoke-virtual {v0}, Loh/I;->k()Loh/h;

    move-result-object v0

    invoke-static {v0}, Loh/T0;->b(Loh/h;)Loh/X0;

    move-result-object v0

    return-object v0
.end method

.method public r()Loh/B;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Loh/Y0;->c()Loh/B;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readObject()Loh/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Loh/Y0;->b:Loh/I;

    invoke-virtual {v0}, Loh/I;->j()Loh/g;

    move-result-object v0

    return-object v0
.end method
