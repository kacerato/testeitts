.class public final Lcom/android/tools/r8/internal/Og0;
.super Lcom/android/tools/r8/internal/wz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# static fields
.field public static final e:Lcom/android/tools/r8/internal/Og0;

.field public static final f:Lcom/android/tools/r8/internal/Mg0;


# instance fields
.field public b:Lcom/android/tools/r8/internal/fh;

.field public c:Lcom/android/tools/r8/internal/ej0;

.field public d:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Og0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Og0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Og0;->e:Lcom/android/tools/r8/internal/Og0;

    new-instance v0, Lcom/android/tools/r8/internal/Mg0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Mg0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Og0;->f:Lcom/android/tools/r8/internal/Mg0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput-byte v0, p0, Lcom/android/tools/r8/internal/Og0;->d:B

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    .locals 5

    .line 5
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/android/tools/r8/internal/Og0;->d:B

    .line 7
    invoke-static {p2}, Lcom/android/tools/r8/internal/Ng;->a(Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kv0;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 8
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v2

    if-eqz v2, :cond_5

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-eq v2, v3, :cond_3

    const/16 v3, 0x12

    if-eq v2, v3, :cond_1

    .line 9
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

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/Og0;->c:Lcom/android/tools/r8/internal/ej0;

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ej0;->b()Lcom/android/tools/r8/internal/dj0;

    move-result-object v4

    .line 12
    :cond_2
    sget-object v2, Lcom/android/tools/r8/internal/ej0;->i:Lcom/android/tools/r8/internal/cj0;

    .line 13
    invoke-virtual {p1, v2, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/ej0;

    iput-object v2, p0, Lcom/android/tools/r8/internal/Og0;->c:Lcom/android/tools/r8/internal/ej0;

    if-eqz v4, :cond_0

    .line 14
    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/dj0;->a(Lcom/android/tools/r8/internal/ej0;)Lcom/android/tools/r8/internal/dj0;

    .line 15
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dj0;->b()Lcom/android/tools/r8/internal/ej0;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Og0;->c:Lcom/android/tools/r8/internal/ej0;

    goto :goto_0

    .line 16
    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/Og0;->b:Lcom/android/tools/r8/internal/fh;

    if-eqz v2, :cond_4

    .line 17
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fh;->a()Lcom/android/tools/r8/internal/Pg;

    move-result-object v4

    .line 18
    :cond_4
    sget-object v2, Lcom/android/tools/r8/internal/fh;->D:Lcom/android/tools/r8/internal/Og;

    .line 19
    invoke-virtual {p1, v2, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/fh;

    iput-object v2, p0, Lcom/android/tools/r8/internal/Og0;->b:Lcom/android/tools/r8/internal/fh;

    if-eqz v4, :cond_0

    .line 20
    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/Pg;->a(Lcom/android/tools/r8/internal/fh;)Lcom/android/tools/r8/internal/Pg;

    .line 21
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Pg;->b()Lcom/android/tools/r8/internal/fh;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Og0;->b:Lcom/android/tools/r8/internal/fh;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 22
    :goto_2
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/io/IOException;)V

    .line 23
    iput-object p0, p2, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 24
    throw p2

    .line 25
    :goto_3
    iput-object p0, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 26
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :goto_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    .line 29
    throw p1

    .line 30
    :cond_6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 31
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ng0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/wz;-><init>(Lcom/android/tools/r8/internal/fz;)V

    const/4 p1, -0x1

    .line 2
    iput-byte p1, p0, Lcom/android/tools/r8/internal/Og0;->d:B

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Og0;->c:Lcom/android/tools/r8/internal/ej0;

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
    instance-of v1, p1, Lcom/android/tools/r8/internal/Og0;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/Og0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Og0;->b:Lcom/android/tools/r8/internal/fh;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    iget-object v4, p1, Lcom/android/tools/r8/internal/Og0;->b:Lcom/android/tools/r8/internal/fh;

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

    sget-object v4, Lcom/android/tools/r8/internal/fh;->C:Lcom/android/tools/r8/internal/fh;

    :cond_5
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/fh;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Og0;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Og0;->a()Z

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Og0;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/tools/r8/internal/Og0;->c:Lcom/android/tools/r8/internal/ej0;

    if-nez v1, :cond_8

    sget-object v1, Lcom/android/tools/r8/internal/ej0;->h:Lcom/android/tools/r8/internal/ej0;

    :cond_8
    iget-object v3, p1, Lcom/android/tools/r8/internal/Og0;->c:Lcom/android/tools/r8/internal/ej0;

    if-nez v3, :cond_9

    sget-object v3, Lcom/android/tools/r8/internal/ej0;->h:Lcom/android/tools/r8/internal/ej0;

    :cond_9
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/ej0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Og0;->e:Lcom/android/tools/r8/internal/Og0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/Og0;->e:Lcom/android/tools/r8/internal/Og0;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Og0;->b:Lcom/android/tools/r8/internal/fh;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Og0;->c:Lcom/android/tools/r8/internal/ej0;

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
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
    sget-object v0, Lcom/android/tools/r8/internal/vj0;->I:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget-object v1, p0, Lcom/android/tools/r8/internal/Og0;->b:Lcom/android/tools/r8/internal/fh;

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fh;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Og0;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Og0;->c:Lcom/android/tools/r8/internal/ej0;

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/tools/r8/internal/ej0;->h:Lcom/android/tools/r8/internal/ej0;

    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ej0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
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

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->J:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/Og0;

    const-class v2, Lcom/android/tools/r8/internal/Ng0;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/tools/r8/internal/Og0;->d:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/android/tools/r8/internal/Og0;->d:B

    return v1
.end method

.method public final newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Og0;->e:Lcom/android/tools/r8/internal/Og0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Ng0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ng0;-><init>()V

    return-object v0
.end method

.method public final newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Ng0;

    check-cast p1, Lcom/android/tools/r8/internal/dz;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Ng0;-><init>(Lcom/android/tools/r8/internal/dz;)V

    return-object v0
.end method

.method public final toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Og0;->e:Lcom/android/tools/r8/internal/Og0;

    if-ne p0, v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Ng0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ng0;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Ng0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ng0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Ng0;->a(Lcom/android/tools/r8/internal/Og0;)Lcom/android/tools/r8/internal/Ng0;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/Og0;->e:Lcom/android/tools/r8/internal/Og0;

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/Ng0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ng0;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Ng0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ng0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Ng0;->a(Lcom/android/tools/r8/internal/Og0;)Lcom/android/tools/r8/internal/Ng0;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Og0;->b:Lcom/android/tools/r8/internal/fh;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Og0;->c:Lcom/android/tools/r8/internal/ej0;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
