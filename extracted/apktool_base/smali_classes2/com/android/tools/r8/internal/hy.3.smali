.class public final Lcom/android/tools/r8/internal/hy;
.super Lcom/android/tools/r8/internal/H;
.source "SourceFile"


# instance fields
.field public g:I

.field public h:Ljava/util/ArrayList;

.field public i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/H;-><init>(I)V

    return-void
.end method

.method public constructor <init>(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/H;-><init>(I)V

    .line 3
    iput p1, p0, Lcom/android/tools/r8/internal/hy;->g:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    if-eqz p1, :cond_6

    const/4 p4, 0x1

    if-eq p1, p4, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    aget-object p2, p5, v1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/hy;->i:Ljava/util/ArrayList;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v1, p2, :cond_3

    const/4 p3, 0x0

    .line 9
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_3
    iput-object p1, p0, Lcom/android/tools/r8/internal/hy;->h:Ljava/util/ArrayList;

    return-void

    .line 11
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v1, p2, :cond_5

    .line 12
    aget-object p4, p3, v1

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_5
    iput-object p1, p0, Lcom/android/tools/r8/internal/hy;->h:Ljava/util/ArrayList;

    return-void

    .line 14
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_2
    if-ge v0, p2, :cond_7

    .line 15
    aget-object v2, p3, v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 16
    :cond_7
    iput-object p1, p0, Lcom/android/tools/r8/internal/hy;->h:Ljava/util/ArrayList;

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    if-ge v1, p4, :cond_8

    .line 18
    aget-object p2, p5, v1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 19
    :cond_8
    iput-object p1, p0, Lcom/android/tools/r8/internal/hy;->i:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)[Ljava/lang/Object;
    .locals 5

    .line 25
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 26
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 27
    instance-of v4, v3, Lcom/android/tools/r8/internal/YQ;

    if-eqz v4, :cond_0

    .line 28
    check-cast v3, Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/YQ;->b()Lcom/android/tools/r8/internal/XQ;

    move-result-object v3

    .line 29
    :cond_0
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/16 v0, 0xe

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/NK;)Lcom/android/tools/r8/internal/H;
    .locals 6

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/hy;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/hy;-><init>()V

    .line 10
    iget v1, p0, Lcom/android/tools/r8/internal/hy;->g:I

    iput v1, v0, Lcom/android/tools/r8/internal/hy;->g:I

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/internal/hy;->h:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/tools/r8/internal/hy;->h:Ljava/util/ArrayList;

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/internal/hy;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 14
    iget-object v4, p0, Lcom/android/tools/r8/internal/hy;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 15
    instance-of v5, v4, Lcom/android/tools/r8/internal/YQ;

    if-eqz v5, :cond_0

    .line 16
    check-cast v4, Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/NK;->a(Lcom/android/tools/r8/internal/YQ;)Lcom/android/tools/r8/internal/YQ;

    move-result-object v4

    .line 17
    :cond_0
    iget-object v5, v0, Lcom/android/tools/r8/internal/hy;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/hy;->i:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/tools/r8/internal/hy;->i:Ljava/util/ArrayList;

    .line 20
    iget-object v1, p0, Lcom/android/tools/r8/internal/hy;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_3

    .line 21
    iget-object v3, p0, Lcom/android/tools/r8/internal/hy;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 22
    instance-of v4, v3, Lcom/android/tools/r8/internal/YQ;

    if-eqz v4, :cond_2

    .line 23
    check-cast v3, Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/NK;->a(Lcom/android/tools/r8/internal/YQ;)Lcom/android/tools/r8/internal/YQ;

    move-result-object v3

    .line 24
    :cond_2
    iget-object v4, v0, Lcom/android/tools/r8/internal/hy;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/DX;)V
    .locals 6

    .line 2
    iget v1, p0, Lcom/android/tools/r8/internal/hy;->g:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_4

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    if-eq v1, v0, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/hy;->i:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/tools/r8/internal/hy;->a(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/DX;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/DX;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/hy;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/DX;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/hy;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v0, p0, Lcom/android/tools/r8/internal/hy;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/tools/r8/internal/hy;->a(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/DX;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/hy;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v0, p0, Lcom/android/tools/r8/internal/hy;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/tools/r8/internal/hy;->a(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v3

    iget-object v0, p0, Lcom/android/tools/r8/internal/hy;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v0, p0, Lcom/android/tools/r8/internal/hy;->i:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/tools/r8/internal/hy;->a(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/DX;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void
.end method
