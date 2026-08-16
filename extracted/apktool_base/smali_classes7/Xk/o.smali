.class public LXk/o;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/s;

.field public c:Loh/x;

.field public d:[[B

.field public e:[B

.field public f:[[B

.field public g:[B

.field public h:[B

.field public i:[LUl/a;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Loh/v;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    instance-of v3, v3, Loh/s;

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v3

    iput-object v3, v0, LXk/o;->b:Loh/s;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v3

    iput-object v3, v0, LXk/o;->c:Loh/x;

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    check-cast v4, Loh/E;

    invoke-virtual {v4}, Loh/E;->size()I

    move-result v5

    new-array v5, v5, [[B

    iput-object v5, v0, LXk/o;->d:[[B

    move v5, v2

    :goto_1
    invoke-virtual {v4}, Loh/E;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, v0, LXk/o;->d:[[B

    invoke-virtual {v4, v5}, Loh/E;->I(I)Loh/g;

    move-result-object v7

    check-cast v7, Loh/y;

    invoke-virtual {v7}, Loh/y;->H()[B

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v5

    check-cast v5, Loh/E;

    invoke-virtual {v5, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v5

    check-cast v5, Loh/y;

    invoke-virtual {v5}, Loh/y;->H()[B

    move-result-object v5

    iput-object v5, v0, LXk/o;->e:[B

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    check-cast v6, Loh/E;

    invoke-virtual {v6}, Loh/E;->size()I

    move-result v7

    new-array v7, v7, [[B

    iput-object v7, v0, LXk/o;->f:[[B

    move v7, v2

    :goto_2
    invoke-virtual {v6}, Loh/E;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    iget-object v8, v0, LXk/o;->f:[[B

    invoke-virtual {v6, v7}, Loh/E;->I(I)Loh/g;

    move-result-object v9

    check-cast v9, Loh/y;

    invoke-virtual {v9}, Loh/y;->H()[B

    move-result-object v9

    aput-object v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    check-cast v6, Loh/E;

    invoke-virtual {v6, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    check-cast v6, Loh/y;

    invoke-virtual {v6}, Loh/y;->H()[B

    move-result-object v6

    iput-object v6, v0, LXk/o;->g:[B

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    check-cast v6, Loh/E;

    invoke-virtual {v6, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    check-cast v6, Loh/y;

    invoke-virtual {v6}, Loh/y;->H()[B

    move-result-object v6

    iput-object v6, v0, LXk/o;->h:[B

    const/4 v6, 0x6

    invoke-virtual {v1, v6}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/E;

    invoke-virtual {v1}, Loh/E;->size()I

    move-result v6

    new-array v6, v6, [[[[B

    invoke-virtual {v1}, Loh/E;->size()I

    move-result v7

    new-array v7, v7, [[[[B

    invoke-virtual {v1}, Loh/E;->size()I

    move-result v8

    new-array v8, v8, [[[B

    invoke-virtual {v1}, Loh/E;->size()I

    move-result v9

    new-array v9, v9, [[B

    move v10, v2

    :goto_3
    invoke-virtual {v1}, Loh/E;->size()I

    move-result v11

    if-ge v10, v11, :cond_8

    invoke-virtual {v1, v10}, Loh/E;->I(I)Loh/g;

    move-result-object v11

    check-cast v11, Loh/E;

    invoke-virtual {v11, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v12

    check-cast v12, Loh/E;

    invoke-virtual {v12}, Loh/E;->size()I

    move-result v13

    new-array v13, v13, [[[B

    aput-object v13, v6, v10

    move v13, v2

    :goto_4
    invoke-virtual {v12}, Loh/E;->size()I

    move-result v14

    if-ge v13, v14, :cond_4

    invoke-virtual {v12, v13}, Loh/E;->I(I)Loh/g;

    move-result-object v14

    check-cast v14, Loh/E;

    aget-object v15, v6, v10

    invoke-virtual {v14}, Loh/E;->size()I

    move-result v2

    new-array v2, v2, [[B

    aput-object v2, v15, v13

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v14}, Loh/E;->size()I

    move-result v15

    if-ge v2, v15, :cond_3

    aget-object v15, v6, v10

    aget-object v15, v15, v13

    invoke-virtual {v14, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v17

    check-cast v17, Loh/y;

    invoke-virtual/range {v17 .. v17}, Loh/y;->H()[B

    move-result-object v17

    aput-object v17, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v11, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    check-cast v2, Loh/E;

    invoke-virtual {v2}, Loh/E;->size()I

    move-result v12

    new-array v12, v12, [[[B

    aput-object v12, v7, v10

    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v2}, Loh/E;->size()I

    move-result v13

    if-ge v12, v13, :cond_6

    invoke-virtual {v2, v12}, Loh/E;->I(I)Loh/g;

    move-result-object v13

    check-cast v13, Loh/E;

    aget-object v14, v7, v10

    invoke-virtual {v13}, Loh/E;->size()I

    move-result v15

    new-array v15, v15, [[B

    aput-object v15, v14, v12

    const/4 v14, 0x0

    :goto_7
    invoke-virtual {v13}, Loh/E;->size()I

    move-result v15

    if-ge v14, v15, :cond_5

    aget-object v15, v7, v10

    aget-object v15, v15, v12

    invoke-virtual {v13, v14}, Loh/E;->I(I)Loh/g;

    move-result-object v17

    check-cast v17, Loh/y;

    invoke-virtual/range {v17 .. v17}, Loh/y;->H()[B

    move-result-object v17

    aput-object v17, v15, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_6
    invoke-virtual {v11, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    check-cast v2, Loh/E;

    invoke-virtual {v2}, Loh/E;->size()I

    move-result v12

    new-array v12, v12, [[B

    aput-object v12, v8, v10

    const/4 v12, 0x0

    :goto_8
    invoke-virtual {v2}, Loh/E;->size()I

    move-result v13

    if-ge v12, v13, :cond_7

    aget-object v13, v8, v10

    invoke-virtual {v2, v12}, Loh/E;->I(I)Loh/g;

    move-result-object v14

    check-cast v14, Loh/y;

    invoke-virtual {v14}, Loh/y;->H()[B

    move-result-object v14

    aput-object v14, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_7
    invoke-virtual {v11, v5}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    check-cast v2, Loh/y;

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v2

    aput-object v2, v9, v10

    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_8
    iget-object v1, v0, LXk/o;->h:[B

    array-length v1, v1

    sub-int/2addr v1, v3

    new-array v2, v1, [LUl/a;

    iput-object v2, v0, LXk/o;->i:[LUl/a;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_9

    new-instance v3, LUl/a;

    iget-object v4, v0, LXk/o;->h:[B

    aget-byte v11, v4, v2

    add-int/lit8 v5, v2, 0x1

    aget-byte v12, v4, v5

    aget-object v4, v6, v2

    invoke-static {v4}, LVl/c;->f([[[B)[[[S

    move-result-object v13

    aget-object v4, v7, v2

    invoke-static {v4}, LVl/c;->f([[[B)[[[S

    move-result-object v14

    aget-object v4, v8, v2

    invoke-static {v4}, LVl/c;->d([[B)[[S

    move-result-object v15

    aget-object v4, v9, v2

    invoke-static {v4}, LVl/c;->b([B)[S

    move-result-object v16

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, LUl/a;-><init>(BB[[[S[[[S[[S[S)V

    iget-object v4, v0, LXk/o;->i:[LUl/a;

    aput-object v3, v4, v2

    move v2, v5

    goto :goto_9

    :cond_9
    return-void
.end method

.method public constructor <init>([[S[S[[S[S[I[LUl/a;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, LXk/o;->b:Loh/s;

    invoke-static {p1}, LVl/c;->c([[S)[[B

    move-result-object p1

    iput-object p1, p0, LXk/o;->d:[[B

    invoke-static {p2}, LVl/c;->a([S)[B

    move-result-object p1

    iput-object p1, p0, LXk/o;->e:[B

    invoke-static {p3}, LVl/c;->c([[S)[[B

    move-result-object p1

    iput-object p1, p0, LXk/o;->f:[[B

    invoke-static {p4}, LVl/c;->a([S)[B

    move-result-object p1

    iput-object p1, p0, LXk/o;->g:[B

    invoke-static {p5}, LVl/c;->h([I)[B

    move-result-object p1

    iput-object p1, p0, LXk/o;->h:[B

    iput-object p6, p0, LXk/o;->i:[LUl/a;

    return-void
.end method

.method public static w(Ljava/lang/Object;)LXk/o;
    .locals 1

    instance-of v0, p0, LXk/o;

    if-eqz v0, :cond_0

    check-cast p0, LXk/o;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXk/o;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXk/o;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Loh/s;
    .locals 1

    iget-object v0, p0, LXk/o;->b:Loh/s;

    return-object v0
.end method

.method public B()[I
    .locals 1

    iget-object v0, p0, LXk/o;->h:[B

    invoke-static {v0}, LVl/c;->g([B)[I

    move-result-object v0

    return-object v0
.end method

.method public r()Loh/B;
    .locals 12

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iget-object v1, p0, LXk/o;->b:Loh/s;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, LXk/o;->c:Loh/x;

    goto :goto_0

    :goto_1
    new-instance v1, Loh/h;

    invoke-direct {v1}, Loh/h;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    iget-object v4, p0, LXk/o;->d:[[B

    array-length v4, v4

    if-ge v3, v4, :cond_1

    new-instance v4, Loh/C0;

    iget-object v5, p0, LXk/o;->d:[[B

    aget-object v5, v5, v3

    invoke-direct {v4, v5}, Loh/C0;-><init>([B)V

    invoke-virtual {v1, v4}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    new-instance v3, Loh/G0;

    invoke-direct {v3, v1}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/h;

    invoke-direct {v1}, Loh/h;-><init>()V

    new-instance v3, Loh/C0;

    iget-object v4, p0, LXk/o;->e:[B

    invoke-direct {v3, v4}, Loh/C0;-><init>([B)V

    invoke-virtual {v1, v3}, Loh/h;->a(Loh/g;)V

    new-instance v3, Loh/G0;

    invoke-direct {v3, v1}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/h;

    invoke-direct {v1}, Loh/h;-><init>()V

    move v3, v2

    :goto_3
    iget-object v4, p0, LXk/o;->f:[[B

    array-length v4, v4

    if-ge v3, v4, :cond_2

    new-instance v4, Loh/C0;

    iget-object v5, p0, LXk/o;->f:[[B

    aget-object v5, v5, v3

    invoke-direct {v4, v5}, Loh/C0;-><init>([B)V

    invoke-virtual {v1, v4}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    new-instance v3, Loh/G0;

    invoke-direct {v3, v1}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/h;

    invoke-direct {v1}, Loh/h;-><init>()V

    new-instance v3, Loh/C0;

    iget-object v4, p0, LXk/o;->g:[B

    invoke-direct {v3, v4}, Loh/C0;-><init>([B)V

    invoke-virtual {v1, v3}, Loh/h;->a(Loh/g;)V

    new-instance v3, Loh/G0;

    invoke-direct {v3, v1}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/h;

    invoke-direct {v1}, Loh/h;-><init>()V

    new-instance v3, Loh/C0;

    iget-object v4, p0, LXk/o;->h:[B

    invoke-direct {v3, v4}, Loh/C0;-><init>([B)V

    invoke-virtual {v1, v3}, Loh/h;->a(Loh/g;)V

    new-instance v3, Loh/G0;

    invoke-direct {v3, v1}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/h;

    invoke-direct {v1}, Loh/h;-><init>()V

    move v3, v2

    :goto_4
    iget-object v4, p0, LXk/o;->i:[LUl/a;

    array-length v4, v4

    if-ge v3, v4, :cond_8

    new-instance v4, Loh/h;

    invoke-direct {v4}, Loh/h;-><init>()V

    iget-object v5, p0, LXk/o;->i:[LUl/a;

    aget-object v5, v5, v3

    invoke-virtual {v5}, LUl/a;->a()[[[S

    move-result-object v5

    invoke-static {v5}, LVl/c;->e([[[S)[[[B

    move-result-object v5

    new-instance v6, Loh/h;

    invoke-direct {v6}, Loh/h;-><init>()V

    move v7, v2

    :goto_5
    array-length v8, v5

    if-ge v7, v8, :cond_4

    new-instance v8, Loh/h;

    invoke-direct {v8}, Loh/h;-><init>()V

    move v9, v2

    :goto_6
    aget-object v10, v5, v7

    array-length v10, v10

    if-ge v9, v10, :cond_3

    new-instance v10, Loh/C0;

    aget-object v11, v5, v7

    aget-object v11, v11, v9

    invoke-direct {v10, v11}, Loh/C0;-><init>([B)V

    invoke-virtual {v8, v10}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_3
    new-instance v9, Loh/G0;

    invoke-direct {v9, v8}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v6, v9}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_4
    new-instance v5, Loh/G0;

    invoke-direct {v5, v6}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v4, v5}, Loh/h;->a(Loh/g;)V

    iget-object v5, p0, LXk/o;->i:[LUl/a;

    aget-object v5, v5, v3

    invoke-virtual {v5}, LUl/a;->b()[[[S

    move-result-object v5

    invoke-static {v5}, LVl/c;->e([[[S)[[[B

    move-result-object v5

    new-instance v6, Loh/h;

    invoke-direct {v6}, Loh/h;-><init>()V

    move v7, v2

    :goto_7
    array-length v8, v5

    if-ge v7, v8, :cond_6

    new-instance v8, Loh/h;

    invoke-direct {v8}, Loh/h;-><init>()V

    move v9, v2

    :goto_8
    aget-object v10, v5, v7

    array-length v10, v10

    if-ge v9, v10, :cond_5

    new-instance v10, Loh/C0;

    aget-object v11, v5, v7

    aget-object v11, v11, v9

    invoke-direct {v10, v11}, Loh/C0;-><init>([B)V

    invoke-virtual {v8, v10}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_5
    new-instance v9, Loh/G0;

    invoke-direct {v9, v8}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v6, v9}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_6
    new-instance v5, Loh/G0;

    invoke-direct {v5, v6}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v4, v5}, Loh/h;->a(Loh/g;)V

    iget-object v5, p0, LXk/o;->i:[LUl/a;

    aget-object v5, v5, v3

    invoke-virtual {v5}, LUl/a;->d()[[S

    move-result-object v5

    invoke-static {v5}, LVl/c;->c([[S)[[B

    move-result-object v5

    new-instance v6, Loh/h;

    invoke-direct {v6}, Loh/h;-><init>()V

    move v7, v2

    :goto_9
    array-length v8, v5

    if-ge v7, v8, :cond_7

    new-instance v8, Loh/C0;

    aget-object v9, v5, v7

    invoke-direct {v8, v9}, Loh/C0;-><init>([B)V

    invoke-virtual {v6, v8}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_7
    new-instance v5, Loh/G0;

    invoke-direct {v5, v6}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v4, v5}, Loh/h;->a(Loh/g;)V

    new-instance v5, Loh/C0;

    iget-object v6, p0, LXk/o;->i:[LUl/a;

    aget-object v6, v6, v3

    invoke-virtual {v6}, LUl/a;->c()[S

    move-result-object v6

    invoke-static {v6}, LVl/c;->a([S)[B

    move-result-object v6

    invoke-direct {v5, v6}, Loh/C0;-><init>([B)V

    invoke-virtual {v4, v5}, Loh/h;->a(Loh/g;)V

    new-instance v5, Loh/G0;

    invoke-direct {v5, v4}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v1, v5}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    :cond_8
    new-instance v2, Loh/G0;

    invoke-direct {v2, v1}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()[S
    .locals 1

    iget-object v0, p0, LXk/o;->e:[B

    invoke-static {v0}, LVl/c;->b([B)[S

    move-result-object v0

    return-object v0
.end method

.method public v()[S
    .locals 1

    iget-object v0, p0, LXk/o;->g:[B

    invoke-static {v0}, LVl/c;->b([B)[S

    move-result-object v0

    return-object v0
.end method

.method public x()[[S
    .locals 1

    iget-object v0, p0, LXk/o;->d:[[B

    invoke-static {v0}, LVl/c;->d([[B)[[S

    move-result-object v0

    return-object v0
.end method

.method public y()[[S
    .locals 1

    iget-object v0, p0, LXk/o;->f:[[B

    invoke-static {v0}, LVl/c;->d([[B)[[S

    move-result-object v0

    return-object v0
.end method

.method public z()[LUl/a;
    .locals 1

    iget-object v0, p0, LXk/o;->i:[LUl/a;

    return-object v0
.end method
