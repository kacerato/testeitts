.class public LBg/j;
.super LBg/b;
.source "SourceFile"


# instance fields
.field public t:I

.field public u:I

.field public v:I

.field public w:[B

.field public x:[B

.field public y:J

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LBg/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LBg/j;->u:I

    sget-object v0, Lyg/c;->CENTRAL_DIRECTORY:Lyg/c;

    invoke-virtual {p0, v0}, LBg/q;->b(Lyg/c;)V

    return-void
.end method


# virtual methods
.method public final N(LBg/j;)J
    .locals 2

    invoke-virtual {p1}, LBg/b;->q()LBg/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LBg/b;->q()LBg/p;

    move-result-object p1

    invoke-virtual {p1}, LBg/p;->e()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p1}, LBg/j;->T()J

    move-result-wide v0

    return-wide v0
.end method

.method public O()I
    .locals 1

    iget v0, p0, LBg/j;->v:I

    return v0
.end method

.method public P()[B
    .locals 1

    iget-object v0, p0, LBg/j;->x:[B

    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LBg/j;->z:Ljava/lang/String;

    return-object v0
.end method

.method public R()I
    .locals 1

    iget v0, p0, LBg/j;->u:I

    return v0
.end method

.method public S()[B
    .locals 1

    iget-object v0, p0, LBg/j;->w:[B

    return-object v0
.end method

.method public T()J
    .locals 2

    iget-wide v0, p0, LBg/j;->y:J

    return-wide v0
.end method

.method public U()I
    .locals 1

    iget v0, p0, LBg/j;->t:I

    return v0
.end method

.method public V(I)V
    .locals 0

    iput p1, p0, LBg/j;->v:I

    return-void
.end method

.method public W([B)V
    .locals 0

    iput-object p1, p0, LBg/j;->x:[B

    return-void
.end method

.method public X(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LBg/j;->z:Ljava/lang/String;

    return-void
.end method

.method public Y(I)V
    .locals 0

    iput p1, p0, LBg/j;->u:I

    return-void
.end method

.method public Z([B)V
    .locals 0

    iput-object p1, p0, LBg/j;->w:[B

    return-void
.end method

.method public a0(J)V
    .locals 0

    iput-wide p1, p0, LBg/j;->y:J

    return-void
.end method

.method public b0(I)V
    .locals 0

    iput p1, p0, LBg/j;->t:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, LBg/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, LBg/j;

    invoke-virtual {p0, p0}, LBg/j;->N(LBg/j;)J

    move-result-wide v2

    invoke-virtual {p0, p1}, LBg/j;->N(LBg/j;)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, LBg/b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0}, LBg/j;->N(LBg/j;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, LBg/b;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
