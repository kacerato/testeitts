.class public final Lcom/android/tools/r8/internal/wh0;
.super Lcom/android/tools/r8/internal/wz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# static fields
.field public static final h:Lcom/android/tools/r8/internal/sh0;

.field public static final i:Lcom/android/tools/r8/internal/wh0;

.field public static final j:Lcom/android/tools/r8/internal/th0;


# instance fields
.field public b:Lcom/android/tools/r8/internal/fi0;

.field public volatile c:Ljava/lang/String;

.field public d:Ljava/util/List;

.field public e:I

.field public f:I

.field public g:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/sh0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/sh0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/wh0;->h:Lcom/android/tools/r8/internal/sh0;

    new-instance v0, Lcom/android/tools/r8/internal/wh0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/wh0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/wh0;->i:Lcom/android/tools/r8/internal/wh0;

    new-instance v0, Lcom/android/tools/r8/internal/th0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/th0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/wh0;->j:Lcom/android/tools/r8/internal/th0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput-byte v0, p0, Lcom/android/tools/r8/internal/wh0;->g:B

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/wh0;->c:Ljava/lang/String;

    .line 6
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/wh0;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    .locals 7

    .line 7
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wh0;-><init>()V

    .line 8
    invoke-static {p2}, Lcom/android/tools/r8/internal/Ng;->a(Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kv0;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_c

    .line 9
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_a

    const/16 v5, 0xa

    if-eq v3, v5, :cond_8

    const/16 v5, 0x12

    if-eq v3, v5, :cond_7

    const/16 v5, 0x18

    if-eq v3, v5, :cond_5

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_2

    const/16 v5, 0x20

    if-eq v3, v5, :cond_1

    .line 10
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/android/tools/r8/internal/wz;->parseUnknownField(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_5

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->t()I

    move-result v3

    iput v3, p0, Lcom/android/tools/r8/internal/wh0;->f:I

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->l()I

    move-result v3

    .line 13
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/Be;->d(I)I

    move-result v3

    .line 14
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->b()I

    move-result v5

    if-lez v5, :cond_4

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v5

    if-nez v2, :cond_3

    .line 16
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/tools/r8/internal/wh0;->d:Ljava/util/List;

    move v2, v4

    .line 17
    :cond_3
    iget-object v6, p0, Lcom/android/tools/r8/internal/wh0;->d:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/Be;->c(I)V

    goto :goto_0

    .line 19
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v3

    if-nez v2, :cond_6

    .line 20
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/tools/r8/internal/wh0;->d:Ljava/util/List;

    move v2, v4

    .line 21
    :cond_6
    iget-object v4, p0, Lcom/android/tools/r8/internal/wh0;->d:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->r()Ljava/lang/String;

    move-result-object v3

    .line 23
    iput-object v3, p0, Lcom/android/tools/r8/internal/wh0;->c:Ljava/lang/String;

    goto :goto_0

    .line 24
    :cond_8
    iget-object v3, p0, Lcom/android/tools/r8/internal/wh0;->b:Lcom/android/tools/r8/internal/fi0;

    if-eqz v3, :cond_9

    .line 25
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/fi0;->a()Lcom/android/tools/r8/internal/ei0;

    move-result-object v3

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    .line 26
    :goto_2
    sget-object v4, Lcom/android/tools/r8/internal/fi0;->f:Lcom/android/tools/r8/internal/di0;

    .line 27
    invoke-virtual {p1, v4, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/fi0;

    iput-object v4, p0, Lcom/android/tools/r8/internal/wh0;->b:Lcom/android/tools/r8/internal/fi0;

    if-eqz v3, :cond_0

    .line 28
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/ei0;->a(Lcom/android/tools/r8/internal/fi0;)Lcom/android/tools/r8/internal/ei0;

    .line 29
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ei0;->b()Lcom/android/tools/r8/internal/fi0;

    move-result-object v3

    iput-object v3, p0, Lcom/android/tools/r8/internal/wh0;->b:Lcom/android/tools/r8/internal/fi0;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_a
    :goto_3
    move v1, v4

    goto/16 :goto_0

    .line 30
    :goto_4
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/io/IOException;)V

    .line 31
    iput-object p0, p2, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 32
    throw p2

    .line 33
    :goto_5
    iput-object p0, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 34
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    if-eqz v2, :cond_b

    .line 35
    iget-object p2, p0, Lcom/android/tools/r8/internal/wh0;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/wh0;->d:Ljava/util/List;

    .line 36
    :cond_b
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 37
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    .line 38
    throw p1

    :cond_c
    if-eqz v2, :cond_d

    .line 39
    iget-object p1, p0, Lcom/android/tools/r8/internal/wh0;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wh0;->d:Ljava/util/List;

    .line 40
    :cond_d
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 41
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/uh0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/wz;-><init>(Lcom/android/tools/r8/internal/fz;)V

    const/4 p1, -0x1

    .line 2
    iput-byte p1, p0, Lcom/android/tools/r8/internal/wh0;->g:B

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/uh0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/wh0;->i:Lcom/android/tools/r8/internal/wh0;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/uh0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/uh0;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/uh0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/uh0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/uh0;->a(Lcom/android/tools/r8/internal/wh0;)Lcom/android/tools/r8/internal/uh0;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/wh0;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/wh0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wh0;->b:Lcom/android/tools/r8/internal/fi0;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    iget-object v4, p1, Lcom/android/tools/r8/internal/wh0;->b:Lcom/android/tools/r8/internal/fi0;

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
    iget-object v1, p0, Lcom/android/tools/r8/internal/wh0;->c:Ljava/lang/String;

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/wh0;->c:Ljava/lang/String;

    :goto_2
    iget-object v3, p1, Lcom/android/tools/r8/internal/wh0;->c:Ljava/lang/String;

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    check-cast v3, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/tools/r8/internal/wh0;->c:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/android/tools/r8/internal/wh0;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/android/tools/r8/internal/wh0;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/android/tools/r8/internal/wh0;->f:I

    iget v3, p1, Lcom/android/tools/r8/internal/wh0;->f:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/wh0;->i:Lcom/android/tools/r8/internal/wh0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/wh0;->i:Lcom/android/tools/r8/internal/wh0;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/wh0;->b:Lcom/android/tools/r8/internal/fi0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/wh0;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/tools/r8/internal/wz;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/wh0;->c:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/wh0;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/wh0;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/Ie;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v0, v2

    new-instance v1, Lcom/android/tools/r8/internal/VI;

    iget-object v3, p0, Lcom/android/tools/r8/internal/wh0;->d:Ljava/util/List;

    sget-object v4, Lcom/android/tools/r8/internal/wh0;->h:Lcom/android/tools/r8/internal/sh0;

    invoke-direct {v1, v3, v4}, Lcom/android/tools/r8/internal/VI;-><init>(Ljava/util/List;Lcom/android/tools/r8/internal/UI;)V

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iput v2, p0, Lcom/android/tools/r8/internal/wh0;->e:I

    iget v1, p0, Lcom/android/tools/r8/internal/wh0;->f:I

    if-eqz v1, :cond_5

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Mg;->a(III)I

    move-result v0

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
    sget-object v0, Lcom/android/tools/r8/internal/vj0;->A:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget-object v1, p0, Lcom/android/tools/r8/internal/wh0;->b:Lcom/android/tools/r8/internal/fi0;

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

    iget-object v1, p0, Lcom/android/tools/r8/internal/wh0;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/wh0;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/tools/r8/internal/wh0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x3

    invoke-static {v1, v3, v0, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/wh0;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    :cond_3
    const/4 v0, 0x4

    invoke-static {v1, v3, v0, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/wh0;->f:I

    add-int/2addr v0, v1

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

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->B:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/wh0;

    const-class v2, Lcom/android/tools/r8/internal/uh0;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/tools/r8/internal/wh0;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/android/tools/r8/internal/wh0;->g:B

    return v1
.end method

.method public final newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/wh0;->i:Lcom/android/tools/r8/internal/wh0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/wh0;->a()Lcom/android/tools/r8/internal/uh0;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/uh0;

    check-cast p1, Lcom/android/tools/r8/internal/dz;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/uh0;-><init>(Lcom/android/tools/r8/internal/dz;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wh0;->a()Lcom/android/tools/r8/internal/uh0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wh0;->a()Lcom/android/tools/r8/internal/uh0;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wh0;->getSerializedSize()I

    iget-object v0, p0, Lcom/android/tools/r8/internal/wh0;->b:Lcom/android/tools/r8/internal/fi0;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/wh0;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/tools/r8/internal/wz;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wh0;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/VI;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wh0;->d:Ljava/util/List;

    sget-object v2, Lcom/android/tools/r8/internal/wh0;->h:Lcom/android/tools/r8/internal/sh0;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/VI;-><init>(Ljava/util/List;Lcom/android/tools/r8/internal/UI;)V

    iget-object v0, v0, Lcom/android/tools/r8/internal/VI;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Ie;->g(I)V

    iget v0, p0, Lcom/android/tools/r8/internal/wh0;->e:I

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Ie;->g(I)V

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/wh0;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/wh0;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Ie;->f(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/wh0;->f:I

    if-eqz v0, :cond_4

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->e(II)V

    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
