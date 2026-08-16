.class public final Lcom/android/tools/r8/internal/Sd;
.super Lcom/android/tools/r8/internal/Ud;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Ud;

.field public final c:Lcom/android/tools/r8/internal/QC;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/V;Lcom/android/tools/r8/internal/Ud;Lcom/android/tools/r8/internal/QC;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Ud;-><init>(Lcom/android/tools/r8/graph/V;)V

    sget-boolean p1, Lcom/android/tools/r8/internal/Sd;->d:Z

    if-nez p1, :cond_1

    instance-of p1, p2, Lcom/android/tools/r8/internal/Sd;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Nested Filtering class providers"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/tools/r8/internal/Sd;->b:Lcom/android/tools/r8/internal/Ud;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Sd;->c:Lcom/android/tools/r8/internal/QC;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Tm0;)Lcom/android/tools/r8/internal/Sd;
    .locals 3

    .line 1
    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/Sd;->c:Lcom/android/tools/r8/internal/QC;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/WB;->a(Ljava/lang/Iterable;)V

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Tm0;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/internal/EK;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EK;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EK;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/IC;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/WB;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/Sd;

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ud;->a:Lcom/android/tools/r8/graph/V;

    .line 10
    iget-object v2, p0, Lcom/android/tools/r8/internal/Sd;->b:Lcom/android/tools/r8/internal/Ud;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Sd;-><init>(Lcom/android/tools/r8/graph/V;Lcom/android/tools/r8/internal/Ud;Lcom/android/tools/r8/internal/QC;)V

    return-object v0
.end method

.method public final a()Ljava/util/Collection;
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/Sd;->b:Lcom/android/tools/r8/internal/Ud;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ud;->a()Ljava/util/Collection;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/internal/Sd;->c:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/Sd;->c:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Sd;->b:Lcom/android/tools/r8/internal/Ud;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/Ud;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sd;->b:Lcom/android/tools/r8/internal/Ud;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sd;->c:Lcom/android/tools/r8/internal/QC;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " without "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
