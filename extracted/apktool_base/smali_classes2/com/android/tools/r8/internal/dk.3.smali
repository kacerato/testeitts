.class public final Lcom/android/tools/r8/internal/dk;
.super Lcom/android/tools/r8/internal/wz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# static fields
.field public static final g:Lcom/android/tools/r8/internal/dk;

.field public static final h:Lcom/android/tools/r8/internal/bk;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Lcom/android/tools/r8/internal/zk;

.field public f:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/dk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/dk;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/dk;->g:Lcom/android/tools/r8/internal/dk;

    new-instance v0, Lcom/android/tools/r8/internal/bk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/bk;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/dk;->h:Lcom/android/tools/r8/internal/bk;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput-byte v0, p0, Lcom/android/tools/r8/internal/dk;->f:B

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    .locals 5

    .line 5
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/android/tools/r8/internal/dk;->f:B

    .line 7
    invoke-static {p2}, Lcom/android/tools/r8/internal/Ng;->a(Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kv0;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 8
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const/16 v4, 0x8

    if-eq v2, v4, :cond_5

    const/16 v4, 0x10

    if-eq v2, v4, :cond_4

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    .line 9
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/android/tools/r8/internal/wz;->parseUnknownField(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    .line 10
    :cond_1
    iget v2, p0, Lcom/android/tools/r8/internal/dk;->b:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/internal/dk;->e:Lcom/android/tools/r8/internal/zk;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zk;->a()Lcom/android/tools/r8/internal/yk;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 12
    :goto_1
    sget-object v3, Lcom/android/tools/r8/internal/zk;->f:Lcom/android/tools/r8/internal/xk;

    invoke-virtual {p1, v3, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zk;

    iput-object v3, p0, Lcom/android/tools/r8/internal/dk;->e:Lcom/android/tools/r8/internal/zk;

    if-eqz v2, :cond_3

    .line 13
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/yk;->a(Lcom/android/tools/r8/internal/zk;)Lcom/android/tools/r8/internal/yk;

    .line 14
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/yk;->d()Lcom/android/tools/r8/internal/zk;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/dk;->e:Lcom/android/tools/r8/internal/zk;

    .line 15
    :cond_3
    iget v2, p0, Lcom/android/tools/r8/internal/dk;->b:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/tools/r8/internal/dk;->b:I

    goto :goto_0

    .line 16
    :cond_4
    iget v2, p0, Lcom/android/tools/r8/internal/dk;->b:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/tools/r8/internal/dk;->b:I

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->j()I

    move-result v2

    iput v2, p0, Lcom/android/tools/r8/internal/dk;->d:I

    goto :goto_0

    .line 18
    :cond_5
    iget v2, p0, Lcom/android/tools/r8/internal/dk;->b:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/dk;->b:I

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->j()I

    move-result v2

    iput v2, p0, Lcom/android/tools/r8/internal/dk;->c:I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    :goto_2
    move v1, v3

    goto :goto_0

    .line 20
    :goto_3
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/io/IOException;)V

    .line 21
    iput-object p0, p2, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 22
    throw p2

    .line 23
    :goto_4
    iput-object p0, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 24
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :goto_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 26
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    .line 27
    throw p1

    .line 28
    :cond_7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/ck;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/wz;-><init>(Lcom/android/tools/r8/internal/fz;)V

    const/4 p1, -0x1

    .line 2
    iput-byte p1, p0, Lcom/android/tools/r8/internal/dk;->f:B

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/dk;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lcom/android/tools/r8/internal/ck;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/dk;->g:Lcom/android/tools/r8/internal/dk;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/ck;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ck;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/ck;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ck;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/ck;->a(Lcom/android/tools/r8/internal/dk;)Lcom/android/tools/r8/internal/ck;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/dk;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/dk;

    iget v1, p0, Lcom/android/tools/r8/internal/dk;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v4, v0

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    iget v5, p1, Lcom/android/tools/r8/internal/dk;->b:I

    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_3

    move v6, v0

    goto :goto_1

    :cond_3
    move v6, v3

    :goto_1
    if-eq v4, v6, :cond_4

    return v3

    :cond_4
    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/tools/r8/internal/dk;->c:I

    iget v4, p1, Lcom/android/tools/r8/internal/dk;->c:I

    if-eq v2, v4, :cond_5

    return v3

    :cond_5
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    move v2, v0

    goto :goto_2

    :cond_6
    move v2, v3

    :goto_2
    and-int/lit8 v4, v5, 0x2

    if-eqz v4, :cond_7

    move v4, v0

    goto :goto_3

    :cond_7
    move v4, v3

    :goto_3
    if-eq v2, v4, :cond_8

    return v3

    :cond_8
    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/tools/r8/internal/dk;->d:I

    iget v2, p1, Lcom/android/tools/r8/internal/dk;->d:I

    if-eq v1, v2, :cond_9

    return v3

    :cond_9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dk;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dk;->a()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    :cond_a
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dk;->a()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/tools/r8/internal/dk;->e:Lcom/android/tools/r8/internal/zk;

    if-nez v1, :cond_b

    sget-object v1, Lcom/android/tools/r8/internal/zk;->e:Lcom/android/tools/r8/internal/zk;

    :cond_b
    iget-object v2, p1, Lcom/android/tools/r8/internal/dk;->e:Lcom/android/tools/r8/internal/zk;

    if-nez v2, :cond_c

    sget-object v2, Lcom/android/tools/r8/internal/zk;->e:Lcom/android/tools/r8/internal/zk;

    :cond_c
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/zk;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    :cond_d
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v3

    :cond_e
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/dk;->g:Lcom/android/tools/r8/internal/dk;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/dk;->g:Lcom/android/tools/r8/internal/dk;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/dk;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/dk;->c:I

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/Ie;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/dk;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/tools/r8/internal/dk;->d:I

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Ie;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/dk;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/dk;->e:Lcom/android/tools/r8/internal/zk;

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/tools/r8/internal/zk;->e:Lcom/android/tools/r8/internal/zk;

    :cond_3
    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
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
    sget-object v0, Lcom/android/tools/r8/internal/zl;->e:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget v1, p0, Lcom/android/tools/r8/internal/dk;->b:I

    and-int/lit8 v2, v1, 0x1

    const/16 v3, 0x35

    const/16 v4, 0x25

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget v2, p0, Lcom/android/tools/r8/internal/dk;->c:I

    add-int/2addr v0, v2

    :cond_1
    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/dk;->d:I

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dk;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/dk;->e:Lcom/android/tools/r8/internal/zk;

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/tools/r8/internal/zk;->e:Lcom/android/tools/r8/internal/zk;

    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zk;->hashCode()I

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

    sget-object v0, Lcom/android/tools/r8/internal/zl;->f:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/dk;

    const-class v2, Lcom/android/tools/r8/internal/ck;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    iget-byte v0, p0, Lcom/android/tools/r8/internal/dk;->f:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dk;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/dk;->e:Lcom/android/tools/r8/internal/zk;

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/tools/r8/internal/zk;->e:Lcom/android/tools/r8/internal/zk;

    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v2, p0, Lcom/android/tools/r8/internal/dk;->f:B

    return v2

    :cond_3
    iput-byte v1, p0, Lcom/android/tools/r8/internal/dk;->f:B

    return v1
.end method

.method public final newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/dk;->g:Lcom/android/tools/r8/internal/dk;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dk;->b()Lcom/android/tools/r8/internal/ck;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/ck;

    check-cast p1, Lcom/android/tools/r8/internal/dz;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/ck;-><init>(Lcom/android/tools/r8/internal/dz;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dk;->b()Lcom/android/tools/r8/internal/ck;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dk;->b()Lcom/android/tools/r8/internal/ck;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/dk;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/tools/r8/internal/dk;->c:I

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/dk;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/dk;->d:I

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/dk;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/dk;->e:Lcom/android/tools/r8/internal/zk;

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/tools/r8/internal/zk;->e:Lcom/android/tools/r8/internal/zk;

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
