.class public final Lcom/android/tools/r8/internal/nU;
.super Lcom/android/tools/r8/internal/oU;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Hz;Ljava/util/function/IntFunction;Ljava/util/function/IntFunction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/oU;-><init>(Lcom/android/tools/r8/internal/Hz;Ljava/util/function/IntFunction;Ljava/util/function/IntFunction;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/nU;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/nU;

    new-instance v1, Lcom/android/tools/r8/internal/EZ0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/EZ0;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/Tm1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Tm1;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/android/tools/r8/internal/nU;-><init>(Lcom/android/tools/r8/internal/Hz;Ljava/util/function/IntFunction;Ljava/util/function/IntFunction;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;)Ljava/util/Set;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/oU;->a:Ljava/util/function/IntFunction;

    iget-object v1, p0, Lcom/android/tools/r8/internal/oU;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/oU;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/oU;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v3, v4, v2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 5
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    sget-boolean v3, Lcom/android/tools/r8/internal/nU;->f:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find definition for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    return-object v0
.end method
