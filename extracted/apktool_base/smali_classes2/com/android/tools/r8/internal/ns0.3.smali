.class public Lcom/android/tools/r8/internal/ns0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final d:I

.field public static final e:I

.field public static final f:Lcom/android/tools/r8/internal/gs0;

.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/is0;

.field public final b:Ljava/util/ArrayDeque;

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.android.tools.r8.printtimes.minvalue_ms"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    sput v0, Lcom/android/tools/r8/internal/ns0;->d:I

    const-string v0, "com.android.tools.r8.printtimes.minvalue"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput v0, Lcom/android/tools/r8/internal/ns0;->e:I

    new-instance v0, Lcom/android/tools/r8/internal/gs0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gs0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/ns0;->f:Lcom/android/tools/r8/internal/gs0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/ns0;->c:Z

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ns0;->b:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/android/tools/r8/internal/is0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/is0;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/ns0;->a:Lcom/android/tools/r8/internal/is0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/nJ;Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/nJ;->v:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/tools/r8/internal/nJ;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/ns0;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/nJ;->w:Z

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/ns0;-><init>(Ljava/lang/String;Z)V

    move-object p1, v0

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/nJ;->c:Lcom/android/tools/r8/CancelCompilationChecker;

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/ms0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/ms0;-><init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    return-object v0

    :cond_2
    return-object p1
.end method

.method public static a(J)Ljava/lang/String;
    .locals 4

    .line 12
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-gez p0, :cond_1

    const/16 p0, 0x2d

    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    rem-int/lit8 p0, p0, 0x3

    const/4 p1, 0x0

    .line 18
    invoke-virtual {v1, v0, p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 19
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p0, p1, :cond_3

    if-lez p0, :cond_2

    const/16 p1, 0x2e

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 p1, p0, 0x3

    .line 21
    invoke-virtual {v1, v0, p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move p0, p1

    goto :goto_0

    .line 22
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(JJ)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x64

    mul-long/2addr p0, v0

    .line 10
    div-long/2addr p0, p2

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x400

    .line 1
    div-long/2addr p0, v0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/ns0;->a(J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "k"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()Lcom/android/tools/r8/internal/ns0;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/ns0;->f:Lcom/android/tools/r8/internal/gs0;

    return-object v0
.end method

.method public static c(J)Ljava/lang/String;
    .locals 2

    const-wide/32 v0, 0xf4240

    .line 2
    div-long/2addr p0, v0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(ILjava/lang/String;)Lcom/android/tools/r8/internal/ls0;
    .locals 2

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/internal/ns0;->g:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/ns0;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/internal/ns0;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/is0;

    if-nez v0, :cond_3

    .line 8
    iget-object v0, v1, Lcom/android/tools/r8/internal/is0;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Ambiguous timing chain. Insert a begin/end to fix"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 9
    :cond_3
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/ls0;

    invoke-direct {v0, p2, p1, p0}, Lcom/android/tools/r8/internal/ls0;-><init>(Ljava/lang/String;ILcom/android/tools/r8/internal/ns0;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 28
    :try_start_0
    invoke-interface {p2}, Lcom/android/tools/r8/internal/es0;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 30
    throw p1
.end method

.method public a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 24
    :try_start_0
    invoke-interface {p2}, Lcom/android/tools/r8/internal/Sr0;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 26
    throw p1
.end method

.method public b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/ns0;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/is0;

    .line 3
    iget-object v1, v0, Lcom/android/tools/r8/internal/is0;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/internal/is0;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/is0;

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/internal/is0;->h:Z

    if-nez v0, :cond_1

    .line 6
    iget-wide v0, p1, Lcom/android/tools/r8/internal/is0;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/is0;->b:Z

    if-eqz v0, :cond_2

    .line 9
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    .line 12
    new-instance v5, Lcom/android/tools/r8/internal/hs0;

    sub-long/2addr v1, v3

    invoke-direct {v5, v1, v2}, Lcom/android/tools/r8/internal/hs0;-><init>(J)V

    .line 13
    const-string v1, "Memory"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iput-object v0, p1, Lcom/android/tools/r8/internal/is0;->f:Ljava/util/LinkedHashMap;

    .line 15
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/tools/r8/internal/is0;->e:J

    goto :goto_1

    .line 16
    :cond_3
    new-instance v1, Lcom/android/tools/r8/internal/is0;

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/ns0;->c:Z

    invoke-direct {v1, p1, v2}, Lcom/android/tools/r8/internal/is0;-><init>(Ljava/lang/String;Z)V

    .line 17
    iget-object v0, v0, Lcom/android/tools/r8/internal/is0;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    .line 18
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ns0;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final close()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public d()Lcom/android/tools/r8/internal/ns0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ns0;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/is0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/is0;->a()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/ns0;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    return-object p0
.end method

.method public e()V
    .locals 4

    sget-boolean v0, Lcom/android/tools/r8/internal/ns0;->g:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/ns0;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ns0;->b:Ljava/util/ArrayDeque;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected non-singleton stack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/ns0;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/is0;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/ns0;->a:Lcom/android/tools/r8/internal/is0;

    if-ne v1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/is0;->a()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Recorded timings:"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v1}, Lcom/android/tools/r8/internal/is0;->a(ILcom/android/tools/r8/internal/is0;)V

    return-void
.end method
