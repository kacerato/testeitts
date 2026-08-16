.class public final Lcom/android/tools/r8/dex/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/dex/p0;

.field public final b:Ljava/util/IdentityHashMap;

.field public final c:Lcom/android/tools/r8/graph/u1;

.field public final d:Lcom/android/tools/r8/internal/nJ;

.field public final e:Lcom/android/tools/r8/dex/r0;

.field public final f:Lcom/android/tools/r8/internal/qo0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/qo0;Lcom/android/tools/r8/internal/IH;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p4, p5, p6}, Lcom/android/tools/r8/dex/p0;->a(Ljava/util/Collection;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/qo0;)Lcom/android/tools/r8/dex/p0;

    move-result-object p4

    iput-object p4, p0, Lcom/android/tools/r8/dex/q0;->a:Lcom/android/tools/r8/dex/p0;

    iput-object p5, p0, Lcom/android/tools/r8/dex/q0;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p4

    iput-object p4, p0, Lcom/android/tools/r8/dex/q0;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p4

    iput-object p4, p0, Lcom/android/tools/r8/dex/q0;->d:Lcom/android/tools/r8/internal/nJ;

    new-instance p4, Lcom/android/tools/r8/dex/r0;

    invoke-direct {p4, p1, p2, p3, p7}, Lcom/android/tools/r8/dex/r0;-><init>(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/IH;)V

    iput-object p4, p0, Lcom/android/tools/r8/dex/q0;->e:Lcom/android/tools/r8/dex/r0;

    iput-object p6, p0, Lcom/android/tools/r8/dex/q0;->f:Lcom/android/tools/r8/internal/qo0;

    return-void
.end method

.method public static a(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    if-ge v2, p0, :cond_0

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x2e

    .line 124
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    move v3, v1

    move v1, v2

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v4

    .line 125
    :cond_1
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_2

    if-lt v2, p0, :cond_2

    .line 126
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".*"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/dex/t0;Lcom/android/tools/r8/internal/nJ;)Z
    .locals 2

    .line 127
    iget-object v0, p1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget v0, v0, Lcom/android/tools/r8/internal/nJ$p;->Y0:I

    if-lez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    .line 129
    iget-object v1, v0, Lcom/android/tools/r8/dex/n0;->d:Ljava/util/LinkedHashSet;

    .line 130
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v0, v0, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 131
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget p1, p1, Lcom/android/tools/r8/internal/nJ$p;->Y0:I

    if-le v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/high16 p1, 0x10000

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/dex/t0;->a(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/dex/r0;)Lcom/android/tools/r8/dex/t0;
    .locals 8

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p1, Lcom/android/tools/r8/dex/r0;->f:Lcom/android/tools/r8/internal/DK;

    .line 2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/DK;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p1, Lcom/android/tools/r8/dex/r0;->f:Lcom/android/tools/r8/internal/DK;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DK;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/dex/t0;

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/dex/q0;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v1}, Lcom/android/tools/r8/dex/q0;->a(Lcom/android/tools/r8/dex/t0;Lcom/android/tools/r8/internal/nJ;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/dex/q0;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v1}, Lcom/android/tools/r8/dex/q0;->a(Lcom/android/tools/r8/dex/t0;Lcom/android/tools/r8/internal/nJ;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    .line 6
    :cond_2
    :goto_1
    new-instance v0, Lcom/android/tools/r8/dex/t0;

    iget-object v1, p1, Lcom/android/tools/r8/dex/r0;->d:Lcom/android/tools/r8/internal/IH;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IH;->b()I

    move-result v3

    iget-object v4, p1, Lcom/android/tools/r8/dex/r0;->c:Lcom/android/tools/r8/graph/y;

    iget-object v6, p1, Lcom/android/tools/r8/dex/r0;->g:Lcom/android/tools/r8/FeatureSplit;

    .line 7
    invoke-static {}, Lcom/android/tools/r8/internal/qo0;->b()Lcom/android/tools/r8/internal/qo0;

    move-result-object v7

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/dex/t0;-><init>(ILcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/FeatureSplit;Lcom/android/tools/r8/internal/qo0;)V

    .line 8
    iget-object v1, p1, Lcom/android/tools/r8/dex/r0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p1, Lcom/android/tools/r8/dex/r0;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v1, p1, Lcom/android/tools/r8/dex/r0;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/ArrayList;)Lcom/android/tools/r8/internal/zK;

    move-result-object v1

    iput-object v1, p1, Lcom/android/tools/r8/dex/r0;->e:Lcom/android/tools/r8/internal/zK;

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/dex/r0;->a()V

    return-object v0
