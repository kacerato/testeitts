.class public final Lcom/android/tools/r8/graph/S0;
.super Lcom/android/tools/r8/graph/O0;
.source "SourceFile"


# instance fields
.field public final d:Lcom/android/tools/r8/internal/B60;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/B60;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/O0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/S0;->d:Lcom/android/tools/r8/internal/B60;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/S0;)Lcom/android/tools/r8/internal/B60;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/tools/r8/graph/S0;->d:Lcom/android/tools/r8/internal/B60;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/graph/Oa;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Oa;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->j(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/graph/O0;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/O0;->a(Lcom/android/tools/r8/graph/O0;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/V0;)V
    .locals 0

    .line 4
    invoke-interface {p1, p0}, Lcom/android/tools/r8/graph/V0;->a(Lcom/android/tools/r8/graph/S0;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/O0;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    check-cast p1, Lcom/android/tools/r8/graph/S0;

    new-instance v0, Lcom/android/tools/r8/graph/Na;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Na;-><init>()V

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/graph/Na;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Na;-><init>()V

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    new-instance v1, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/S0;->d:Lcom/android/tools/r8/internal/B60;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public final m0()Lcom/android/tools/r8/graph/S0;
    .locals 0

    return-object p0
.end method

.method public final n0()I
    .locals 1

    const/16 v0, 0x100

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/S0;->d:Lcom/android/tools/r8/internal/B60;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SET_POSITION_FRAME %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
