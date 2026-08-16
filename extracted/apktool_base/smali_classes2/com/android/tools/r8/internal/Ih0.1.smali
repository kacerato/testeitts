.class public final Lcom/android/tools/r8/internal/Ih0;
.super Lcom/android/tools/r8/internal/wz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# static fields
.field public static final g:Lcom/android/tools/r8/internal/Ih0;

.field public static final h:Lcom/android/tools/r8/internal/Gh0;


# instance fields
.field public b:Lcom/android/tools/r8/internal/fi0;

.field public volatile c:Ljava/lang/String;

.field public d:I

.field public e:Lcom/android/tools/r8/internal/hh0;

.field public f:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Ih0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ih0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Ih0;->g:Lcom/android/tools/r8/internal/Ih0;

    new-instance v0, Lcom/android/tools/r8/internal/Gh0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Gh0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Ih0;->h:Lcom/android/tools/r8/internal/Gh0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput-byte v0, p0, Lcom/android/tools/r8/internal/Ih0;->f:B

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ih0;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/tools/r8/internal/Ih0;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    .locals 5

    .line 7
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ih0;-><init>()V

    .line 8
    invoke-static {p2}, Lcom/android/tools/r8/internal/Ng;->a(Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kv0;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_8

    .line 9
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v2

    if-eqz v2, :cond_7

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-eq v2, v3, :cond_5

    const/16 v3, 0x12

    if-eq v2, v3, :cond_4

    const/16 v3, 0x18

    if-eq v2, v3, :cond_3

    const/16 v3, 0x22

    if-eq v2, v3, :cond_1

    .line 10
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/android/tools/r8/internal/wz;->parseUnknownField(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ih0;->e:Lcom/android/tools/r8/internal/hh0;

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/hh0;->d()Lcom/android/tools/r8/internal/gh0;

    move-result-object v4

    .line 13
    :cond_2
    sget-object v2, Lcom/android/tools/r8/internal/hh0;->f:Lcom/android/tools/r8/internal/fh0;

    .line 14
    invoke-virtual {p1, v2, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/hh0;

    iput-object v2, p0, Lcom/android/tools/r8/internal/Ih0;->e:Lcom/android/tools/r8/internal/hh0;

    if-eqz v4, :cond_0

    .line 15
    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/gh0;->a(Lcom/android/tools/r8/internal/hh0;)Lcom/android/tools/r8/internal/gh0;

    .line 16
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/gh0;->c()Lcom/android/tools/r8/internal/hh0;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Ih0;->e:Lcom/android/tools/r8/internal/hh0;

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v2

    .line 18
    iput v2, p0, Lcom/android/tools/r8/internal/Ih0;->d:I

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->r()Ljava/lang/String;

    move-result-object v2

    .line 20
    iput-object v2, p0, Lcom/android/tools/r8/internal/Ih0;->c:Ljava/lang/String;

    goto :goto_0

    .line 21
    :cond_5
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ih0;->b:Lcom/android/tools/r8/internal/fi0;

    if-eqz v2, :cond_6

    .line 22
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fi0;->a()Lcom/android/tools/r8/internal/ei0;

    move-result-object v4

    .line 23
    :cond_6
    sget-object v2, Lcom/android/tools/r8/internal/fi0;->f:Lcom/android/tools/r8/internal/di0;

    .line 24
    invoke-virtual {p1, v2, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/fi0;

    iput-object v2, p0, Lcom/android/tools/r8/internal/Ih0;->b:Lcom/android/tools/r8/internal/fi0;

    if-eqz v4, :cond_0

    .line 25
    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/ei0;->a(Lcom/android/tools/r8/internal/fi0;)Lcom/android/tools/r8/internal/ei0;

    .line 26
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/ei0;->b()Lcom/android/tools/r8/internal/fi0;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Ih0;->b:Lcom/android/tools/r8/internal/fi0;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 27
    :goto_2
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/io/IOException;)V

    .line 28
    iput-object p0, p2, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 29
    throw p2

    .line 30
    :goto_3
    iput-object p0, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 31
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :goto_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    .line 34
    throw p1

    .line 35
    :cond_8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 36
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Hh0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/wz;-><init>(Lcom/android/tools/r8/internal/fz;)V

    const/4 p1, -0x1

    .line 2
    iput-byte p1, p0, Lcom/android/tools/r8/internal/Ih0;->f:B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/Ih0;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/Ih0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ih0;->b:Lcom/android/tools/r8/internal/fi0;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    iget-object v4, p1, Lcom/android/tools/r8/internal/Ih0;->b:Lcom/android/tools/r8/internal/fi0;

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
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ih0;->c:Ljava/lang/String;

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/Ih0;->c:Ljava/lang/String;

    :goto_2
    iget-object v3, p1, Lcom/android/tools/r8/internal/Ih0;->c:Ljava/lang/String;

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    check-cast v3, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/tools/r8/internal/Ih0;->c:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/android/tools/r8/internal/Ih0;->d:I

    iget v3, p1, Lcom/android/tools/r8/internal/Ih0;->d:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ih0;->e:Lcom/android/tools/r8/internal/hh0;

    if-eqz v1, :cond_b

    move v3, v0

    goto :goto_4

    :cond_b
    move v3, v2

    :goto_4
    iget-object v4, p1, Lcom/android/tools/r8/internal/Ih0;->e:Lcom/android/tools/r8/internal/hh0;

    if-eqz v4, :cond_c

    move v5, v0

    goto :goto_5

    :cond_c
    move v5, v2

    :goto_5
    if-eq v3, v5, :cond_d

    return v2

    :cond_d
    if-eqz v1, :cond_f

    if-nez v4, :cond_e

    sget-object v4, Lcom/android/tools/r8/internal/hh0;->e:Lcom/android/tools/r8/internal/hh0;

    :cond_e
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/hh0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Ih0;->g:Lcom/android/tools/r8/internal/Ih0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/Ih0;->g:Lcom/android/tools/r8/internal/Ih0;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ih0;->b:Lcom/android/tools/r8/internal/fi0;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ih0;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/tools/r8/internal/wz;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ih0;->c:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/Ih0;->d:I

    sget-object v2, Lcom/android/tools/r8/internal/Eh0;->c:Lcom/android/tools/r8/internal/Eh0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Eh0;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/android/tools/r8/internal/Ih0;->d:I

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Lg;->a(III)I

    move-result v0

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ih0;->e:Lcom/android/tools/r8/internal/hh0;

    if-eqz v1, :cond_4

    const/4 v2, 0x4

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
    sget-object v0, Lcom/android/tools/r8/internal/vj0;->E0:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ih0;->b:Lcom/android/tools/r8/internal/fi0;

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

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ih0;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/Ih0;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x3

    mul-int/2addr v1, v2

    iget v0, p0, Lcom/android/tools/r8/internal/Ih0;->d:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ih0;->e:Lcom/android/tools/r8/internal/hh0;

    if-eqz v0, :cond_3

    const/4 v4, 0x4

    invoke-static {v1, v3, v4, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hh0;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
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

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->F0:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/Ih0;

    const-class v2, Lcom/android/tools/r8/internal/Hh0;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/tools/r8/internal/Ih0;->f:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/android/tools/r8/internal/Ih0;->f:B

    return v1
.end method

.method public final newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Ih0;->g:Lcom/android/tools/r8/internal/Ih0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Hh0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Hh0;-><init>()V

    return-object v0
.end method

.method public final newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Hh0;

    check-cast p1, Lcom/android/tools/r8/internal/dz;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Hh0;-><init>(Lcom/android/tools/r8/internal/dz;)V

    return-object v0
.end method

.method public final toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Ih0;->g:Lcom/android/tools/r8/internal/Ih0;

    if-ne p0, v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Hh0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Hh0;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Hh0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Hh0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Hh0;->a(Lcom/android/tools/r8/internal/Ih0;)Lcom/android/tools/r8/internal/Hh0;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/Ih0;->g:Lcom/android/tools/r8/internal/Ih0;

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/Hh0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Hh0;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Hh0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Hh0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Hh0;->a(Lcom/android/tools/r8/internal/Ih0;)Lcom/android/tools/r8/internal/Hh0;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ih0;->b:Lcom/android/tools/r8/internal/fi0;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ih0;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/tools/r8/internal/wz;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ih0;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/Ih0;->d:I

    sget-object v1, Lcom/android/tools/r8/internal/Eh0;->c:Lcom/android/tools/r8/internal/Eh0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Eh0;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/android/tools/r8/internal/Ih0;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ih0;->e:Lcom/android/tools/r8/internal/hh0;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