.end method

.method public final a()V
    .locals 5

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/dex/q0;->a:Lcom/android/tools/r8/dex/p0;

    .line 13
    iget-object v0, v0, Lcom/android/tools/r8/dex/p0;->a:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 15
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/dex/q0;->g:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/dex/q0;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->E()Lcom/android/tools/r8/internal/po0;

    move-result-object v0

    .line 16
    iget-object v0, v0, Lcom/android/tools/r8/internal/po0;->h:Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 17
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 19
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/q0;->e:Lcom/android/tools/r8/dex/r0;

    .line 20
    iget-object v0, v0, Lcom/android/tools/r8/dex/r0;->f:Lcom/android/tools/r8/internal/DK;

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DK;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/dex/t0;

    .line 22
    iget-object v1, p0, Lcom/android/tools/r8/dex/q0;->a:Lcom/android/tools/r8/dex/p0;

    .line 23
    iget-object v1, v1, Lcom/android/tools/r8/dex/p0;->a:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/graph/H2;

    .line 25
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/dex/t0;->a(Lcom/android/tools/r8/graph/H2;)V

    goto :goto_1

    .line 26
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/dex/q0;->d:Lcom/android/tools/r8/internal/nJ;

    .line 27
    invoke-static {v0, v1}, Lcom/android/tools/r8/dex/q0;->a(Lcom/android/tools/r8/dex/t0;Lcom/android/tools/r8/internal/nJ;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 28
    iget-object v2, v0, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    invoke-virtual {v2}, Lcom/android/tools/r8/dex/n0;->a()V

    const/4 v2, 0x1

    .line 29
    iput-boolean v2, v0, Lcom/android/tools/r8/dex/t0;->h:Z

    goto :goto_2

    .line 30
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/dex/t0;->a()V

    .line 31
    iget-object v2, p0, Lcom/android/tools/r8/dex/q0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object v3, p0, Lcom/android/tools/r8/dex/q0;->f:Lcom/android/tools/r8/internal/qo0;

    .line 32
    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/EY;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/qo0;)Lcom/android/tools/r8/internal/EY;

    move-result-object v2

    .line 33
    iget-object v3, p0, Lcom/android/tools/r8/dex/q0;->a:Lcom/android/tools/r8/dex/p0;

    .line 34
    iget-object v3, v3, Lcom/android/tools/r8/dex/p0;->a:Ljava/util/ArrayList;

    .line 35
    iget-object v4, p0, Lcom/android/tools/r8/dex/q0;->e:Lcom/android/tools/r8/dex/r0;

    invoke-virtual {v2, v3, p0, v0, v4}, Lcom/android/tools/r8/internal/EY;->a(Ljava/util/ArrayList;Lcom/android/tools/r8/dex/q0;Lcom/android/tools/r8/dex/t0;Lcom/android/tools/r8/dex/r0;)V

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/dex/q0;->e:Lcom/android/tools/r8/dex/r0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/r0;->b:Ljava/util/ArrayList;

    new-instance v2, Lu/F1;

    invoke-direct {v2}, Lu/F1;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 37
    iget-object v0, p0, Lcom/android/tools/r8/dex/q0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    iget-object v2, p0, Lcom/android/tools/r8/dex/q0;->e:Lcom/android/tools/r8/dex/r0;

    iget-object v2, v2, Lcom/android/tools/r8/dex/r0;->b:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/errors/g;->a(I)Lcom/android/tools/r8/errors/StartupClassesOverflowDiagnostic;

    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    .line 40
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/dex/q0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    iget-object v2, p0, Lcom/android/tools/r8/dex/q0;->a:Lcom/android/tools/r8/dex/p0;

    .line 41
    iget-object v2, v2, Lcom/android/tools/r8/dex/p0;->a:Ljava/util/ArrayList;

    .line 42
    iget-object v3, p0, Lcom/android/tools/r8/dex/q0;->f:Lcom/android/tools/r8/internal/qo0;

    .line 43
    invoke-static {v2, v3}, Lcom/android/tools/r8/errors/f;->a(Ljava/util/ArrayList;Lcom/android/tools/r8/internal/qo0;)Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;

    move-result-object v2

    .line 44
    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v3, Lcom/android/tools/r8/DiagnosticsLevel;->INFO:Lcom/android/tools/r8/DiagnosticsLevel;

    invoke-virtual {v0, v3, v2}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/dex/q0;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->E()Lcom/android/tools/r8/internal/po0;

    move-result-object v0

    .line 48
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/po0;->b:Z

    if-eqz v0, :cond_6

    .line 49
    iget-object v0, p0, Lcom/android/tools/r8/dex/q0;->e:Lcom/android/tools/r8/dex/r0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/r0;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/dex/t0;

    .line 50
    iget-object v2, p0, Lcom/android/tools/r8/dex/q0;->e:Lcom/android/tools/r8/dex/r0;

    .line 51
    iget-object v3, v2, Lcom/android/tools/r8/dex/r0;->b:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 53
    iget-object v3, v2, Lcom/android/tools/r8/dex/r0;->b:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/ArrayList;)Lcom/android/tools/r8/internal/zK;

    move-result-object v3

    iput-object v3, v2, Lcom/android/tools/r8/dex/r0;->e:Lcom/android/tools/r8/internal/zK;

    .line 54
    invoke-virtual {v2}, Lcom/android/tools/r8/dex/r0;->a()V

    if-eqz v1, :cond_5

    .line 55
    iget-object v1, p0, Lcom/android/tools/r8/dex/q0;->e:Lcom/android/tools/r8/dex/r0;

    .line 56
    iget-object v2, v1, Lcom/android/tools/r8/dex/r0;->b:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, v1, Lcom/android/tools/r8/dex/r0;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/ArrayList;)Lcom/android/tools/r8/internal/zK;

    move-result-object v0

    iput-object v0, v1, Lcom/android/tools/r8/dex/r0;->e:Lcom/android/tools/r8/internal/zK;

    .line 59
    invoke-virtual {v1}, Lcom/android/tools/r8/dex/r0;->a()V

    :cond_5
    :goto_3
    return-void

    .line 60
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/dex/q0;->e:Lcom/android/tools/r8/dex/r0;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/r0;->a()V

    return-void

    :catchall_0
    move-exception v1

    .line 61
    monitor-exit v0

    throw v1
