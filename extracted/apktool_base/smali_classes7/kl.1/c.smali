.class public abstract Lkl/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[I

.field public b:[I

.field public c:[I

.field public d:Lkl/a;

.field public e:Lkl/a;

.field public f:Lkl/a;

.field public g:[I

.field public h:[I

.field public i:[I

.field public j:[I

.field public k:[I

.field public l:Lkl/a;

.field public m:Lkl/a;

.field public n:Lkl/a;

.field public o:Lkl/a;

.field public p:Lkl/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static g(Ljava/util/Properties;Ljava/lang/String;I)[I
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkl/c;->i(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lem/h;->c([B)[B

    move-result-object p0

    new-array p1, p2, [I

    const/4 p2, 0x0

    :goto_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    if-ge p2, v0, :cond_0

    mul-int/lit8 v0, p2, 0x4

    invoke-static {p0, v0}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result v0

    aput v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static h(Ljava/io/DataInputStream;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static i(Ljava/lang/String;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lkl/a;I)Lkl/b;
    .locals 1

    new-instance v0, Lkl/b;

    invoke-direct {v0, p1}, Lkl/b;-><init>(Lkl/a;)V

    invoke-virtual {v0}, Lkl/a;->e()I

    move-result p1

    mul-int/2addr p2, p1

    invoke-virtual {v0, p2}, Lkl/b;->g(I)V

    return-object v0
.end method

.method public b(Lkl/h;I)Lkl/b;
    .locals 2

    iget v0, p1, Lkl/h;->f:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lkl/c;->e:Lkl/a;

    :goto_1
    invoke-virtual {p0, p1, p2}, Lkl/c;->a(Lkl/a;I)Lkl/b;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v1, 0x81

    if-ne v0, v1, :cond_2

    :goto_2
    iget-object p1, p0, Lkl/c;->n:Lkl/a;

    goto :goto_1

    :cond_2
    const/16 v1, 0xc0

    if-ne v0, v1, :cond_3

    iget p1, p1, Lkl/h;->d:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_3
    const/16 p1, 0xff

    if-ne v0, p1, :cond_4

    goto :goto_2

    :cond_4
    const/16 p1, 0x100

    if-ne v0, p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lkl/h;)Lkl/b;
    .locals 3

    iget v0, p1, Lkl/h;->f:I

    const/16 v1, 0x81

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    :goto_0
    iget-object p1, p0, Lkl/c;->o:Lkl/a;

    invoke-virtual {p0, p1, v2}, Lkl/c;->a(Lkl/a;I)Lkl/b;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v1, 0xc0

    if-ne v0, v1, :cond_1

    iget p1, p1, Lkl/h;->d:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0xff

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Lkl/h;I)Lkl/b;
    .locals 2

    iget v0, p1, Lkl/h;->f:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lkl/c;->d:Lkl/a;

    :goto_1
    invoke-virtual {p0, p1, p2}, Lkl/c;->a(Lkl/a;I)Lkl/b;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v1, 0x81

    if-ne v0, v1, :cond_2

    :goto_2
    iget-object p1, p0, Lkl/c;->l:Lkl/a;

    goto :goto_1

    :cond_2
    const/16 v1, 0xc0

    if-ne v0, v1, :cond_3

    iget p1, p1, Lkl/h;->d:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_3
    const/16 p1, 0xff

    if-ne v0, p1, :cond_4

    goto :goto_2

    :cond_4
    const/16 p1, 0x100

    if-ne v0, p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Lkl/h;I)Lkl/b;
    .locals 2

    iget v0, p1, Lkl/h;->f:I

    const/16 v1, 0x81

    if-ne v0, v1, :cond_0

    :goto_0
    iget-object p1, p0, Lkl/c;->m:Lkl/a;

    invoke-virtual {p0, p1, p2}, Lkl/c;->a(Lkl/a;I)Lkl/b;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v1, 0xc0

    if-ne v0, v1, :cond_1

    iget p1, p1, Lkl/h;->d:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0xff

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Lkl/h;I)Lkl/b;
    .locals 2

    iget v0, p1, Lkl/h;->f:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lkl/c;->f:Lkl/a;

    :goto_1
    invoke-virtual {p0, p1, p2}, Lkl/c;->a(Lkl/a;I)Lkl/b;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v1, 0x81

    if-ne v0, v1, :cond_2

    :goto_2
    iget-object p1, p0, Lkl/c;->p:Lkl/a;

    goto :goto_1

    :cond_2
    const/16 v1, 0xc0

    if-ne v0, v1, :cond_3

    iget p1, p1, Lkl/h;->d:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_3
    const/16 p1, 0xff

    if-ne v0, p1, :cond_4

    goto :goto_2

    :cond_4
    const/16 p1, 0x100

    if-ne v0, p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method
