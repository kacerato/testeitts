.class public LFk/E;
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

    invoke-direct {p0, p1}, LFk/E;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LFk/E;->b:[B

    invoke-virtual {p0}, LFk/E;->u()V

    return-void
.end method

.method public static v(Ljava/lang/Object;)LFk/E;
    .locals 1

    instance-of v0, p0, LFk/E;

    if-eqz v0, :cond_0

    check-cast p0, LFk/E;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LFk/E;

    invoke-static {p0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p0

    invoke-direct {v0, p0}, LFk/E;-><init>(Loh/y;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/C0;

    iget-object v1, p0, LFk/E;->b:[B

    invoke-direct {v0, v1}, Loh/C0;-><init>([B)V

    return-object v0
.end method

.method public final u()V
    .locals 2

    iget-object v0, p0, LFk/E;->b:[B

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "laId must be 2 octets"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public x()[B
    .locals 1

    iget-object v0, p0, LFk/E;->b:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method
