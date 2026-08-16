.class public Lcom/android/tools/r8/graph/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/internal/Mq0<",
        "Lcom/android/tools/r8/graph/j0;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic e:I


# instance fields
.field public final b:Lcom/android/tools/r8/graph/L2;

.field public final c:Lcom/android/tools/r8/graph/M2;

.field public final d:Lcom/android/tools/r8/graph/L2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/j0;->b:Lcom/android/tools/r8/graph/L2;

    iput-object p2, p0, Lcom/android/tools/r8/graph/j0;->c:Lcom/android/tools/r8/graph/M2;

    iput-object p3, p0, Lcom/android/tools/r8/graph/j0;->d:Lcom/android/tools/r8/graph/L2;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/graph/L2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/j0;->b:Lcom/android/tools/r8/graph/L2;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/Kd;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Kd;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/Ld;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Ld;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/Md;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Md;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->j(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    return v1

    .line 5
    :cond_2
    invoke-interface {p0}, Lcom/android/tools/r8/internal/SG;->keySet()Lcom/android/tools/r8/internal/nI;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {p1}, Lcom/android/tools/r8/internal/SG;->keySet()Lcom/android/tools/r8/internal/nI;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    .line 6
    :cond_3
    invoke-interface {p0}, Lcom/android/tools/r8/internal/SG;->keySet()Lcom/android/tools/r8/internal/nI;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/tools/r8/internal/nI;->iterator()Lcom/android/tools/r8/internal/PH;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 7
    invoke-interface {p0, v3}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j0;

    invoke-interface {p1, v3}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/j0;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_5
    return v0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/graph/j0;->c:Lcom/android/tools/r8/graph/M2;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/graph/L2;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/graph/j0;->d:Lcom/android/tools/r8/graph/L2;

    return-object p0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 2

    .line 8
    invoke-static {p1}, Lcom/android/tools/r8/c;->b(I)I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 9
    iget-object p1, p0, Lcom/android/tools/r8/graph/j0;->b:Lcom/android/tools/r8/graph/L2;

    iget-object v0, p0, Lcom/android/tools/r8/graph/j0;->d:Lcom/android/tools/r8/graph/L2;

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/graph/j0;->c:Lcom/android/tools/r8/graph/M2;

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 12
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/graph/j0;->b:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 14
    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/graph/j0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/graph/j0;

    iget-object v1, p0, Lcom/android/tools/r8/graph/j0;->b:Lcom/android/tools/r8/graph/L2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/j0;->b:Lcom/android/tools/r8/graph/L2;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/graph/j0;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/j0;->c:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/graph/j0;->d:Lcom/android/tools/r8/graph/L2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/j0;->d:Lcom/android/tools/r8/graph/L2;

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/j0;->b:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lcom/android/tools/r8/graph/j0;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/tools/r8/graph/j0;->d:Lcom/android/tools/r8/graph/L2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0

    :cond_0
    return v1
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/Jd;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Jd;-><init>()V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/j0;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
