.class public final Lcom/android/tools/r8/internal/em;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/X9;


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/internal/QC;

.field public final d:Ljava/util/Set;

.field public final e:Lcom/android/tools/r8/internal/Cm;

.field public final f:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/QC;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/em;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/em;->c:Lcom/android/tools/r8/internal/QC;

    iput-object p3, p0, Lcom/android/tools/r8/internal/em;->d:Ljava/util/Set;

    new-instance p2, Lcom/android/tools/r8/internal/Cm;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Cm;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/em;->e:Lcom/android/tools/r8/internal/Cm;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ$p;->A0:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/tools/r8/internal/Al0;->a()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/em;->f:Ljava/util/Set;

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/internal/em;->f:Ljava/util/Set;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/A2;
    .locals 6

    .line 60
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    .line 61
    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 62
    invoke-virtual {v0}, [Lcom/android/tools/r8/graph/M2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/graph/M2;

    .line 63
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v1

    .line 64
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/M2;

    .line 65
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 66
    invoke-static {p2, v4}, Lcom/android/tools/r8/internal/em;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    aput-object v4, v0, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    invoke-static {p2, v2}, Lcom/android/tools/r8/internal/em;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 70
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 71
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object p0, p0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p2, p1, v0, p0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 4

    .line 80
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$-vivified-$."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    monitor-enter v0

    .line 83
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->d(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;)V

    .line 85
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object p0

    .line 89
    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    return-object v1

    :catchall_0
    move-exception p0

    .line 90
    monitor-exit v0

    throw p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->R:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Ljava/util/Set;Ljava/lang/String;Lcom/android/tools/r8/graph/y;)V
    .locals 3

    .line 72
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->A0:Z

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tracked "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "desugared API conversions: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 76
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance p2, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    .line 79
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Cm;Lcom/android/tools/r8/graph/y;)Z
    .locals 0

    .line 53
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Cm;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 54
    iget-object p1, p2, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 55
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p1

    .line 56
    new-instance p2, Lcom/android/tools/r8/internal/y91;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/y91;-><init>()V

    invoke-virtual {p1, p0, p2}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/I;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/X9;)Z
    .locals 0

    .line 59
    invoke-interface {p2, p1, p0}, Lcom/android/tools/r8/internal/X9;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/am;->a()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;
    .locals 5

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p2

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/em;->e:Lcom/android/tools/r8/internal/Cm;

    iget-object v2, p0, Lcom/android/tools/r8/internal/em;->b:Lcom/android/tools/r8/graph/y;

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/em;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Cm;Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/em;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->o3:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 7
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/tools/r8/internal/em;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v2

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/ga;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    iget-object v3, p0, Lcom/android/tools/r8/internal/em;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    invoke-virtual {v2, v1, v4, v3, v2}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;

    move-result-object v1

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_4

    goto/16 :goto_2

    .line 15
    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/android/tools/r8/internal/em;->b:Lcom/android/tools/r8/graph/y;

    .line 17
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    .line 18
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v3

    .line 19
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v3

    .line 20
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 21
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_2

    .line 22
    :cond_5
    iget-object v3, p0, Lcom/android/tools/r8/internal/em;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 23
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_2

    .line 24
    :cond_6
    iget-object v2, p0, Lcom/android/tools/r8/internal/em;->d:Ljava/util/Set;

    .line 25
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    .line 26
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    .line 27
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    .line 28
    :cond_7
    iget-object v2, p0, Lcom/android/tools/r8/internal/em;->b:Lcom/android/tools/r8/graph/y;

    .line 29
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v2

    .line 30
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 31
    iget-object v3, p0, Lcom/android/tools/r8/internal/em;->b:Lcom/android/tools/r8/graph/y;

    .line 32
    invoke-static {v3}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object v3

    .line 33
    iget-object v3, v3, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 34
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/CU;->g()Ljava/util/Map;

    move-result-object v3

    .line 35
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    .line 36
    :cond_8
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/em;->a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    .line 37
    :cond_9
    iget-object v0, p0, Lcom/android/tools/r8/internal/em;->b:Lcom/android/tools/r8/graph/y;

    .line 38
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xU;->g()Ljava/util/Map;

    move-result-object v0

    .line 42
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_3

    .line 43
    :cond_a
    iget-object v0, p0, Lcom/android/tools/r8/internal/em;->b:Lcom/android/tools/r8/graph/y;

    .line 44
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v0

    .line 47
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/I2;)Z

    move-result v0

    goto :goto_3

    :cond_b
    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_c

    .line 49
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 50
    :cond_c
    new-instance v0, Lcom/android/tools/r8/internal/z91;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/tools/r8/internal/z91;-><init>(Lcom/android/tools/r8/internal/em;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;)V

    .line 51
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 52
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 8

    move-object v0, p0

    move-object v2, p1

    .line 91
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 92
    iget-object v3, v0, Lcom/android/tools/r8/internal/em;->f:Ljava/util/Set;

    if-eqz v3, :cond_0

    .line 93
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/em;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ$p;->g:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    goto :goto_2

    .line 95
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/ga;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 96
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iget-object v4, v0, Lcom/android/tools/r8/internal/em;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 97
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 98
    iget-object v4, v0, Lcom/android/tools/r8/internal/em;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v4

    .line 99
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/internal/ga;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 100
    iget-object v5, v0, Lcom/android/tools/r8/internal/em;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v6

    invoke-virtual {v4, v1, v6, v5, v4}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;

    move-result-object v1

    goto :goto_0

    .line 102
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object v1

    .line 104
    :goto_0
    sget-boolean v4, Lcom/android/tools/r8/internal/em;->g:Z

    if-nez v4, :cond_6

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 105
    :cond_6
    :goto_1
    iget-object v4, v0, Lcom/android/tools/r8/internal/em;->b:Lcom/android/tools/r8/graph/y;

    .line 106
    invoke-static {v4}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object v4

    .line 107
    iget-object v4, v4, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 108
    iget-object v4, v4, Lcom/android/tools/r8/internal/CU;->p:Lcom/android/tools/r8/internal/QC;

    .line 109
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_2
    move v1, v3

    goto :goto_3

    .line 110
    :cond_7
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v1

    :goto_3
    if-eqz v1, :cond_8

    .line 111
    iget-object v1, v0, Lcom/android/tools/r8/internal/em;->e:Lcom/android/tools/r8/internal/Cm;

    .line 112
    iget-object v1, v1, Lcom/android/tools/r8/internal/Cm;->e:Lcom/android/tools/r8/internal/hm;

    move-object v7, p2

    move-object v6, p7

    move-object/from16 v4, p9

    .line 113
    invoke-virtual {v1, p1, p7, p2, v4}, Lcom/android/tools/r8/internal/hm;->a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 115
    new-instance v2, Lcom/android/tools/r8/internal/ga;

    const/16 v4, 0xb8

    invoke-direct {v2, v4, v1, v3}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_8
    move-object v7, p2

    move-object v6, p7

    move-object/from16 v4, p9

    .line 116
    iget-object v1, v0, Lcom/android/tools/r8/internal/em;->e:Lcom/android/tools/r8/internal/Cm;

    .line 117
    iget-object v1, v1, Lcom/android/tools/r8/internal/Cm;->e:Lcom/android/tools/r8/internal/hm;

    move-object v2, p1

    move-object/from16 v3, p9

    move-object v4, p4

    move-object v5, p5

    .line 118
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/internal/hm;->a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public final a(Ljava/util/function/IntConsumer;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ca;->b(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;)Z
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/tools/r8/internal/em;->c:Lcom/android/tools/r8/internal/QC;

    new-instance v1, Lcom/android/tools/r8/internal/x91;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/x91;-><init>(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/em;->f:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/tools/r8/internal/em;->b:Lcom/android/tools/r8/graph/y;

    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/android/tools/r8/internal/em;->a(Ljava/util/Set;Ljava/lang/String;Lcom/android/tools/r8/graph/y;)V

    return-void
.end method
