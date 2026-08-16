.class public final Lcom/android/tools/r8/internal/ij0;
.super Lcom/android/tools/r8/internal/wz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# static fields
.field public static final g:Lcom/android/tools/r8/internal/ij0;

.field public static final h:Lcom/android/tools/r8/internal/fj0;


# instance fields
.field public b:I

.field public c:Lcom/android/tools/r8/internal/fi0;

.field public volatile d:Ljava/lang/String;

.field public e:Z

.field public f:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/ij0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ij0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/ij0;->g:Lcom/android/tools/r8/internal/ij0;

    new-instance v0, Lcom/android/tools/r8/internal/fj0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/fj0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/ij0;->h:Lcom/android/tools/r8/internal/fj0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput-byte v0, p0, Lcom/android/tools/r8/internal/ij0;->f:B

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/tools/r8/internal/ij0;->b:I

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/ij0;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    .locals 4

    .line 7
    invoke-direct {p0}, Lcom/android/tools/r8/internal/ij0;-><init>()V

    .line 8
    invoke-static {p2}, Lcom/android/tools/r8/internal/Ng;->a(Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kv0;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 9
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v2

    if-eqz v2, :cond_6

    const/16 v3, 0x8

    if-eq v2, v3, :cond_5

    const/16 v3, 0x12

    if-eq v2, v3, :cond_3

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    .line 10
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

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->c()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/tools/r8/internal/ij0;->e:Z

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->r()Ljava/lang/String;

    move-result-object v2

    .line 13
    iput-object v2, p0, Lcom/android/tools/r8/internal/ij0;->d:Ljava/lang/String;

    goto :goto_0

    .line 14
    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/ij0;->c:Lcom/android/tools/r8/internal/fi0;

    if-eqz v2, :cond_4

    .line 15
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fi0;->a()Lcom/android/tools/r8/internal/ei0;

    move-result-object v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 16
    :goto_1
    sget-object v3, Lcom/android/tools/r8/internal/fi0;->f:Lcom/android/tools/r8/internal/di0;

    .line 17
    invoke-virtual {p1, v3, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/fi0;

    iput-object v3, p0, Lcom/android/tools/r8/internal/ij0;->c:Lcom/android/tools/r8/internal/fi0;

    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/ei0;->a(Lcom/android/tools/r8/internal/fi0;)Lcom/android/tools/r8/internal/ei0;

    .line 19
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ei0;->b()Lcom/android/tools/r8/internal/fi0;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/ij0;->c:Lcom/android/tools/r8/internal/fi0;

    goto :goto_0

    .line 20
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v2

    .line 21
    iput v2, p0, Lcom/android/tools/r8/internal/ij0;->b:I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 22
    :goto_3
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/io/IOException;)V

    .line 23
    iput-object p0, p2, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 24
    throw p2

    .line 25
    :goto_4
    iput-object p0, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 26
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :goto_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    .line 29
    throw p1

    .line 30
    :cond_7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 31
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/gj0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/wz;-><init>(Lcom/android/tools/r8/internal/fz;)V

    const/4 p1, -0x1

    .line 2
    iput-byte p1, p0, Lcom/android/tools/r8/internal/ij0;->f:B

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/gj0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/ij0;->g:Lcom/android/tools/r8/internal/ij0;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/gj0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gj0;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/gj0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gj0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/gj0;->a(Lcom/android/tools/r8/internal/ij0;)Lcom/android/tools/r8/internal/gj0;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/ij0;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/ij0;

    iget v1, p0, Lcom/android/tools/r8/internal/ij0;->b:I

    iget v2, p1, Lcom/android/tools/r8/internal/ij0;->b:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/ij0;->c:Lcom/android/tools/r8/internal/fi0;

    if-eqz v1, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    iget-object v4, p1, Lcom/android/tools/r8/internal/ij0;->c:Lcom/android/tools/r8/internal/fi0;

    if-eqz v4, :cond_4

    move v5, v0

    goto :goto_1

    :cond_4
    move v5, v3

    :goto_1
    if-eq v2, v5, :cond_5

    return v3

    :cond_5
    if-eqz v1, :cond_7

    if-nez v4, :cond_6

    sget-object v4, Lcom/android/tools/r8/internal/fi0;->e:Lcom/android/tools/r8/internal/fi0;

    :cond_6
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/fi0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_7
    iget-object v1, p0, Lcom/android/tools/r8/internal/ij0;->d:Ljava/lang/String;

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/ij0;->d:Ljava/lang/String;

    :goto_2
    iget-object v2, p1, Lcom/android/tools/r8/internal/ij0;->d:Ljava/lang/String;

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    check-cast v2, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/tools/r8/internal/ij0;->d:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    :cond_a
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/ij0;->e:Z

    iget-boolean v2, p1, Lcom/android/tools/r8/internal/ij0;->e:Z

    if-eq v1, v2, :cond_b

    return v3

    :cond_b
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v3

    :cond_c
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/ij0;->g:Lcom/android/tools/r8/internal/ij0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/ij0;->g:Lcom/android/tools/r8/internal/ij0;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/ij0;->b:I

    sget-object v1, Lcom/android/tools/r8/internal/hj0;->c:Lcom/android/tools/r8/internal/hj0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hj0;->getNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/ij0;->b:I

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v1

    invoke-static {v0}, Lcom/android/tools/r8/internal/Ie;->a(I)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/ij0;->c:Lcom/android/tools/r8/internal/fi0;

    if-eqz v1, :cond_2

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/ij0;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/tools/r8/internal/wz;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/ij0;->d:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/ij0;->e:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/lh0;->a(III)I

    move-result v0

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
    sget-object v0, Lcom/android/tools/r8/internal/vj0;->u:Lcom/android/tools/r8/internal/Cl;

    const/4 v1, 0x1

    const/16 v2, 0x30b

    const/16 v3, 0x25

    const/16 v4, 0x35

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/tools/r8/internal/Kg;->a(Lcom/android/tools/r8/internal/Cl;IIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/ij0;->b:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/tools/r8/internal/ij0;->c:Lcom/android/tools/r8/internal/fi0;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-static {v0, v3, v2, v4}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fi0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    const/4 v1, 0x3

    invoke-static {v0, v3, v1, v4}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/ij0;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/ij0;->d:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v4

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/ij0;->e:Z

    sget-object v2, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_3

    const/16 v0, 0x4cf

    goto :goto_1

    :cond_3
    const/16 v0, 0x4d5

    :goto_1
    add-int/2addr v1, v0

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

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->v:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/ij0;

    const-class v2, Lcom/android/tools/r8/internal/gj0;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/tools/r8/internal/ij0;->f:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/android/tools/r8/internal/ij0;->f:B

    return v1
.end method

.method public final newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/ij0;->g:Lcom/android/tools/r8/internal/ij0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ij0;->a()Lcom/android/tools/r8/internal/gj0;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/gj0;

    check-cast p1, Lcom/android/tools/r8/internal/dz;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/gj0;-><init>(Lcom/android/tools/r8/internal/dz;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ij0;->a()Lcom/android/tools/r8/internal/gj0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ij0;->a()Lcom/android/tools/r8/internal/gj0;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/ij0;->b:I

    sget-object v1, Lcom/android/tools/r8/internal/hj0;->c:Lcom/android/tools/r8/internal/hj0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hj0;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/tools/r8/internal/ij0;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ij0;->c:Lcom/android/tools/r8/internal/fi0;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ij0;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/tools/r8/internal/wz;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ij0;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/ij0;->e:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->a(IZ)V

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
