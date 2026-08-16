.class public final Lcom/android/tools/r8/internal/JS;
.super Lcom/android/tools/r8/internal/KS;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# instance fields
.field public final b:I

.field public final c:J

.field public final d:[S


# direct methods
.method public constructor <init>(IJ[S)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/KS;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/JS;->b:I

    iput-wide p2, p0, Lcom/android/tools/r8/internal/JS;->c:J

    iput-object p4, p0, Lcom/android/tools/r8/internal/JS;->d:[S

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/JS;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/tools/r8/internal/JS;->b:I

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/SJ0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/SJ0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/TJ0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/TJ0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToLongFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/UJ0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/UJ0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->k(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/JS;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/tools/r8/internal/JS;->c:J

    return-wide v0
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/JS;)[S
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/internal/JS;->d:[S

    return-object p0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final R()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/YS;Lcom/android/tools/r8/internal/pf;)I
    .locals 0

    .line 3
    check-cast p1, Lcom/android/tools/r8/internal/JS;

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    .line 2
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/RJ0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/RJ0;-><init>()V

    return-object v0
.end method
