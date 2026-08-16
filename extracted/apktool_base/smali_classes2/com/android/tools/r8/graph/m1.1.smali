.class public final Lcom/android/tools/r8/graph/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# instance fields
.field public final b:Lcom/android/tools/r8/graph/L2;

.field public final c:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/m1;->b:Lcom/android/tools/r8/graph/L2;

    iput-object p2, p0, Lcom/android/tools/r8/graph/m1;->c:Lcom/android/tools/r8/graph/M2;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/Oe;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Oe;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/Pe;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Pe;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/graph/L2;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/m1;->b:Lcom/android/tools/r8/graph/L2;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/m1;)Z
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/m1;->b:Lcom/android/tools/r8/graph/L2;

    .line 5
    iget-object v1, p1, Lcom/android/tools/r8/graph/m1;->b:Lcom/android/tools/r8/graph/L2;

    if-ne v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/graph/m1;->c:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/m1;->c:Lcom/android/tools/r8/graph/M2;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/C40;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/graph/m1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/m1;->a(Lcom/android/tools/r8/graph/m1;)Z

    move-result p1

    return p1
.end method

.method public final b()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/m1;->c:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/m1;->b:Lcom/android/tools/r8/graph/L2;

    iget-object v1, p0, Lcom/android/tools/r8/graph/m1;->c:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic isEqualTo(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/tools/r8/graph/m1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/m1;->a(Lcom/android/tools/r8/graph/m1;)Z

    move-result p1

    return p1
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/Ne;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Ne;-><init>()V

    return-object v0
.end method
