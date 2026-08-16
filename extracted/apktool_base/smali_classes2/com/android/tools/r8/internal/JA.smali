.class public Lcom/android/tools/r8/internal/JA;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/M2;

.field public final b:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/JA;->a:Lcom/android/tools/r8/graph/M2;

    iput-object p2, p0, Lcom/android/tools/r8/internal/JA;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/internal/JA;)Lcom/android/tools/r8/internal/JA;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/JA;->a:Lcom/android/tools/r8/graph/M2;

    .line 4
    iget-object v1, p1, Lcom/android/tools/r8/internal/JA;->a:Lcom/android/tools/r8/graph/M2;

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/JA;->b:Ljava/util/Set;

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/WB;->a(Ljava/lang/Iterable;)V

    .line 10
    iget-object p1, p1, Lcom/android/tools/r8/internal/JA;->b:Ljava/util/Set;

    .line 11
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/WB;->a(Ljava/lang/Iterable;)V

    .line 12
    new-instance p1, Lcom/android/tools/r8/internal/JA;

    iget-object v1, p0, Lcom/android/tools/r8/internal/JA;->a:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/android/tools/r8/internal/JA;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V

    return-object p1

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Emulated interface descriptor can only be merged on the same rewritten type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/tools/r8/internal/JA;->b:Ljava/util/Set;

    .line 2
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/tools/r8/internal/JA;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/JA;

    iget-object v0, p0, Lcom/android/tools/r8/internal/JA;->a:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p1, Lcom/android/tools/r8/internal/JA;->a:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/JA;->b:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/tools/r8/internal/JA;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/JA;->a:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lcom/android/tools/r8/internal/JA;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
