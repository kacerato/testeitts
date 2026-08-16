.class public Loh/H0;
.super Loh/x0;
.source "SourceFile"


# instance fields
.field public final e:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Loh/x0;-><init>(Ljava/io/OutputStream;)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Loh/H0;->e:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Loh/x0;-><init>(Ljava/io/OutputStream;IZ)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Loh/H0;->e:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Loh/H0;->e:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public e(Loh/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    iget-object v0, p0, Loh/H0;->e:Ljava/io/ByteArrayOutputStream;

    const-string v1, "DER"

    invoke-virtual {p1, v0, v1}, Loh/B;->f(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public f(Loh/B;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Loh/H0;->e:Ljava/io/ByteArrayOutputStream;

    const-string v1, "DER"

    invoke-virtual {p1, v0, v1}, Loh/B;->f(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Loh/H0;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {p0, v1, v0}, Loh/x0;->b(I[B)V

    return-void
.end method
