.class public final Lcom/android/tools/r8/internal/nM;
.super Lcom/android/tools/r8/internal/Yy;
.source "SourceFile"


# static fields
.field public static final h:Lcom/android/tools/r8/internal/nM;

.field public static final i:Lcom/android/tools/r8/internal/hM;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/l8;

.field public c:Ljava/util/List;

.field public d:Ljava/util/List;

.field public e:I

.field public f:B

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/hM;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/hM;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/nM;->i:Lcom/android/tools/r8/internal/hM;

    new-instance v0, Lcom/android/tools/r8/internal/nM;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/nM;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/nM;->h:Lcom/android/tools/r8/internal/nM;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/nM;->c:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/nM;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/nM;->e:I

    .line 9
    iput-byte v0, p0, Lcom/android/tools/r8/internal/nM;->f:B

    .line 10
    iput v0, p0, Lcom/android/tools/r8/internal/nM;->g:I

    .line 11
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    iput-object v0, p0, Lcom/android/tools/r8/internal/nM;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    .locals 9

    .line 12
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yy;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/android/tools/r8/internal/nM;->e:I

    .line 14
    iput-byte v0, p0, Lcom/android/tools/r8/internal/nM;->f:B

    .line 15
    iput v0, p0, Lcom/android/tools/r8/internal/nM;->g:I

    .line 16
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/nM;->c:Ljava/util/List;

    .line 17
    iput-object v0, p0, Lcom/android/tools/r8/internal/nM;->d:Ljava/util/List;

    .line 18
    new-instance v0, Lcom/android/tools/r8/internal/j8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/j8;-><init>()V

    .line 19
    new-instance v1, Lcom/android/tools/r8/internal/He;

    const/4 v2, 0x1

    new-array v3, v2, [B

    invoke-direct {v1, v0, v3}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    const/4 v5, 0x2

    if-nez v3, :cond_c

    .line 20
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v6

    if-eqz v6, :cond_8

    const/16 v7, 0xa

    if-eq v6, v7, :cond_6

    const/16 v7, 0x28

    if-eq v6, v7, :cond_4

    const/16 v7, 0x2a

    if-eq v6, v7, :cond_1

    .line 21
    invoke-virtual {p1, v6, v1}, Lcom/android/tools/r8/internal/Ae;->a(ILcom/android/tools/r8/internal/He;)Z

    move-result v5

    if-nez v5, :cond_0

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

    .line 22
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v6

    .line 23
    invoke-virtual {p1, v6}, Lcom/android/tools/r8/internal/Ae;->b(I)I

    move-result v6

    and-int/lit8 v7, v4, 0x2

    if-eq v7, v5, :cond_2

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v7

    if-lez v7, :cond_2

    .line 25
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/tools/r8/internal/nM;->d:Ljava/util/List;

    or-int/lit8 v4, v4, 0x2

    .line 26
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v7

    if-lez v7, :cond_3

    .line 27
    iget-object v7, p0, Lcom/android/tools/r8/internal/nM;->d:Ljava/util/List;

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v8

    .line 29
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 30
    :cond_3
    iput v6, p1, Lcom/android/tools/r8/internal/Ae;->h:I

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->j()V

    goto :goto_0

    :cond_4
    and-int/lit8 v6, v4, 0x2

    if-eq v6, v5, :cond_5

    .line 32
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/tools/r8/internal/nM;->d:Ljava/util/List;

    or-int/lit8 v4, v4, 0x2

    .line 33
    :cond_5
    iget-object v6, p0, Lcom/android/tools/r8/internal/nM;->d:Ljava/util/List;

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v7

    .line 35
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    and-int/lit8 v6, v4, 0x1

    if-eq v6, v2, :cond_7

    .line 36
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/tools/r8/internal/nM;->c:Ljava/util/List;

    or-int/lit8 v4, v4, 0x1

    .line 37
    :cond_7
    iget-object v6, p0, Lcom/android/tools/r8/internal/nM;->c:Ljava/util/List;

    sget-object v7, Lcom/android/tools/r8/internal/mM;->o:Lcom/android/tools/r8/internal/jM;

    invoke-virtual {p1, v7, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_8
    :goto_2
    move v3, v2

    goto/16 :goto_0

    .line 38
    :goto_3
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/LJ;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 40
    iput-object p0, p2, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 41
    throw p2

    .line 42
    :goto_4
    iput-object p0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 43
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    and-int/lit8 p2, v4, 0x1

    if-ne p2, v2, :cond_9

    .line 44
    iget-object p2, p0, Lcom/android/tools/r8/internal/nM;->c:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/nM;->c:Ljava/util/List;

    :cond_9
    and-int/lit8 p2, v4, 0x2

    if-ne p2, v5, :cond_a

    .line 45
    iget-object p2, p0, Lcom/android/tools/r8/internal/nM;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/nM;->d:Ljava/util/List;

    .line 46
    :cond_a
    :try_start_2
    iget-object p2, v1, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p2, :cond_b

    .line 47
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    .line 48
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/nM;->b:Lcom/android/tools/r8/internal/l8;

    .line 49
    throw p1

    .line 50
    :catch_2
    :cond_b
    :goto_6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/nM;->b:Lcom/android/tools/r8/internal/l8;

    .line 51
    throw p1

    :cond_c
    and-int/lit8 p1, v4, 0x1

    if-ne p1, v2, :cond_d

    .line 52
    iget-object p1, p0, Lcom/android/tools/r8/internal/nM;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/nM;->c:Ljava/util/List;

    :cond_d
    and-int/lit8 p1, v4, 0x2

    if-ne p1, v5, :cond_e

    .line 53
    iget-object p1, p0, Lcom/android/tools/r8/internal/nM;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/nM;->d:Ljava/util/List;

    .line 54
    :cond_e
    :try_start_3
    iget-object p1, v1, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_f

    .line 55
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p1

    goto :goto_8

    .line 56
    :cond_f
    :goto_7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/nM;->b:Lcom/android/tools/r8/internal/l8;

    return-void

    :goto_8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/nM;->b:Lcom/android/tools/r8/internal/l8;

    .line 57
    throw p1

    .line 58
    :catch_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/nM;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/iM;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Yy;-><init>(I)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/tools/r8/internal/nM;->e:I

    .line 3
    iput-byte v0, p0, Lcom/android/tools/r8/internal/nM;->f:B

    .line 4
    iput v0, p0, Lcom/android/tools/r8/internal/nM;->g:I

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/nM;->b:Lcom/android/tools/r8/internal/l8;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    .line 11
    iget v0, p0, Lcom/android/tools/r8/internal/nM;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 12
    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/nM;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 13
    iget-object v3, p0, Lcom/android/tools/r8/internal/nM;->c:Ljava/util/List;

    .line 14
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/O0;

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 15
    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/nM;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v0, v3, :cond_3

    .line 16
    iget-object v3, p0, Lcom/android/tools/r8/internal/nM;->d:Ljava/util/List;

    .line 17
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_2

    .line 18
    invoke-static {v3}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v4

    :cond_2
    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v2, v1

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/nM;->d:Ljava/util/List;

    .line 20
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    add-int/lit8 v2, v2, 0x1

    if-ltz v1, :cond_4

    .line 21
    invoke-static {v1}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v4

    :cond_4
    add-int/2addr v2, v4

    .line 22
    :cond_5
    iput v1, p0, Lcom/android/tools/r8/internal/nM;->e:I

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/nM;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v0

    add-int/2addr v0, v2

    .line 24
    iput v0, p0, Lcom/android/tools/r8/internal/nM;->g:I

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/He;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nM;->a()I

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/nM;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/internal/nM;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/O0;

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/nM;->d:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x2a

    .line 6
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 7
    iget v1, p0, Lcom/android/tools/r8/internal/nM;->e:I

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 8
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/nM;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/nM;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/nM;->b:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/iM;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/iM;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/iM;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/iM;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/iM;->a(Lcom/android/tools/r8/internal/nM;)Lcom/android/tools/r8/internal/iM;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/tools/r8/internal/nM;->f:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iput-byte v1, p0, Lcom/android/tools/r8/internal/nM;->f:B

    return v1
.end method
