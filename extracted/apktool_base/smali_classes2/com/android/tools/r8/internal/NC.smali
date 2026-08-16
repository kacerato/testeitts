.class public final Lcom/android/tools/r8/internal/NC;
.super Lcom/android/tools/r8/internal/PC;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/PC;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/PC;-><init>(Lcom/android/tools/r8/internal/PC;)V

    iget p1, p0, Lcom/android/tools/r8/internal/PC;->b:I

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Lcom/android/tools/r8/internal/tV;->a(I)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/NC;->c:Ljava/util/HashSet;

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/PC;->b:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/NC;->c:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/tools/r8/internal/PC;->a:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/PC;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/NC;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/PC;->b(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/internal/QC;
    .locals 4

    .line 4
    iget v0, p0, Lcom/android/tools/r8/internal/PC;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/VK;

    iget-object v1, p0, Lcom/android/tools/r8/internal/NC;->c:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/tools/r8/internal/PC;->a:[Ljava/lang/Object;

    iget v3, p0, Lcom/android/tools/r8/internal/PC;->b:I

    .line 6
    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/VK;-><init>(Ljava/util/HashSet;Lcom/android/tools/r8/internal/hC;)V

    return-object v0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/PC;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lcom/android/tools/r8/internal/QC;->c:I

    .line 8
    new-instance v1, Lcom/android/tools/r8/internal/Tm0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Tm0;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 9
    :cond_1
    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    .line 10
    sget-object v0, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    return-object v0
.end method

.method public final b()Lcom/android/tools/r8/internal/PC;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/NC;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/NC;-><init>(Lcom/android/tools/r8/internal/PC;)V

    return-object v0
.end method