.end method

.method public final a(Lcom/android/tools/r8/dex/r0;Ljava/util/ArrayList;)V
    .locals 6

    .line 133
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 134
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/dex/r0;->a()V

    .line 135
    iget-object v0, p1, Lcom/android/tools/r8/dex/r0;->f:Lcom/android/tools/r8/internal/DK;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DK;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/dex/t0;

    .line 136
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    const/high16 v4, 0x10000

    .line 137
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/dex/t0;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/dex/q0;->a(Lcom/android/tools/r8/dex/r0;)Lcom/android/tools/r8/dex/t0;

    move-result-object v0

    .line 139
    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/dex/t0;->a(Lcom/android/tools/r8/graph/H2;)V

    .line 140
    :cond_2
    :goto_1
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/dex/t0;->a(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 141
    invoke-virtual {v0}, Lcom/android/tools/r8/dex/t0;->a()V

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/dex/q0;->a(Lcom/android/tools/r8/dex/r0;)Lcom/android/tools/r8/dex/t0;

    move-result-object v0

    .line 143
    iget-object v5, v0, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v5, v5, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    .line 144
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/dex/t0;->a(Lcom/android/tools/r8/graph/H2;)V

    if-eqz v5, :cond_2

    .line 145
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/dex/t0;->a(I)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 146
    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/bJ;

    .line 147
    iget-object p2, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->toString()Ljava/lang/String;

    move-result-object p2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not fit into a single dex file."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/bJ;-><init>(Ljava/lang/String;)V

    throw p1

    .line 149
    :cond_4
    iget-object v3, v0, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    invoke-virtual {v3}, Lcom/android/tools/r8/dex/n0;->a()V

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 62
    new-instance v2, Lcom/android/tools/r8/internal/u20;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/u20;-><init>()V

    .line 63
    iget-object v3, v0, Lcom/android/tools/r8/dex/q0;->e:Lcom/android/tools/r8/dex/r0;

    .line 64
    iget-object v4, v3, Lcom/android/tools/r8/dex/r0;->b:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    new-instance v4, Lcom/android/tools/r8/dex/t0;

    iget-object v5, v3, Lcom/android/tools/r8/dex/r0;->d:Lcom/android/tools/r8/internal/IH;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/IH;->b()I

    move-result v6

    iget-object v7, v3, Lcom/android/tools/r8/dex/r0;->c:Lcom/android/tools/r8/graph/y;

    iget-object v9, v3, Lcom/android/tools/r8/dex/r0;->g:Lcom/android/tools/r8/FeatureSplit;

    .line 67
    invoke-static {}, Lcom/android/tools/r8/internal/qo0;->b()Lcom/android/tools/r8/internal/qo0;

    move-result-object v10

    const/4 v8, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/tools/r8/dex/t0;-><init>(ILcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/FeatureSplit;Lcom/android/tools/r8/internal/qo0;)V

    .line 68
    iget-object v5, v3, Lcom/android/tools/r8/dex/r0;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v5, v3, Lcom/android/tools/r8/dex/r0;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v4, v3, Lcom/android/tools/r8/dex/r0;->b:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/ArrayList;)Lcom/android/tools/r8/internal/zK;

    move-result-object v4

    iput-object v4, v3, Lcom/android/tools/r8/dex/r0;->e:Lcom/android/tools/r8/internal/zK;

    .line 71
    invoke-virtual {v3}, Lcom/android/tools/r8/dex/r0;->a()V

    .line 72
    :cond_0
    iget-object v3, v3, Lcom/android/tools/r8/dex/r0;->f:Lcom/android/tools/r8/internal/DK;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/DK;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/dex/t0;

    .line 73
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v6

    move v11, v8

    move-object v9, v7

    const/4 v10, 0x4

    .line 74
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_17

    .line 75
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/H2;

    .line 76
    iget-object v13, v0, Lcom/android/tools/r8/dex/q0;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v13, v12}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const/4 v14, 0x1

    if-nez v9, :cond_1

    goto :goto_1

    .line 77
    :cond_1
    const-string v15, ".*"

    invoke-virtual {v9, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 78
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x2

    invoke-virtual {v9, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    goto :goto_2

    .line 79
    :cond_2
    invoke-virtual {v13, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    const/16 v15, 0x2e

    .line 80
    invoke-virtual {v13, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v15, v5, :cond_3

    move v15, v14

    goto :goto_2

    :cond_3
    :goto_1
    move v15, v6

    :goto_2
    if-nez v15, :cond_a

    if-eqz v9, :cond_7

    .line 81
    iget-object v5, v3, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    .line 82
    invoke-virtual {v5}, Lcom/android/tools/r8/dex/n0;->a()V

    .line 83
    sget-boolean v5, Lcom/android/tools/r8/dex/q0;->g:Z

    if-nez v5, :cond_6

    if-nez v5, :cond_5

    .line 84
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/u20;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 85
    :cond_5
    :goto_3
    invoke-virtual {v3}, Lcom/android/tools/r8/dex/t0;->b()I

    move-result v5

    invoke-virtual {v2, v5, v9}, Lcom/android/tools/r8/internal/u20;->b(ILjava/lang/Object;)I

    .line 86
    :cond_6
    iget-object v5, v0, Lcom/android/tools/r8/dex/q0;->e:Lcom/android/tools/r8/dex/r0;

    invoke-virtual {v5}, Lcom/android/tools/r8/dex/r0;->a()V

    const/4 v10, 0x3

    :cond_7
    add-int/2addr v10, v14

    .line 87
    invoke-static {v10, v13, v6}, Lcom/android/tools/r8/dex/q0;->a(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    if-eqz v9, :cond_8

    .line 88
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 89
    :cond_8
    const-string v11, ""

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 90
    invoke-static {v10, v13, v14}, Lcom/android/tools/r8/dex/q0;->a(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    :cond_9
    move v11, v8

    :cond_a
    if-nez v9, :cond_f

    .line 91
    sget-boolean v5, Lcom/android/tools/r8/dex/q0;->g:Z

    if-nez v5, :cond_c

    iget-object v13, v12, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v13, :cond_b

    goto :goto_4

    :cond_b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_c
    :goto_4
    if-nez v5, :cond_e

    .line 92
    iget-object v5, v3, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    invoke-virtual {v5}, Lcom/android/tools/r8/dex/n0;->b()Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_5

    :cond_d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 93
    :cond_e
    :goto_5
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 94
    :cond_f
    sget-boolean v5, Lcom/android/tools/r8/dex/q0;->g:Z

    if-nez v5, :cond_11

    iget-object v5, v12, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-nez v5, :cond_11

    iget-object v5, v12, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v13, v0, Lcom/android/tools/r8/dex/q0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v13, v13, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v5, v13, :cond_10

    goto :goto_6

    :cond_10
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 95
    :cond_11
    :goto_6
    invoke-virtual {v3, v12}, Lcom/android/tools/r8/dex/t0;->a(Lcom/android/tools/r8/graph/H2;)V

    .line 96
    iget-object v5, v0, Lcom/android/tools/r8/dex/q0;->d:Lcom/android/tools/r8/internal/nJ;

    .line 97
    invoke-static {v3, v5}, Lcom/android/tools/r8/dex/q0;->a(Lcom/android/tools/r8/dex/t0;Lcom/android/tools/r8/internal/nJ;)Z

    move-result v5

    if-nez v5, :cond_12

    goto/16 :goto_8

    :cond_12
    sub-int v5, v8, v11

    add-int/2addr v5, v14

    .line 98
    iget-object v9, v3, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    .line 99
    iget-object v12, v9, Lcom/android/tools/r8/dex/n0;->d:Ljava/util/LinkedHashSet;

    .line 100
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v12

    iget-object v9, v9, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v9, v9, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    add-int/2addr v9, v12

    .line 101
    invoke-virtual {v3}, Lcom/android/tools/r8/dex/t0;->a()V

    .line 102
    div-int/lit8 v9, v9, 0x5

    if-le v5, v9, :cond_13

    const/4 v5, 0x7

    if-ge v10, v5, :cond_13

    add-int/lit8 v8, v11, -0x1

    add-int/lit8 v10, v10, 0x1

    move-object v9, v7

    goto :goto_8

    .line 103
    :cond_13
    iget-object v5, v0, Lcom/android/tools/r8/dex/q0;->e:Lcom/android/tools/r8/dex/r0;

    .line 104
    iget-object v5, v5, Lcom/android/tools/r8/dex/r0;->f:Lcom/android/tools/r8/internal/DK;

    .line 105
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/DK;->hasNext()Z

    move-result v5

    if-nez v5, :cond_16

    .line 106
    iget-object v3, v3, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v3, v3, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    :goto_7
    if-gt v11, v8, :cond_14

    .line 107
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_14
    add-int/lit8 v11, v8, 0x1

    .line 108
    :cond_15
    iget-object v3, v0, Lcom/android/tools/r8/dex/q0;->e:Lcom/android/tools/r8/dex/r0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    new-instance v5, Lcom/android/tools/r8/dex/t0;

    iget-object v8, v3, Lcom/android/tools/r8/dex/r0;->d:Lcom/android/tools/r8/internal/IH;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/IH;->b()I

    move-result v17

    iget-object v8, v3, Lcom/android/tools/r8/dex/r0;->c:Lcom/android/tools/r8/graph/y;

    iget-object v9, v3, Lcom/android/tools/r8/dex/r0;->g:Lcom/android/tools/r8/FeatureSplit;

    .line 110
    invoke-static {}, Lcom/android/tools/r8/internal/qo0;->b()Lcom/android/tools/r8/internal/qo0;

    move-result-object v21

    const/16 v19, 0x0

    move-object/from16 v16, v5

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    invoke-direct/range {v16 .. v21}, Lcom/android/tools/r8/dex/t0;-><init>(ILcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/FeatureSplit;Lcom/android/tools/r8/internal/qo0;)V

    .line 111
    iget-object v8, v3, Lcom/android/tools/r8/dex/r0;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v8, v3, Lcom/android/tools/r8/dex/r0;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v5, v3, Lcom/android/tools/r8/dex/r0;->b:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/ArrayList;)Lcom/android/tools/r8/internal/zK;

    move-result-object v5

    iput-object v5, v3, Lcom/android/tools/r8/dex/r0;->e:Lcom/android/tools/r8/internal/zK;

    .line 114
    invoke-virtual {v3}, Lcom/android/tools/r8/dex/r0;->a()V

    :cond_16
    add-int/lit8 v8, v11, -0x1

    .line 115
    iget-object v3, v0, Lcom/android/tools/r8/dex/q0;->e:Lcom/android/tools/r8/dex/r0;

    .line 116
    iget-object v3, v3, Lcom/android/tools/r8/dex/r0;->f:Lcom/android/tools/r8/internal/DK;

    .line 117
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/DK;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/dex/t0;

    move-object v9, v7

    const/4 v10, 0x4

    :goto_8
    add-int/2addr v8, v14

    goto/16 :goto_0

    .line 118
    :cond_17
    iget-object v1, v3, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    .line 119
    invoke-virtual {v1}, Lcom/android/tools/r8/dex/n0;->a()V

    .line 120
    sget-boolean v1, Lcom/android/tools/r8/dex/q0;->g:Z

    if-nez v1, :cond_1a

    if-eqz v9, :cond_1a

    if-nez v1, :cond_19

    .line 121
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/u20;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_9

    :cond_18
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 122
    :cond_19
    :goto_9
    invoke-virtual {v3}, Lcom/android/tools/r8/dex/t0;->b()I

    move-result v1

    invoke-virtual {v2, v1, v9}, Lcom/android/tools/r8/internal/u20;->b(ILjava/lang/Object;)I

    .line 123
    :cond_1a
    iget-object v1, v0, Lcom/android/tools/r8/dex/q0;->e:Lcom/android/tools/r8/dex/r0;

    invoke-virtual {v0, v1, v4}, Lcom/android/tools/r8/dex/q0;->a(Lcom/android/tools/r8/dex/r0;Ljava/util/ArrayList;)V

    return-void
.end method
