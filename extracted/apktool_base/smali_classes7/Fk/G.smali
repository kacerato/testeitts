.class public LFk/G;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:[B


# direct methods
.method public constructor <init>(Loh/y;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-direct {p0, p1}, LFk/G;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LFk/G;->b:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "linkage seed not 16 bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u(Ljava/lang/Object;)LFk/G;
    .locals 1

    instance-of v0, p0, LFk/G;

    if-eqz v0, :cond_0

    check-cast p0, LFk/G;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LFk/G;

    invoke-static {p0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p0

    invoke-direct {v0, p0}, LFk/G;-><init>(Loh/y;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/C0;

    iget-object v1, p0, LFk/G;->b:[B

    invoke-direct {v0, v1}, Loh/C0;-><init>([B)V

    return-object v0
.end method

.method public v()[B
    .locals 1

    iget-object v0, p0, LFk/G;->b:[B

    return-object v0
.end method
