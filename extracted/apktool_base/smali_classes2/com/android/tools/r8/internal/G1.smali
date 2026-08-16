.class public Lcom/android/tools/r8/internal/G1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;

.field public final e:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/G1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/G1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/G1;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/G1;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/G1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Hm0;
    .locals 1

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/G1;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/tools/r8/internal/Hm0;->c:Lcom/android/tools/r8/internal/Hm0;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Bm0;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/G1;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/G1;->a()Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p1}, Lcom/android/tools/r8/internal/G1;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Hm0;

    move-result-object p1

    return-object p1
.end method

.method public final a(II)Lcom/android/tools/r8/internal/F1;
    .locals 2

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    :cond_1
    :goto_0
    or-int v0, p1, p2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    int-to-long p1, p1

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/G1;->a(J)Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/Jj;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Jj;-><init>(II)V

    return-object v0
.end method

.method public a()Lcom/android/tools/r8/internal/Im0;
    .locals 2

    const-wide/16 v0, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/G1;->a(J)Lcom/android/tools/r8/internal/Im0;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Lcom/android/tools/r8/internal/Im0;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/G1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/hF0;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/hF0;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Im0;

    return-object p1
.end method

.method public final a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Im0;
    .locals 1

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/internal/G1;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/G1;->a(J)Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)Lcom/android/tools/r8/internal/MQ;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/G1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/iF0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/iF0;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/MQ;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/internal/Om0;
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/G1;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/gF0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/gF0;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Om0;

    return-object p1
.end method

.method public final b(I)Lcom/android/tools/r8/internal/Lm0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/G1;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/eF0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/eF0;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Lm0;

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Am0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/G1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/fF0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/fF0;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Am0;

    return-object p1
.end method
