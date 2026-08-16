.class public Loh/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loh/d;


# instance fields
.field public b:Loh/I;

.field public c:Loh/o0;


# direct methods
.method public constructor <init>(Loh/I;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loh/Z;->b:Loh/I;

    return-void
.end method

.method public static e(Loh/I;)Loh/Y;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Loh/o0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Loh/o0;-><init>(Loh/I;Z)V

    invoke-static {v0}, Lfm/d;->e(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-virtual {v0}, Loh/o0;->d()I

    move-result v0

    new-instance v1, Loh/Y;

    invoke-direct {v1, p0, v0}, Loh/Y;-><init>([BI)V

    return-object v1
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Loh/o0;

    iget-object v1, p0, Loh/Z;->b:Loh/I;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Loh/o0;-><init>(Loh/I;Z)V

    iput-object v0, p0, Loh/Z;->c:Loh/o0;

    return-object v0
.end method

.method public c()Loh/B;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Loh/Z;->b:Loh/I;

    invoke-static {v0}, Loh/Z;->e(Loh/I;)Loh/Y;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Loh/o0;

    iget-object v1, p0, Loh/Z;->b:Loh/I;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Loh/o0;-><init>(Loh/I;Z)V

    iput-object v0, p0, Loh/Z;->c:Loh/o0;

    return-object v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Loh/Z;->c:Loh/o0;

    invoke-virtual {v0}, Loh/o0;->d()I

    move-result v0

    return v0
.end method

.method public r()Loh/B;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Loh/Z;->c()Loh/B;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException converting stream to byte array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
