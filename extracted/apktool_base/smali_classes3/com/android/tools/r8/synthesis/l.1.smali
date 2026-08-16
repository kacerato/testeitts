.class public final Lcom/android/tools/r8/synthesis/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/M2;

.field public final c:Lcom/android/tools/r8/graph/M2;

.field public final d:Lcom/android/tools/r8/origin/Origin;

.field public final e:Lcom/android/tools/r8/FeatureSplit;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/FeatureSplit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/l;->c:Lcom/android/tools/r8/graph/M2;

    iput-object p3, p0, Lcom/android/tools/r8/synthesis/l;->d:Lcom/android/tools/r8/origin/Origin;

    iput-object p4, p0, Lcom/android/tools/r8/synthesis/l;->e:Lcom/android/tools/r8/FeatureSplit;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/f0;)Lcom/android/tools/r8/synthesis/l;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/tools/r8/synthesis/l;

    .line 2
    move-object v1, p0

    check-cast v1, Lcom/android/tools/r8/graph/b1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 4
    check-cast p0, Lcom/android/tools/r8/graph/E0;

    .line 5
    iget-object p0, p0, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 6
    sget-object v3, Lcom/android/tools/r8/FeatureSplit;->BASE:Lcom/android/tools/r8/FeatureSplit;

    invoke-direct {v0, v2, v1, p0, v3}, Lcom/android/tools/r8/synthesis/l;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/FeatureSplit;)V

    return-object v0
.end method

.method public static synthetic b(Lcom/android/tools/r8/synthesis/l;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/l;->c:Lcom/android/tools/r8/graph/M2;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/synthesis/l;)I
    .locals 2

    .line 7
    new-instance v0, Lcom/android/tools/r8/synthesis/e1;

    invoke-direct {v0}, Lcom/android/tools/r8/synthesis/e1;-><init>()V

    .line 8
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/synthesis/f1;

    invoke-direct {v1}, Lcom/android/tools/r8/synthesis/f1;-><init>()V

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    .line 10
    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final a()Lcom/android/tools/r8/FeatureSplit;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/l;->e:Lcom/android/tools/r8/FeatureSplit;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)V
    .locals 4

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 14
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/xU;->a:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/synthesis/l;->f:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/zm;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_1
    return-void

    .line 20
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    .line 21
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/Bl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/Bl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object p1

    .line 30
    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/tools/r8/synthesis/l;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/synthesis/l;->a(Lcom/android/tools/r8/synthesis/l;)I

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/l;->e:Lcom/android/tools/r8/FeatureSplit;

    invoke-virtual {v1}, Lcom/android/tools/r8/FeatureSplit;->isBase()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/l;->e:Lcom/android/tools/r8/FeatureSplit;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", feature:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SynthesizingContext{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
