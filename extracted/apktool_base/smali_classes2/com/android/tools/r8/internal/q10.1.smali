.class public final Lcom/android/tools/r8/internal/q10;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/internal/ae0;

.field public b:Lcom/android/tools/r8/internal/ae0;

.field public c:Lcom/android/tools/r8/internal/ae0;

.field public d:Lcom/android/tools/r8/internal/ae0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/p10;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/ae0;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/q10;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/q10;-><init>()V

    .line 2
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ae0;

    .line 3
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 4
    iput-object p1, v0, Lcom/android/tools/r8/internal/q10;->a:Lcom/android/tools/r8/internal/ae0;

    return-object p1

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->c()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    if-ne p0, v1, :cond_1

    .line 6
    iput-object p1, v0, Lcom/android/tools/r8/internal/q10;->b:Lcom/android/tools/r8/internal/ae0;

    return-object p1

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    if-ne p0, v1, :cond_2

    .line 8
    iput-object p1, v0, Lcom/android/tools/r8/internal/q10;->c:Lcom/android/tools/r8/internal/ae0;

    return-object p1

    .line 9
    :cond_2
    sget-boolean v1, Lcom/android/tools/r8/internal/q10;->e:Z

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->a()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    if-ne p0, v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 10
    :cond_4
    :goto_0
    iput-object p1, v0, Lcom/android/tools/r8/internal/q10;->d:Lcom/android/tools/r8/internal/ae0;

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/p10;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/ae0;
    .locals 2

    .line 11
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/q10;->a:Lcom/android/tools/r8/internal/ae0;

    goto :goto_1

    .line 13
    :cond_0
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->c()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/q10;->b:Lcom/android/tools/r8/internal/ae0;

    goto :goto_1

    .line 15
    :cond_1
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/q10;->c:Lcom/android/tools/r8/internal/ae0;

    goto :goto_1

    .line 17
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/internal/q10;->e:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->a()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/q10;->d:Lcom/android/tools/r8/internal/ae0;

    :goto_1
    if-eqz v0, :cond_5

    return-object v0

    .line 19
    :cond_5
    monitor-enter p0

    .line 20
    :try_start_0
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/q10;->a:Lcom/android/tools/r8/internal/ae0;

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    .line 22
    :cond_6
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->c()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/q10;->b:Lcom/android/tools/r8/internal/ae0;

    goto :goto_3

    .line 24
    :cond_7
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    if-ne p1, v0, :cond_8

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/q10;->c:Lcom/android/tools/r8/internal/ae0;

    goto :goto_3

    .line 26
    :cond_8
    sget-boolean v0, Lcom/android/tools/r8/internal/q10;->e:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->a()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    if-ne p1, v0, :cond_9

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 27
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/q10;->d:Lcom/android/tools/r8/internal/ae0;

    :goto_3
    if-eqz v0, :cond_b

    .line 28
    monitor-exit p0

    return-object v0

    .line 29
    :cond_b
    invoke-interface {p2, p1, p0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/ae0;

    .line 30
    sget-boolean v0, Lcom/android/tools/r8/internal/q10;->e:Z

    if-nez v0, :cond_d

    if-eqz p2, :cond_c

    goto :goto_4

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 31
    :cond_d
    :goto_4
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    if-ne p1, v1, :cond_e

    .line 32
    iput-object p2, p0, Lcom/android/tools/r8/internal/q10;->a:Lcom/android/tools/r8/internal/ae0;

    goto :goto_6

    .line 33
    :cond_e
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->c()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    if-ne p1, v1, :cond_f

    .line 34
    iput-object p2, p0, Lcom/android/tools/r8/internal/q10;->b:Lcom/android/tools/r8/internal/ae0;

    goto :goto_6

    .line 35
    :cond_f
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    if-ne p1, v1, :cond_10

    .line 36
    iput-object p2, p0, Lcom/android/tools/r8/internal/q10;->c:Lcom/android/tools/r8/internal/ae0;

    goto :goto_6

    :cond_10
    if-nez v0, :cond_12

    .line 37
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->a()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    if-ne p1, v0, :cond_11

    goto :goto_5

    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 38
    :cond_12
    :goto_5
    iput-object p2, p0, Lcom/android/tools/r8/internal/q10;->d:Lcom/android/tools/r8/internal/ae0;

    .line 39
    :goto_6
    monitor-exit p0

    return-object p2

    .line 40
    :goto_7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
