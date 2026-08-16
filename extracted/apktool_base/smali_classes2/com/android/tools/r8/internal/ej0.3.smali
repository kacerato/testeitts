.class public final Lcom/android/tools/r8/internal/ej0;
.super Lcom/android/tools/r8/internal/wz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# static fields
.field public static final h:Lcom/android/tools/r8/internal/ej0;

.field public static final i:Lcom/android/tools/r8/internal/cj0;


# instance fields
.field public b:I

.field public c:Lcom/android/tools/r8/internal/kW;

.field public d:Lcom/android/tools/r8/internal/fi0;

.field public volatile e:Ljava/lang/String;

.field public f:Z

.field public g:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/ej0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ej0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/ej0;->h:Lcom/android/tools/r8/internal/ej0;

    new-instance v0, Lcom/android/tools/r8/internal/cj0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cj0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/ej0;->i:Lcom/android/tools/r8/internal/cj0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/tools/r8/internal/ej0;->b:I

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/android/tools/r8/internal/ej0;->g:B

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/ej0;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    .locals 5

    .line 8
    invoke-direct {p0}, Lcom/android/tools/r8/internal/ej0;-><init>()V

    .line 9
    invoke-static {p2}, Lcom/android/tools/r8/internal/Ng;->a(Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kv0;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_c

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v2

    if-eqz v2, :cond_b

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-eq v2, v3, :cond_9

    const/16 v3, 0x12

    if-eq v2, v3, :cond_8

    const/16 v3, 0x18

    if-eq v2, v3, :cond_7

    const/16 v3, 0x22

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_1

    .line 11
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/android/tools/r8/internal/wz;->parseUnknownField(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    .line 12
    :cond_1
    iget v2, p0, Lcom/android/tools/r8/internal/ej0;->b:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 13
    iget-object v2, p0, Lcom/android/tools/r8/internal/ej0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v2, Lcom/android/tools/r8/internal/Lg0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Lg0;->c()Lcom/android/tools/r8/internal/Kg0;

    move-result-object v4

    .line 14
    :cond_2
    sget-object v2, Lcom/android/tools/r8/internal/Lg0;->f:Lcom/android/tools/r8/internal/Jg0;

    .line 15
    invoke-virtual {p1, v2, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/ej0;->c:Lcom/android/tools/r8/internal/kW;

    if-eqz v4, :cond_3

    .line 16
    check-cast v2, Lcom/android/tools/r8/internal/Lg0;

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/Kg0;->a(Lcom/android/tools/r8/internal/Lg0;)Lcom/android/tools/r8/internal/Kg0;

    .line 17
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Kg0;->b()Lcom/android/tools/r8/internal/Lg0;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/ej0;->c:Lcom/android/tools/r8/internal/kW;

    .line 18
    :cond_3
    iput v3, p0, Lcom/android/tools/r8/internal/ej0;->b:I

    goto :goto_0

    .line 19
    :cond_4
    iget v2, p0, Lcom/android/tools/r8/internal/ej0;->b:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 20
    iget-object v2, p0, Lcom/android/tools/r8/internal/ej0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v2, Lcom/android/tools/r8/internal/hh0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/hh0;->d()Lcom/android/tools/r8/internal/gh0;

    move-result-object v4

    .line 21
    :cond_5
    sget-object v2, Lcom/android/tools/r8/internal/hh0;->f:Lcom/android/tools/r8/internal/fh0;

    .line 22
    invoke-virtual {p1, v2, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/ej0;->c:Lcom/android/tools/r8/internal/kW;

    if-eqz v4, :cond_6

    .line 23
    check-cast v2, Lcom/android/tools/r8/internal/hh0;

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/gh0;->a(Lcom/android/tools/r8/internal/hh0;)Lcom/android/tools/r8/internal/gh0;

    .line 24
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/gh0;->c()Lcom/android/tools/r8/internal/hh0;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/ej0;->c:Lcom/android/tools/r8/internal/kW;

    .line 25
    :cond_6
    iput v3, p0, Lcom/android/tools/r8/internal/ej0;->b:I

    goto :goto_0

    .line 26
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->c()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/tools/r8/internal/ej0;->f:Z

    goto :goto_0

    .line 27
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->r()Ljava/lang/String;

    move-result-object v2

    .line 28
    iput-object v2, p0, Lcom/android/tools/r8/internal/ej0;->e:Ljava/lang/String;

    goto/16 :goto_0

    .line 29
    :cond_9
    iget-object v2, p0, Lcom/android/tools/r8/internal/ej0;->d:Lcom/android/tools/r8/internal/fi0;

    if-eqz v2, :cond_a

    .line 30
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fi0;->a()Lcom/android/tools/r8/internal/ei0;

    move-result-object v4

    .line 31
    :cond_a
    sget-object v2, Lcom/android/tools/r8/internal/fi0;->f:Lcom/android/tools/r8/internal/di0;

    .line 32
    invoke-virtual {p1, v2, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/fi0;

    iput-object v2, p0, Lcom/android/tools/r8/internal/ej0;->d:Lcom/android/tools/r8/internal/fi0;

    if-eqz v4, :cond_0

    .line 33
    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/ei0;->a(Lcom/android/tools/r8/internal/fi0;)Lcom/android/tools/r8/internal/ei0;

    .line 34
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/ei0;->b()Lcom/android/tools/r8/internal/fi0;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/ej0;->d:Lcom/android/tools/r8/internal/fi0;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 35
    :goto_2
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/io/IOException;)V

    .line 36
    iput-object p0, p2, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 37
    throw p2

    .line 38
    :goto_3
    iput-object p0, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 39
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :goto_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 41
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    .line 42
    throw p1

    .line 43
    :cond_c
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dj0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/wz;-><init>(Lcom/android/tools/r8/internal/fz;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/tools/r8/internal/ej0;->b:I

    const/4 p1, -0x1

    .line 3
    iput-byte p1, p0, Lcom/android/tools/r8/internal/ej0;->g:B

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/hh0;
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/ej0;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/ej0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v0, Lcom/android/tools/r8/internal/hh0;

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/hh0;->e:Lcom/android/tools/r8/internal/hh0;

    return-object v0
.end method

.method public final b()Lcom/android/tools/r8/internal/dj0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/ej0;->h:Lcom/android/tools/r8/internal/ej0;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/dj0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/dj0;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/dj0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/dj0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/dj0;->a(Lcom/android/tools/r8/internal/ej0;)Lcom/android/tools/r8/internal/dj0;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/ej0;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/ej0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ej0;->d:Lcom/android/tools/r8/internal/fi0;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    iget-object v4, p1, Lcom/android/tools/r8/internal/ej0;->d:Lcom/android/tools/r8/internal/fi0;

    if-eqz v4, :cond_3

    move v5, v0

    goto :goto_1

    :cond_3
    move v5, v2

    :goto_1
    if-eq v3, v5, :cond_4

    return v2

    :cond_4
    if-eqz v1, :cond_6

    if-nez v4, :cond_5

    sget-object v4, Lcom/android/tools/r8/internal/fi0;->e:Lcom/android/tools/r8/internal/fi0;

    :cond_5
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/fi0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/ej0;->e:Ljava/lang/String;

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/ej0;->e:Ljava/lang/String;

    :goto_2
    iget-object v3, p1, Lcom/android/tools/r8/internal/ej0;->e:Ljava/lang/String;

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    check-cast v3, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/tools/r8/internal/ej0;->e:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/ej0;->f:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/internal/ej0;->f:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/android/tools/r8/internal/ej0;->b:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x5

    if-eqz v1, :cond_d

    if-eq v1, v5, :cond_c

    if-eq v1, v6, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move v1, v4

    goto :goto_4

    :cond_c
    move v1, v0

    goto :goto_4

    :cond_d
    move v1, v3

    :goto_4
    iget v7, p1, Lcom/android/tools/r8/internal/ej0;->b:I

    if-eqz v7, :cond_10

    if-eq v7, v5, :cond_f

    if-eq v7, v6, :cond_e

    move v3, v2

    goto :goto_5

    :cond_e
    move v3, v4

    goto :goto_5

    :cond_f
    move v3, v0

    :cond_10
    :goto_5
    invoke-static {v1, v3}, Lcom/android/tools/r8/c;->b(II)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget v1, p0, Lcom/android/tools/r8/internal/ej0;->b:I

    if-eq v1, v5, :cond_15

    if-eq v1, v6, :cond_12

    goto :goto_8

    :cond_12
    if-ne v1, v6, :cond_13

    iget-object v1, p0, Lcom/android/tools/r8/internal/ej0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v1, Lcom/android/tools/r8/internal/Lg0;

    goto :goto_6

    :cond_13
    sget-object v1, Lcom/android/tools/r8/internal/Lg0;->e:Lcom/android/tools/r8/internal/Lg0;

    :goto_6
    iget v3, p1, Lcom/android/tools/r8/internal/ej0;->b:I

    if-ne v3, v6, :cond_14

    iget-object v3, p1, Lcom/android/tools/r8/internal/ej0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v3, Lcom/android/tools/r8/internal/Lg0;

    goto :goto_7

    :cond_14
    sget-object v3, Lcom/android/tools/r8/internal/Lg0;->e:Lcom/android/tools/r8/internal/Lg0;

    :goto_7
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/Lg0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ej0;->a()Lcom/android/tools/r8/internal/hh0;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ej0;->a()Lcom/android/tools/r8/internal/hh0;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/hh0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    :goto_8
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/ej0;->h:Lcom/android/tools/r8/internal/ej0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/ej0;->h:Lcom/android/tools/r8/internal/ej0;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ej0;->d:Lcom/android/tools/r8/internal/fi0;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/ej0;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/tools/r8/internal/wz;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/ej0;->e:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget-boolean v2, p0, Lcom/android/tools/r8/internal/ej0;->f:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    invoke-static {v2, v1, v0}, Lcom/android/tools/r8/internal/lh0;->a(III)I

    move-result v0

    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/ej0;->b:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/ej0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v1, Lcom/android/tools/r8/internal/hh0;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/tools/r8/internal/ej0;->b:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/ej0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v1, Lcom/android/tools/r8/internal/Lg0;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pv0;->getSerializedSize()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/android/tools/r8/internal/pv0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/vj0;->K:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget-object v1, p0, Lcom/android/tools/r8/internal/ej0;->d:Lcom/android/tools/r8/internal/fi0;

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fi0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    const/4 v1, 0x2

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/ej0;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/ej0;->e:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x3

    mul-int/2addr v1, v2

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/ej0;->f:Z

    sget-object v4, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_3

    const/16 v0, 0x4cf

    goto :goto_1

    :cond_3
    const/16 v0, 0x4d5

    :goto_1
    add-int/2addr v1, v0

    iget v0, p0, Lcom/android/tools/r8/internal/ej0;->b:I

    const/4 v4, 0x4

    if-eq v0, v4, :cond_6

    const/4 v4, 0x5

    if-eq v0, v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v1, v3, v4, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v1

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/ej0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v0, Lcom/android/tools/r8/internal/Lg0;

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/android/tools/r8/internal/Lg0;->e:Lcom/android/tools/r8/internal/Lg0;

    :goto_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Lg0;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_3

    :cond_6
    invoke-static {v1, v3, v4, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ej0;->a()Lcom/android/tools/r8/internal/hh0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hh0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    :goto_3
    mul-int/lit8 v1, v1, 0x1d

    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pv0;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->L:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/ej0;

    const-class v2, Lcom/android/tools/r8/internal/dj0;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/tools/r8/internal/ej0;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/android/tools/r8/internal/ej0;->g:B

    return v1
.end method

.method public final newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/ej0;->h:Lcom/android/tools/r8/internal/ej0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ej0;->b()Lcom/android/tools/r8/internal/dj0;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/dj0;

    check-cast p1, Lcom/android/tools/r8/internal/dz;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/dj0;-><init>(Lcom/android/tools/r8/internal/dz;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ej0;->b()Lcom/android/tools/r8/internal/dj0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ej0;->b()Lcom/android/tools/r8/internal/dj0;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ej0;->d:Lcom/android/tools/r8/internal/fi0;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ej0;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/tools/r8/internal/wz;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ej0;->e:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/ej0;->f:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->a(IZ)V

    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/ej0;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/ej0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v0, Lcom/android/tools/r8/internal/hh0;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/ej0;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/ej0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v0, Lcom/android/tools/r8/internal/Lg0;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
