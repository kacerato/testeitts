.class public Loh/C0;
.super Loh/y;
.source "SourceFile"


# direct methods
.method public constructor <init>(Loh/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Loh/y;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Loh/y;-><init>([B)V

    return-void
.end method

.method public static K(Loh/A;Z[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x4

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Loh/A;->s(ZI[BII)V

    return-void
.end method

.method public static L(ZI)I
    .locals 0

    invoke-static {p0, p1}, Loh/A;->i(ZI)I

    move-result p0

    return p0
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    iget-object v1, p0, Loh/y;->b:[B

    invoke-virtual {p1, p2, v0, v1}, Loh/A;->r(ZI[B)V

    return-void
.end method

.method public x()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public y(Z)I
    .locals 1

    iget-object v0, p0, Loh/y;->b:[B

    array-length v0, v0

    invoke-static {p1, v0}, Loh/A;->i(ZI)I

    move-result p1

    return p1
.end method
