.class public final Lcom/android/tools/r8/internal/ci0;
.super Lcom/android/tools/r8/internal/wz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# static fields
.field public static final h:Lcom/android/tools/r8/internal/ci0;

.field public static final i:Lcom/android/tools/r8/internal/ai0;


# instance fields
.field public b:Lcom/android/tools/r8/internal/ri0;

.field public c:Ljava/util/List;

.field public d:Ljava/util/List;

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;

.field public g:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/ci0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ci0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/ci0;->h:Lcom/android/tools/r8/internal/ci0;

    new-instance v0, Lcom/android/tools/r8/internal/ai0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ai0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/ci0;->i:Lcom/android/tools/r8/internal/ai0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput-byte v0, p0, Lcom/android/tools/r8/internal/ci0;->g:B

    .line 5
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/internal/ci0;->d:Ljava/util/List;

    .line 7
    iput-object v0, p0, Lcom/android/tools/r8/internal/ci0;->e:Ljava/util/List;

    .line 8
    iput-object v0, p0, Lcom/android/tools/r8/internal/ci0;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    .locals 5

    .line 9
    invoke-direct {p0}, Lcom/android/tools/r8/internal/ci0;-><init>()V

    .line 10
    invoke-static {p2}, Lcom/android/tools/r8/internal/Ng;->a(Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kv0;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_10

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v3

    if-eqz v3, :cond_b

    const/16 v4, 0xa

    if-eq v3, v4, :cond_9

    const/16 v4, 0x12

    if-eq v3, v4, :cond_7

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_5

    const/16 v4, 0x22

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_1

    .line 12
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/android/tools/r8/internal/wz;->parseUnknownField(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_4

    :cond_1
    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_2

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/tools/r8/internal/ci0;->f:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 14
    :cond_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/ci0;->f:Ljava/util/List;

    .line 15
    sget-object v4, Lcom/android/tools/r8/internal/Rg0;->f:Lcom/android/tools/r8/internal/Pg0;

    .line 16
    invoke-virtual {p1, v4, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Rg0;

    .line 17
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_4

    .line 18
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/tools/r8/internal/ci0;->e:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 19
    :cond_4
    iget-object v3, p0, Lcom/android/tools/r8/internal/ci0;->e:Ljava/util/List;

    .line 20
    sget-object v4, Lcom/android/tools/r8/internal/Si0;->f:Lcom/android/tools/r8/internal/Qi0;

    .line 21
    invoke-virtual {p1, v4, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Si0;

    .line 22
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_6

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/tools/r8/internal/ci0;->d:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 24
    :cond_6
    iget-object v3, p0, Lcom/android/tools/r8/internal/ci0;->d:Ljava/util/List;

    .line 25
    sget-object v4, Lcom/android/tools/r8/internal/rh0;->g:Lcom/android/tools/r8/internal/ph0;

    .line 26
    invoke-virtual {p1, v4, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/rh0;

    .line 27
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_8

    .line 28
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 29
    :cond_8
    iget-object v3, p0, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    .line 30
    sget-object v4, Lcom/android/tools/r8/internal/zh0;->g:Lcom/android/tools/r8/internal/xh0;

    .line 31
    invoke-virtual {p1, v4, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zh0;

    .line 32
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 33
    :cond_9
    iget-object v3, p0, Lcom/android/tools/r8/internal/ci0;->b:Lcom/android/tools/r8/internal/ri0;

    if-eqz v3, :cond_a

    .line 34
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ri0;->a()Lcom/android/tools/r8/internal/qi0;

    move-result-object v3

    goto :goto_1

    :cond_a
    const/4 v3, 0x0

    .line 35
    :goto_1
    sget-object v4, Lcom/android/tools/r8/internal/ri0;->e:Lcom/android/tools/r8/internal/pi0;

    .line 36
    invoke-virtual {p1, v4, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/ri0;

    iput-object v4, p0, Lcom/android/tools/r8/internal/ci0;->b:Lcom/android/tools/r8/internal/ri0;

    if-eqz v3, :cond_0

    .line 37
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/qi0;->a(Lcom/android/tools/r8/internal/ri0;)Lcom/android/tools/r8/internal/qi0;

    .line 38
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/qi0;->b()Lcom/android/tools/r8/internal/ri0;

    move-result-object v3

    iput-object v3, p0, Lcom/android/tools/r8/internal/ci0;->b:Lcom/android/tools/r8/internal/ri0;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 39
    :goto_3
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/io/IOException;)V

    .line 40
    iput-object p0, p2, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 41
    throw p2

    .line 42
    :goto_4
    iput-object p0, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 43
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_c

    .line 44
    iget-object p2, p0, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    :cond_c
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_d

    .line 45
    iget-object p2, p0, Lcom/android/tools/r8/internal/ci0;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/ci0;->d:Ljava/util/List;

    :cond_d
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_e

    .line 46
    iget-object p2, p0, Lcom/android/tools/r8/internal/ci0;->e:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/ci0;->e:Ljava/util/List;

    :cond_e
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_f

    .line 47
    iget-object p2, p0, Lcom/android/tools/r8/internal/ci0;->f:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/ci0;->f:Ljava/util/List;

    .line 48
    :cond_f
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 49
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    .line 50
    throw p1

    :cond_10
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_11

    .line 51
    iget-object p1, p0, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    :cond_11
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_12

    .line 52
    iget-object p1, p0, Lcom/android/tools/r8/internal/ci0;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/ci0;->d:Ljava/util/List;

    :cond_12
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_13

    .line 53
    iget-object p1, p0, Lcom/android/tools/r8/internal/ci0;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/ci0;->e:Ljava/util/List;

    :cond_13
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_14

    .line 54
    iget-object p1, p0, Lcom/android/tools/r8/internal/ci0;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/ci0;->f:Ljava/util/List;

    .line 55
    :cond_14
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 56
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/bi0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/wz;-><init>(Lcom/android/tools/r8/internal/fz;)V

    const/4 p1, -0x1

    .line 2
    iput-byte p1, p0, Lcom/android/tools/r8/internal/ci0;->g:B

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/android/tools/r8/internal/ci0;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/ci0;->i:Lcom/android/tools/r8/internal/ai0;

    .line 2
    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/wz;->parseWithIOException(Lcom/android/tools/r8/internal/z50;Ljava/io/InputStream;)Lcom/android/tools/r8/internal/fW;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/ci0;

    return-object p0
.end method

.method public static synthetic access$1300()Z
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    return v0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/bi0;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/ci0;->h:Lcom/android/tools/r8/internal/ci0;

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/bi0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/bi0;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/bi0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/bi0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/bi0;->a(Lcom/android/tools/r8/internal/ci0;)Lcom/android/tools/r8/internal/bi0;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/ci0;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/ci0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ci0;->b:Lcom/android/tools/r8/internal/ri0;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    iget-object v4, p1, Lcom/android/tools/r8/internal/ci0;->b:Lcom/android/tools/r8/internal/ri0;

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

    sget-object v4, Lcom/android/tools/r8/internal/ri0;->d:Lcom/android/tools/r8/internal/ri0;

    :cond_5
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/ri0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/tools/r8/internal/ci0;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/android/tools/r8/internal/ci0;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/tools/r8/internal/ci0;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/android/tools/r8/internal/ci0;->e:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/android/tools/r8/internal/ci0;->f:Ljava/util/List;

    iget-object v3, p1, Lcom/android/tools/r8/internal/ci0;->f:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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
    sget-object v0, Lcom/android/tools/r8/internal/ci0;->h:Lcom/android/tools/r8/internal/ci0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/ci0;->h:Lcom/android/tools/r8/internal/ci0;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ci0;->b:Lcom/android/tools/r8/internal/ri0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/kW;

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/ci0;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/ci0;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/kW;

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_3
    iget-object v3, p0, Lcom/android/tools/r8/internal/ci0;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/android/tools/r8/internal/ci0;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/kW;

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    iget-object v2, p0, Lcom/android/tools/r8/internal/ci0;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/tools/r8/internal/ci0;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/kW;

    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

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
    sget-object v0, Lcom/android/tools/r8/internal/vj0;->k:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget-object v1, p0, Lcom/android/tools/r8/internal/ci0;->b:Lcom/android/tools/r8/internal/ri0;

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ri0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x2

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/ci0;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x3

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/ci0;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/ci0;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x4

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/ci0;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/ci0;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x5

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/ci0;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
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

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->l:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/ci0;

    const-class v2, Lcom/android/tools/r8/internal/bi0;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/tools/r8/internal/ci0;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/android/tools/r8/internal/ci0;->g:B

    return v1
.end method

.method public final newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/ci0;->h:Lcom/android/tools/r8/internal/ci0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ci0;->a()Lcom/android/tools/r8/internal/bi0;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/bi0;

    check-cast p1, Lcom/android/tools/r8/internal/dz;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/bi0;-><init>(Lcom/android/tools/r8/internal/dz;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ci0;->a()Lcom/android/tools/r8/internal/bi0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ci0;->a()Lcom/android/tools/r8/internal/bi0;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/ci0;->b:Lcom/android/tools/r8/internal/ri0;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/kW;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/ci0;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/ci0;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/kW;

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/ci0;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/ci0;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/kW;

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/ci0;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/ci0;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/kW;

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
