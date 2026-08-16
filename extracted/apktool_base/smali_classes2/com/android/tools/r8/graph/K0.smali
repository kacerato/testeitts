.class public Lcom/android/tools/r8/graph/K0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Z

.field public final d:Z

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/tools/r8/graph/j0;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/android/tools/r8/internal/B60;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ZIZZLcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/B60;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/tools/r8/graph/K0;->a:Z

    iput p2, p0, Lcom/android/tools/r8/graph/K0;->b:I

    iput-boolean p3, p0, Lcom/android/tools/r8/graph/K0;->c:Z

    iput-boolean p4, p0, Lcom/android/tools/r8/graph/K0;->d:Z

    iput-object p5, p0, Lcom/android/tools/r8/graph/K0;->e:Ljava/util/Map;

    iput-object p6, p0, Lcom/android/tools/r8/graph/K0;->f:Lcom/android/tools/r8/internal/B60;

    sget-boolean p1, Lcom/android/tools/r8/graph/K0;->g:Z

    if-nez p1, :cond_1

    if-eqz p6, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/graph/K0;->f:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v0

    return v0
.end method

.method public final a(Z)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    const-string p1, "pc "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    iget p1, p0, Lcom/android/tools/r8/graph/K0;->b:I

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/zq0;->a(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/graph/K0;->f:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5
    iget-boolean v1, p0, Lcom/android/tools/r8/graph/K0;->c:Z

    if-eqz v1, :cond_1

    .line 6
    const-string v1, ", prologue_end = true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    iget-boolean v1, p0, Lcom/android/tools/r8/graph/K0;->d:Z

    if-eqz v1, :cond_2

    .line 8
    const-string v1, ", epilogue_begin = true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/graph/K0;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 10
    const-string v1, ", locals: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    new-instance v1, Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/android/tools/r8/graph/K0;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 12
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/tools/r8/graph/K0;->e:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 15
    :cond_4
    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/android/tools/r8/internal/B60;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/K0;->f:Lcom/android/tools/r8/internal/B60;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/K0;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
