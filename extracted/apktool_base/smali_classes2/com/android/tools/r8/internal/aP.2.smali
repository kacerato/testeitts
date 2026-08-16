.class public final Lcom/android/tools/r8/internal/aP;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/aP;->b:Ljava/util/HashSet;

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/aP;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/cP;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/aP;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/aP;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/cP;->b:Lcom/android/tools/r8/internal/cP;

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    const-string v1, "Invalid keep options that disallow nothing."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/aP;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    sget-object v1, Lcom/android/tools/r8/internal/bP;->h:[Lcom/android/tools/r8/internal/bP;

    invoke-virtual {v1}, [Lcom/android/tools/r8/internal/bP;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/tools/r8/internal/bP;

    array-length v2, v2

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/aP;->a:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/tools/r8/internal/cP;->b:Lcom/android/tools/r8/internal/cP;

    return-object v0

    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    const-string v1, "Invalid keep options that allow everything."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/aP;->a:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/tools/r8/internal/cP;

    iget-object v1, p0, Lcom/android/tools/r8/internal/aP;->b:Ljava/util/HashSet;

    invoke-static {v1}, Lcom/android/tools/r8/internal/QC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/QC;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/cP;-><init>(Lcom/android/tools/r8/internal/QC;)V

    return-object v0

    :cond_4
    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    invoke-virtual {v1}, [Lcom/android/tools/r8/internal/bP;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/tools/r8/internal/bP;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/android/tools/r8/internal/aP;->b:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    new-instance v1, Lcom/android/tools/r8/internal/cP;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/cP;-><init>(Lcom/android/tools/r8/internal/QC;)V

    return-object v1
.end method
