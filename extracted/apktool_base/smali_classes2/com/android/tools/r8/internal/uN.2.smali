.class public final Lcom/android/tools/r8/internal/uN;
.super Lcom/android/tools/r8/internal/zN;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/xN;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/xN;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/zN;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/uN;->b:Lcom/android/tools/r8/internal/xN;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraints;)V
    .locals 0

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraints;->getConstraintsList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/QC;
    .locals 2

    .line 1
    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 3
    sget-object v1, Lcom/android/tools/r8/internal/yN;->c:Lcom/android/tools/r8/internal/yN;

    .line 4
    iget-object v1, v1, Lcom/android/tools/r8/internal/yN;->b:Lcom/android/tools/r8/internal/QC;

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/WB;->a(Ljava/lang/Iterable;)V

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/uN;->b:Lcom/android/tools/r8/internal/xN;

    .line 7
    iget-object v1, v1, Lcom/android/tools/r8/internal/xN;->b:Lcom/android/tools/r8/internal/QC;

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/WB;->a(Ljava/lang/Iterable;)V

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/cP;)Lcom/android/tools/r8/internal/cP;
    .locals 7

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/uN;->b:Lcom/android/tools/r8/internal/xN;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/xN;->a(Lcom/android/tools/r8/internal/cP;)Lcom/android/tools/r8/internal/cP;

    move-result-object v0

    .line 11
    sget-object v1, Lcom/android/tools/r8/internal/cP;->b:Lcom/android/tools/r8/internal/cP;

    .line 12
    new-instance v1, Lcom/android/tools/r8/internal/aP;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/aP;-><init>(Z)V

    .line 13
    sget-object v3, Lcom/android/tools/r8/internal/bP;->h:[Lcom/android/tools/r8/internal/bP;

    invoke-virtual {v3}, [Lcom/android/tools/r8/internal/bP;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/tools/r8/internal/bP;

    .line 14
    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 15
    iget-object v6, v0, Lcom/android/tools/r8/internal/cP;->a:Lcom/android/tools/r8/internal/QC;

    .line 16
    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/XB;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 17
    iget-object v6, p1, Lcom/android/tools/r8/internal/cP;->a:Lcom/android/tools/r8/internal/QC;

    .line 18
    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/XB;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 19
    :cond_0
    iget-object v6, v1, Lcom/android/tools/r8/internal/aP;->b:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/aP;->a()Lcom/android/tools/r8/internal/cP;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 1

    .line 21
    iget-object p1, p0, Lcom/android/tools/r8/internal/uN;->b:Lcom/android/tools/r8/internal/xN;

    new-instance v0, Lcom/android/tools/r8/internal/Cu1;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/Cu1;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/internal/xN;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/uN;->b:Lcom/android/tools/r8/internal/xN;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xN;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
