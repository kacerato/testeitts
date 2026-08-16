.class public LXk/n;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:[I

.field public d:[I

.field public e:[I


# direct methods
.method public constructor <init>(I[I[I[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, LXk/n;->b:I

    iput-object p2, p0, LXk/n;->c:[I

    iput-object p3, p0, LXk/n;->d:[I

    iput-object p4, p0, LXk/n;->e:[I

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, LXk/n;->u(Loh/g;)I

    move-result v1

    iput v1, p0, LXk/n;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/E;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    check-cast v2, Loh/E;

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/E;

    invoke-virtual {v1}, Loh/E;->size()I

    move-result v3

    iget v4, p0, LXk/n;->b:I

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Loh/E;->size()I

    move-result v3

    iget v4, p0, LXk/n;->b:I

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v3

    iget v4, p0, LXk/n;->b:I

    if-ne v3, v4, :cond_1

    invoke-virtual {v1}, Loh/E;->size()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, LXk/n;->c:[I

    invoke-virtual {v2}, Loh/E;->size()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, LXk/n;->d:[I

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, LXk/n;->e:[I

    :goto_0
    iget v3, p0, LXk/n;->b:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, LXk/n;->c:[I

    invoke-virtual {v1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, LXk/n;->u(Loh/g;)I

    move-result v4

    aput v4, v3, v0

    iget-object v3, p0, LXk/n;->d:[I

    invoke-virtual {v2, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, LXk/n;->u(Loh/g;)I

    move-result v4

    aput v4, v3, v0

    iget-object v3, p0, LXk/n;->e:[I

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, LXk/n;->u(Loh/g;)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid size of sequences"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sie of seqOfParams = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static u(Loh/g;)I
    .locals 3

    check-cast p0, Loh/s;

    invoke-virtual {p0}, Loh/s;->O()I

    move-result p0

    if-lez p0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BigInteger not in Range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static w(Ljava/lang/Object;)LXk/n;
    .locals 1

    instance-of v0, p0, LXk/n;

    if-eqz v0, :cond_0

    check-cast p0, LXk/n;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXk/n;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXk/n;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 7

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    new-instance v1, Loh/h;

    invoke-direct {v1}, Loh/h;-><init>()V

    new-instance v2, Loh/h;

    invoke-direct {v2}, Loh/h;-><init>()V

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, LXk/n;->c:[I

    array-length v4, v4

    if-ge v3, v4, :cond_0

    new-instance v4, Loh/s;

    iget-object v5, p0, LXk/n;->c:[I

    aget v5, v5, v3

    int-to-long v5, v5

    invoke-direct {v4, v5, v6}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v4}, Loh/h;->a(Loh/g;)V

    new-instance v4, Loh/s;

    iget-object v5, p0, LXk/n;->d:[I

    aget v5, v5, v3

    int-to-long v5, v5

    invoke-direct {v4, v5, v6}, Loh/s;-><init>(J)V

    invoke-virtual {v1, v4}, Loh/h;->a(Loh/g;)V

    new-instance v4, Loh/s;

    iget-object v5, p0, LXk/n;->e:[I

    aget v5, v5, v3

    int-to-long v5, v5

    invoke-direct {v4, v5, v6}, Loh/s;-><init>(J)V

    invoke-virtual {v2, v4}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Loh/h;

    invoke-direct {v3}, Loh/h;-><init>()V

    new-instance v4, Loh/s;

    iget v5, p0, LXk/n;->b:I

    int-to-long v5, v5

    invoke-direct {v4, v5, v6}, Loh/s;-><init>(J)V

    invoke-virtual {v3, v4}, Loh/h;->a(Loh/g;)V

    new-instance v4, Loh/G0;

    invoke-direct {v4, v0}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v3, v4}, Loh/h;->a(Loh/g;)V

    new-instance v0, Loh/G0;

    invoke-direct {v0, v1}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v3, v0}, Loh/h;->a(Loh/g;)V

    new-instance v0, Loh/G0;

    invoke-direct {v0, v2}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v3, v0}, Loh/h;->a(Loh/g;)V

    new-instance v0, Loh/G0;

    invoke-direct {v0, v3}, Loh/G0;-><init>(Loh/h;)V

    return-object v0
.end method

.method public v()[I
    .locals 1

    iget-object v0, p0, LXk/n;->c:[I

    invoke-static {v0}, Lorg/bouncycastle/util/a;->s([I)[I

    move-result-object v0

    return-object v0
.end method

.method public x()[I
    .locals 1

    iget-object v0, p0, LXk/n;->e:[I

    invoke-static {v0}, Lorg/bouncycastle/util/a;->s([I)[I

    move-result-object v0

    return-object v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, LXk/n;->b:I

    return v0
.end method

.method public z()[I
    .locals 1

    iget-object v0, p0, LXk/n;->d:[I

    invoke-static {v0}, Lorg/bouncycastle/util/a;->s([I)[I

    move-result-object v0

    return-object v0
.end method
