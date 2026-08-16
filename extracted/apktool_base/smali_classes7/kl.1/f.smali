.class public Lkl/f;
.super Lkl/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lkl/c;-><init>()V

    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    const-class v2, Lkl/c;

    const-string v3, "lowmcL5.bin.properties"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lkl/c;->h(Ljava/io/DataInputStream;)[I

    move-result-object v1

    iput-object v1, p0, Lkl/c;->a:[I

    invoke-static {v0}, Lkl/c;->h(Ljava/io/DataInputStream;)[I

    move-result-object v1

    iput-object v1, p0, Lkl/c;->b:[I

    invoke-static {v0}, Lkl/c;->h(Ljava/io/DataInputStream;)[I

    move-result-object v1

    iput-object v1, p0, Lkl/c;->c:[I

    invoke-static {v0}, Lkl/c;->h(Ljava/io/DataInputStream;)[I

    move-result-object v1

    iput-object v1, p0, Lkl/c;->g:[I

    invoke-static {v0}, Lkl/c;->h(Ljava/io/DataInputStream;)[I

    move-result-object v1

    iput-object v1, p0, Lkl/c;->h:[I

    invoke-static {v0}, Lkl/c;->h(Ljava/io/DataInputStream;)[I

    move-result-object v1

    iput-object v1, p0, Lkl/c;->i:[I

    invoke-static {v0}, Lkl/c;->h(Ljava/io/DataInputStream;)[I

    move-result-object v1

    iput-object v1, p0, Lkl/c;->j:[I

    invoke-static {v0}, Lkl/c;->h(Ljava/io/DataInputStream;)[I

    move-result-object v0

    iput-object v0, p0, Lkl/c;->k:[I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lkl/a;

    iget-object v1, p0, Lkl/c;->a:[I

    const/16 v2, 0x26

    const/16 v3, 0x100

    const/16 v4, 0x8

    invoke-direct {v0, v2, v3, v4, v1}, Lkl/a;-><init>(III[I)V

    iput-object v0, p0, Lkl/c;->d:Lkl/a;

    new-instance v0, Lkl/a;

    const/16 v1, 0x27

    iget-object v5, p0, Lkl/c;->c:[I

    invoke-direct {v0, v1, v3, v4, v5}, Lkl/a;-><init>(III[I)V

    iput-object v0, p0, Lkl/c;->e:Lkl/a;

    new-instance v0, Lkl/a;

    iget-object v1, p0, Lkl/c;->b:[I

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lkl/a;-><init>(III[I)V

    iput-object v0, p0, Lkl/c;->f:Lkl/a;

    new-instance v0, Lkl/a;

    iget-object v1, p0, Lkl/c;->g:[I

    const/4 v2, 0x4

    const/16 v5, 0xff

    invoke-direct {v0, v2, v5, v4, v1}, Lkl/a;-><init>(III[I)V

    iput-object v0, p0, Lkl/c;->l:Lkl/a;

    new-instance v0, Lkl/a;

    iget-object v1, p0, Lkl/c;->j:[I

    invoke-direct {v0, v2, v5, v4, v1}, Lkl/a;-><init>(III[I)V

    iput-object v0, p0, Lkl/c;->m:Lkl/a;

    new-instance v0, Lkl/a;

    const/4 v1, 0x5

    iget-object v6, p0, Lkl/c;->h:[I

    invoke-direct {v0, v1, v5, v4, v6}, Lkl/a;-><init>(III[I)V

    iput-object v0, p0, Lkl/c;->n:Lkl/a;

    new-instance v0, Lkl/a;

    iget-object v1, p0, Lkl/c;->i:[I

    invoke-direct {v0, v3, v5, v4, v1}, Lkl/a;-><init>(III[I)V

    iput-object v0, p0, Lkl/c;->o:Lkl/a;

    new-instance v0, Lkl/a;

    iget-object v1, p0, Lkl/c;->k:[I

    invoke-direct {v0, v2, v3, v4, v1}, Lkl/a;-><init>(III[I)V

    iput-object v0, p0, Lkl/c;->p:Lkl/a;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to load Picnic properties: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/util/h;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method
