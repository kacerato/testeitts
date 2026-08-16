.class public Loh/r0;
.super Loh/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(BI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Loh/c;-><init>(BI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-static {p1}, Loh/c;->G(I)[B

    move-result-object v0

    invoke-static {p1}, Loh/c;->K(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Loh/c;-><init>([BI)V

    return-void
.end method

.method public constructor <init>(Loh/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Loh/c;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Loh/r0;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Loh/c;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Loh/c;-><init>([BZ)V

    return-void
.end method

.method public static N(Loh/c;)Loh/r0;
    .locals 0

    invoke-virtual {p0}, Loh/c;->C()Loh/B;

    move-result-object p0

    check-cast p0, Loh/r0;

    return-object p0
.end method

.method public static O(Loh/y;)Loh/r0;
    .locals 2

    new-instance v0, Loh/r0;

    invoke-virtual {p0}, Loh/y;->H()[B

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Loh/r0;-><init>([BZ)V

    return-object v0
.end method


# virtual methods
.method public C()Loh/B;
    .locals 0

    return-object p0
.end method

.method public D()Loh/B;
    .locals 0

    return-object p0
.end method

.method public v(Loh/A;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Loh/c;->b:[B

    const/4 v0, 0x0

    aget-byte v0, v3, v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    array-length v2, v3

    add-int/lit8 v5, v2, -0x1

    aget-byte v2, v3, v5

    shl-int v0, v1, v0

    and-int/2addr v0, v2

    int-to-byte v6, v0

    if-ne v2, v6, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0, v3}, Loh/A;->r(ZI[B)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    const/4 v4, 0x0

    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Loh/A;->t(ZI[BIIB)V

    :goto_0
    return-void
.end method

.method public x()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public y(Z)I
    .locals 1

    iget-object v0, p0, Loh/c;->b:[B

    array-length v0, v0

    invoke-static {p1, v0}, Loh/A;->i(ZI)I

    move-result p1

    return p1
.end method
