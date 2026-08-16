.class public Lcom/android/tools/r8/internal/is0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Ljava/util/LinkedHashMap;

.field public d:J

.field public e:J

.field public f:Ljava/util/LinkedHashMap;

.field public g:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/is0;->c:Ljava/util/LinkedHashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/tools/r8/internal/is0;->d:J

    iput-object p1, p0, Lcom/android/tools/r8/internal/is0;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/is0;->b:Z

    if-eqz p2, :cond_0

    sget p1, Lcom/android/tools/r8/internal/ns0;->d:I

    invoke-static {}, Ljava/lang/System;->gc()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    new-instance p2, Lcom/android/tools/r8/internal/hs0;

    sub-long/2addr v0, v2

    invoke-direct {p2, v0, v1}, Lcom/android/tools/r8/internal/hs0;-><init>(J)V

    const-string v0, "Memory"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/tools/r8/internal/is0;->f:Ljava/util/LinkedHashMap;

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/tools/r8/internal/is0;->e:J

    return-void
.end method

.method public static synthetic a(ILcom/android/tools/r8/internal/is0;Lcom/android/tools/r8/internal/is0;)V
    .locals 0

    add-int/lit8 p0, p0, 0x1

    .line 46
    invoke-virtual {p2, p0, p1}, Lcom/android/tools/r8/internal/is0;->a(ILcom/android/tools/r8/internal/is0;)V

    return-void
.end method

.method public static b(I)V
    .locals 2

    if-lez p0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  "

    invoke-static {v1, p0}, Lcom/android/tools/r8/z2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string p0, "- "

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/is0;)Ljava/lang/String;
    .locals 4

    if-ne p0, p1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/is0;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 13
    :cond_0
    iget-wide v0, p0, Lcom/android/tools/r8/internal/is0;->d:J

    .line 14
    iget-wide v2, p1, Lcom/android/tools/r8/internal/is0;->d:J

    .line 15
    invoke-static {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/ns0;->a(JJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/is0;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/android/tools/r8/internal/is0;->d:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/tools/r8/internal/is0;->e:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/tools/r8/internal/is0;->d:J

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/android/tools/r8/internal/is0;->e:J

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/is0;->h:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/is0;->b:Z

    if-eqz v0, :cond_2

    .line 5
    sget v0, Lcom/android/tools/r8/internal/ns0;->d:I

    .line 6
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 7
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    .line 9
    new-instance v5, Lcom/android/tools/r8/internal/hs0;

    sub-long/2addr v1, v3

    invoke-direct {v5, v1, v2}, Lcom/android/tools/r8/internal/hs0;-><init>(J)V

    .line 10
    const-string v1, "Memory"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/android/tools/r8/internal/is0;->g:Ljava/util/LinkedHashMap;

    :cond_2
    return-void
.end method

.method public final a(I)V
    .locals 9

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/internal/is0;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Memory"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    if-gt v2, p1, :cond_1

    .line 49
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 50
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/is0;->g:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/hs0;

    .line 51
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/hs0;

    .line 52
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 53
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-wide v5, v3, Lcom/android/tools/r8/internal/hs0;->a:J

    .line 54
    invoke-static {v5, v6}, Lcom/android/tools/r8/internal/ns0;->b(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v2, Lcom/android/tools/r8/internal/hs0;->a:J

    .line 55
    invoke-static {v6, v7}, Lcom/android/tools/r8/internal/ns0;->b(J)Ljava/lang/String;

    move-result-object v6

    .line 56
    iget-wide v7, v2, Lcom/android/tools/r8/internal/hs0;->a:J

    iget-wide v2, v3, Lcom/android/tools/r8/internal/hs0;->a:J

    sub-long/2addr v7, v2

    .line 57
    invoke-static {v7, v8}, Lcom/android/tools/r8/internal/ns0;->b(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " start: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", end: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", delta: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(ILcom/android/tools/r8/internal/is0;)V
    .locals 11

    .line 16
    sget-boolean v0, Lcom/android/tools/r8/internal/is0;->h:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    .line 17
    iget-wide v3, p0, Lcom/android/tools/r8/internal/is0;->d:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_1
    :goto_0
    iget-wide v3, p0, Lcom/android/tools/r8/internal/is0;->d:J

    const-wide/32 v5, 0xf4240

    .line 20
    div-long v7, v3, v5

    .line 21
    sget v0, Lcom/android/tools/r8/internal/ns0;->d:I

    int-to-long v9, v0

    cmp-long v0, v7, v9

    if-gez v0, :cond_2

    goto :goto_1

    .line 22
    :cond_2
    iget-wide v7, p2, Lcom/android/tools/r8/internal/is0;->d:J

    const-wide/16 v9, 0x64

    mul-long/2addr v3, v9

    .line 23
    div-long/2addr v3, v7

    .line 24
    sget v0, Lcom/android/tools/r8/internal/ns0;->e:I

    int-to-long v7, v0

    cmp-long v0, v3, v7

    if-gez v0, :cond_3

    goto :goto_1

    .line 25
    :cond_3
    invoke-static {p1}, Lcom/android/tools/r8/internal/is0;->b(I)V

    .line 26
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/is0;->a(Lcom/android/tools/r8/internal/is0;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/is0;->b:Z

    if-eqz v0, :cond_4

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/is0;->a(I)V

    .line 29
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/is0;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_1
    return-void

    .line 30
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/is0;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/is0;

    .line 32
    iget-wide v7, v4, Lcom/android/tools/r8/internal/is0;->d:J

    add-long/2addr v1, v7

    goto :goto_2

    .line 33
    :cond_6
    iget-wide v3, p0, Lcom/android/tools/r8/internal/is0;->d:J

    cmp-long v7, v1, v3

    if-gez v7, :cond_7

    sub-long/2addr v3, v1

    .line 34
    div-long v1, v3, v5

    .line 35
    sget v5, Lcom/android/tools/r8/internal/ns0;->d:I

    int-to-long v5, v5

    cmp-long v1, v1, v5

    if-ltz v1, :cond_7

    .line 36
    iget-wide v1, p2, Lcom/android/tools/r8/internal/is0;->d:J

    mul-long/2addr v9, v3

    .line 37
    div-long/2addr v9, v1

    .line 38
    sget v1, Lcom/android/tools/r8/internal/ns0;->e:I

    int-to-long v1, v1

    cmp-long v1, v9, v1

    if-ltz v1, :cond_7

    add-int/lit8 v1, p1, 0x1

    .line 39
    invoke-static {v1}, Lcom/android/tools/r8/internal/is0;->b(I)V

    .line 40
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 41
    iget-wide v5, p2, Lcom/android/tools/r8/internal/is0;->d:J

    .line 42
    invoke-static {v3, v4, v5, v6}, Lcom/android/tools/r8/internal/ns0;->a(JJ)Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/ns0;->c(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") Unaccounted: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    :cond_7
    new-instance v1, Lcom/android/tools/r8/internal/He1;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/He1;-><init>(ILcom/android/tools/r8/internal/is0;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/is0;->a:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/tools/r8/internal/is0;->d:J

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/ns0;->c(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
