.class public final Lcom/android/tools/r8/internal/lj0;
.super Lcom/android/tools/r8/internal/wz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# static fields
.field public static final i:Lcom/android/tools/r8/internal/lj0;

.field public static final j:Lcom/android/tools/r8/internal/jj0;


# instance fields
.field public volatile b:Ljava/lang/String;

.field public volatile c:Ljava/lang/String;

.field public volatile d:Ljava/lang/String;

.field public e:Lcom/android/tools/r8/internal/ii0;

.field public f:I

.field public g:Lcom/android/tools/r8/internal/hh0;

.field public h:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/lj0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/lj0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/lj0;->i:Lcom/android/tools/r8/internal/lj0;

    new-instance v0, Lcom/android/tools/r8/internal/jj0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/jj0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/lj0;->j:Lcom/android/tools/r8/internal/jj0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput-byte v0, p0, Lcom/android/tools/r8/internal/lj0;->h:B

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/lj0;->b:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/internal/lj0;->c:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/android/tools/r8/internal/lj0;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    .locals 5

    .line 8
    invoke-direct {p0}, Lcom/android/tools/r8/internal/lj0;-><init>()V

    .line 9
    invoke-static {p2}, Lcom/android/tools/r8/internal/Ng;->a(Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kv0;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v2

    if-eqz v2, :cond_9

    const/16 v3, 0xa

    if-eq v2, v3, :cond_8

    const/16 v3, 0x12

    if-eq v2, v3, :cond_7

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_6

    const/16 v3, 0x22

    const/4 v4, 0x0

    if-eq v2, v3, :cond_4

    const/16 v3, 0x28

    if-eq v2, v3, :cond_3

    const/16 v3, 0x32

    if-eq v2, v3, :cond_1

    .line 11
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/android/tools/r8/internal/wz;->parseUnknownField(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/lj0;->g:Lcom/android/tools/r8/internal/hh0;

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/hh0;->d()Lcom/android/tools/r8/internal/gh0;

    move-result-object v4

    .line 14
    :cond_2
    sget-object v2, Lcom/android/tools/r8/internal/hh0;->f:Lcom/android/tools/r8/internal/fh0;

    .line 15
    invoke-virtual {p1, v2, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/hh0;

    iput-object v2, p0, Lcom/android/tools/r8/internal/lj0;->g:Lcom/android/tools/r8/internal/hh0;

    if-eqz v4, :cond_0

    .line 16
    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/gh0;->a(Lcom/android/tools/r8/internal/hh0;)Lcom/android/tools/r8/internal/gh0;

    .line 17
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/gh0;->c()Lcom/android/tools/r8/internal/hh0;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/lj0;->g:Lcom/android/tools/r8/internal/hh0;

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->t()I

    move-result v2

    iput v2, p0, Lcom/android/tools/r8/internal/lj0;->f:I

    goto :goto_0

    .line 19
    :cond_4
    iget-object v2, p0, Lcom/android/tools/r8/internal/lj0;->e:Lcom/android/tools/r8/internal/ii0;

    if-eqz v2, :cond_5

    .line 20
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ii0;->a()Lcom/android/tools/r8/internal/hi0;

    move-result-object v4

    .line 21
    :cond_5
    sget-object v2, Lcom/android/tools/r8/internal/ii0;->f:Lcom/android/tools/r8/internal/gi0;

    .line 22
    invoke-virtual {p1, v2, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/ii0;

    iput-object v2, p0, Lcom/android/tools/r8/internal/lj0;->e:Lcom/android/tools/r8/internal/ii0;

    if-eqz v4, :cond_0

    .line 23
    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/hi0;->a(Lcom/android/tools/r8/internal/ii0;)Lcom/android/tools/r8/internal/hi0;

    .line 24
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/hi0;->b()Lcom/android/tools/r8/internal/ii0;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/lj0;->e:Lcom/android/tools/r8/internal/ii0;

    goto :goto_0

    .line 25
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->r()Ljava/lang/String;

    move-result-object v2

    .line 26
    iput-object v2, p0, Lcom/android/tools/r8/internal/lj0;->d:Ljava/lang/String;

    goto :goto_0

    .line 27
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->r()Ljava/lang/String;

    move-result-object v2

    .line 28
    iput-object v2, p0, Lcom/android/tools/r8/internal/lj0;->c:Ljava/lang/String;

    goto :goto_0

    .line 29
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->r()Ljava/lang/String;

    move-result-object v2

    .line 30
    iput-object v2, p0, Lcom/android/tools/r8/internal/lj0;->b:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 31
    :goto_2
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/io/IOException;)V

    .line 32
    iput-object p0, p2, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 33
    throw p2

    .line 34
    :goto_3
    iput-object p0, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 35
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :goto_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 37
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    .line 38
    throw p1

    .line 39
    :cond_a
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 40
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/kj0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/wz;-><init>(Lcom/android/tools/r8/internal/fz;)V

    const/4 p1, -0x1

    .line 2
    iput-byte p1, p0, Lcom/android/tools/r8/internal/lj0;->h:B

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lj0;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    check-cast v0, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/lj0;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lj0;->g:Lcom/android/tools/r8/internal/hh0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/lj0;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/lj0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/lj0;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/lj0;->b:Ljava/lang/String;

    :goto_0
    iget-object v2, p1, Lcom/android/tools/r8/internal/lj0;->b:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    check-cast v2, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/tools/r8/internal/lj0;->b:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lj0;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lj0;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lj0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lj0;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/lj0;->e:Lcom/android/tools/r8/internal/ii0;

    if-eqz v1, :cond_7

    move v3, v0

    goto :goto_2

    :cond_7
    move v3, v2

    :goto_2
    iget-object v4, p1, Lcom/android/tools/r8/internal/lj0;->e:Lcom/android/tools/r8/internal/ii0;

    if-eqz v4, :cond_8

    move v5, v0

    goto :goto_3

    :cond_8
    move v5, v2

    :goto_3
    if-eq v3, v5, :cond_9

    return v2

    :cond_9
    if-eqz v1, :cond_b

    if-nez v4, :cond_a

    sget-object v4, Lcom/android/tools/r8/internal/ii0;->e:Lcom/android/tools/r8/internal/ii0;

    :cond_a
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/ii0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/android/tools/r8/internal/lj0;->f:I

    iget v3, p1, Lcom/android/tools/r8/internal/lj0;->f:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lj0;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lj0;->b()Z

    move-result v3

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lj0;->b()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/tools/r8/internal/lj0;->g:Lcom/android/tools/r8/internal/hh0;

    if-nez v1, :cond_e

    sget-object v1, Lcom/android/tools/r8/internal/hh0;->e:Lcom/android/tools/r8/internal/hh0;

    :cond_e
    iget-object v3, p1, Lcom/android/tools/r8/internal/lj0;->g:Lcom/android/tools/r8/internal/hh0;

    if-nez v3, :cond_f

    sget-object v3, Lcom/android/tools/r8/internal/hh0;->e:Lcom/android/tools/r8/internal/hh0;

    :cond_f
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/hh0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/lj0;->i:Lcom/android/tools/r8/internal/lj0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/lj0;->i:Lcom/android/tools/r8/internal/lj0;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lj0;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    check-cast v0, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/lj0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/lj0;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/tools/r8/internal/wz;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lj0;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/lj0;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/tools/r8/internal/wz;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/lj0;->c:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/lj0;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/tools/r8/internal/wz;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/lj0;->d:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/lj0;->e:Lcom/android/tools/r8/internal/ii0;

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/tools/r8/internal/lj0;->f:I

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Mg;->a(III)I

    move-result v0

    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/lj0;->g:Lcom/android/tools/r8/internal/hh0;

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
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
    sget-object v0, Lcom/android/tools/r8/internal/vj0;->M0:Lcom/android/tools/r8/internal/Cl;

    const/4 v1, 0x1

    const/16 v2, 0x30b

    const/16 v3, 0x25

    const/16 v4, 0x35

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/tools/r8/internal/Kg;->a(Lcom/android/tools/r8/internal/Cl;IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/lj0;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/lj0;->b:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x2

    mul-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lj0;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x3

    mul-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lj0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/tools/r8/internal/lj0;->e:Lcom/android/tools/r8/internal/ii0;

    if-eqz v0, :cond_2

    const/4 v2, 0x4

    invoke-static {v1, v3, v2, v4}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ii0;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    const/4 v0, 0x5

    invoke-static {v1, v3, v0, v4}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/lj0;->f:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lj0;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1, v4}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/lj0;->g:Lcom/android/tools/r8/internal/hh0;

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/tools/r8/internal/hh0;->e:Lcom/android/tools/r8/internal/hh0;

    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hh0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pv0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    return v1
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->N0:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/lj0;

    const-class v2, Lcom/android/tools/r8/internal/kj0;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/tools/r8/internal/lj0;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/android/tools/r8/internal/lj0;->h:B

    return v1
.end method

.method public final newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/lj0;->i:Lcom/android/tools/r8/internal/lj0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/kj0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kj0;-><init>()V

    return-object v0
.end method

.method public final newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/kj0;

    check-cast p1, Lcom/android/tools/r8/internal/dz;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/kj0;-><init>(Lcom/android/tools/r8/internal/dz;)V

    return-object v0
.end method

.method public final toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/lj0;->i:Lcom/android/tools/r8/internal/lj0;

    if-ne p0, v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/kj0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kj0;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/kj0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kj0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/kj0;->a(Lcom/android/tools/r8/internal/lj0;)Lcom/android/tools/r8/internal/kj0;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/lj0;->i:Lcom/android/tools/r8/internal/lj0;

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/kj0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kj0;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/kj0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kj0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/kj0;->a(Lcom/android/tools/r8/internal/lj0;)Lcom/android/tools/r8/internal/kj0;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/lj0;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/tools/r8/internal/wz;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/lj0;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/lj0;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/tools/r8/internal/wz;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lj0;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/lj0;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/tools/r8/internal/wz;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/lj0;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/lj0;->e:Lcom/android/tools/r8/internal/ii0;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/lj0;->f:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->e(II)V

    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/lj0;->g:Lcom/android/tools/r8/internal/hh0;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
