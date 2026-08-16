.class public final Lcom/android/tools/r8/tracereferences/i;
.super Lcom/android/tools/r8/graph/f6;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/diagnostic/DefinitionContext;

.field public final synthetic f:Lcom/android/tools/r8/tracereferences/j;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/tracereferences/j;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    iget-object p1, p1, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/graph/f6;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/J5;)V

    invoke-static {p2}, Lcom/android/tools/r8/diagnostic/internal/d;->a(Lcom/android/tools/r8/graph/E5;)Lcom/android/tools/r8/diagnostic/DefinitionContext;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/i;->e:Lcom/android/tools/r8/diagnostic/DefinitionContext;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/Z4$c;)Lcom/android/tools/r8/graph/H0;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 34
    check-cast v0, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    .line 35
    iget-object v2, v2, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    .line 36
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j;

    .line 37
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/Z4$c;->c(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    .line 48
    iget-object v0, v0, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    .line 49
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 51
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    sget-object v2, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 53
    sget-boolean v0, Lcom/android/tools/r8/tracereferences/i;->g:Z

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p1, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 57
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 58
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 59
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 60
    check-cast v0, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 61
    iget-object v0, v0, Lcom/android/tools/r8/graph/H2;->u:Lcom/android/tools/r8/ProgramResource$Kind;

    .line 62
    sget-object v1, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    if-ne v0, v1, :cond_2

    .line 63
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    .line 64
    iget-object v0, v0, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    .line 65
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 66
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/tracereferences/S;

    invoke-direct {v1}, Lcom/android/tools/r8/tracereferences/S;-><init>()V

    .line 67
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/tracereferences/i;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4;Ljava/util/function/Function;)V

    return-void

    .line 68
    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/U6;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/U6;-><init>()V

    .line 69
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    .line 70
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 71
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    .line 72
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/h;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object v1

    .line 73
    new-instance v2, Lcom/android/tools/r8/tracereferences/Z;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/tools/r8/tracereferences/Z;-><init>(Lcom/android/tools/r8/tracereferences/i;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/U6;)V

    .line 74
    invoke-interface {v1, v2}, Lcom/android/tools/r8/graph/b0;->a(Ljava/util/function/Consumer;)V

    .line 75
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/U6;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/tracereferences/i;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H0;)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H0;)V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/tracereferences/i;->e:Lcom/android/tools/r8/diagnostic/DefinitionContext;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/tracereferences/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    .line 103
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/tracereferences/i;->e:Lcom/android/tools/r8/diagnostic/DefinitionContext;

    .line 104
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    .line 105
    invoke-virtual {v0, v3, v2}, Lcom/android/tools/r8/tracereferences/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/tracereferences/i;->e:Lcom/android/tools/r8/diagnostic/DefinitionContext;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/tracereferences/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    if-eqz p2, :cond_4

    .line 107
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 108
    sget-boolean v1, Lcom/android/tools/r8/tracereferences/i;->g:Z

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    iget-object v2, v2, Lcom/android/tools/r8/tracereferences/j;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/u1;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 111
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    .line 113
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 114
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/tracereferences/i;->e:Lcom/android/tools/r8/diagnostic/DefinitionContext;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    .line 115
    iget-object p1, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/i;->e:Lcom/android/tools/r8/diagnostic/DefinitionContext;

    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/tracereferences/j;->b(Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/H0;)V

    :cond_3
    return-void

    .line 116
    :cond_4
    new-instance p2, Lcom/android/tools/r8/internal/Ls0;

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/i;->e:Lcom/android/tools/r8/diagnostic/DefinitionContext;

    .line 117
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->v0()Lcom/android/tools/r8/references/MethodReference;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1}, Lcom/android/tools/r8/internal/Ls0;-><init>(Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$MethodAccessFlags;)V

    .line 118
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    .line 119
    sget-boolean v1, Lcom/android/tools/r8/tracereferences/j;->j:Z

    if-nez v1, :cond_6

    .line 120
    iget-boolean v1, p2, Lcom/android/tools/r8/internal/Ms0;->d:Z

    if-eqz v1, :cond_5

    goto :goto_2

    .line 121
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 122
    :cond_6
    :goto_2
    iget-object v0, v0, Lcom/android/tools/r8/tracereferences/j;->h:Ljava/util/Set;

    .line 123
    iget-boolean v1, p2, Lcom/android/tools/r8/internal/Ms0;->d:Z

    if-eqz v1, :cond_7

    .line 124
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_7
    iget-object p1, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    iget-object v0, p1, Lcom/android/tools/r8/tracereferences/j;->c:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

    iget-object p1, p1, Lcom/android/tools/r8/tracereferences/j;->d:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {v0, p2, p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;->acceptMethod(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedMethod;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4;)V
    .locals 1

    .line 99
    sget-boolean v0, Lcom/android/tools/r8/tracereferences/i;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/J4;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 100
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->k()Lcom/android/tools/r8/graph/Z4$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4$a;->y()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/tracereferences/i;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H0;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4;Ljava/util/function/Function;)V
    .locals 2

    .line 81
    new-instance v0, Lcom/android/tools/r8/internal/U6;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/U6;-><init>()V

    .line 82
    new-instance v1, Lcom/android/tools/r8/tracereferences/U;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/android/tools/r8/tracereferences/U;-><init>(Lcom/android/tools/r8/tracereferences/i;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/U6;Ljava/util/function/Function;)V

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/Z4;->a(Ljava/util/function/Consumer;)V

    .line 83
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/U6;->c()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 84
    new-instance p3, Lcom/android/tools/r8/tracereferences/V;

    invoke-direct {p3, p0, p1}, Lcom/android/tools/r8/tracereferences/V;-><init>(Lcom/android/tools/r8/tracereferences/i;Lcom/android/tools/r8/graph/A2;)V

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/Z4;->a(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/j1;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    .line 91
    sget-boolean v1, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez v1, :cond_1

    .line 92
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    .line 93
    check-cast v1, Lcom/android/tools/r8/graph/A2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 94
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    iget-object v1, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 97
    invoke-static {v0, p2}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 98
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/tracereferences/i;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_0

    .line 78
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 79
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/tracereferences/i;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H0;)V

    .line 80
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/U6;->e()V

    :cond_1
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/U6;Ljava/util/function/Function;Lcom/android/tools/r8/graph/Z4;)V
    .locals 1

    .line 85
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/J4;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/Z4;->k()Lcom/android/tools/r8/graph/Z4$a;

    move-result-object p2

    new-instance p3, Lcom/android/tools/r8/tracereferences/W;

    invoke-direct {p3, p0}, Lcom/android/tools/r8/tracereferences/W;-><init>(Lcom/android/tools/r8/tracereferences/i;)V

    new-instance p4, Lcom/android/tools/r8/tracereferences/X;

    invoke-direct {p4, p0, p1}, Lcom/android/tools/r8/tracereferences/X;-><init>(Lcom/android/tools/r8/tracereferences/i;Lcom/android/tools/r8/graph/A2;)V

    .line 87
    invoke-virtual {p2, p3, p4}, Lcom/android/tools/r8/graph/Z4$a;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void

    .line 88
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/U6;->e()V

    .line 89
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/H0;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/tracereferences/i;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/D0;)V
    .locals 8

    .line 127
    invoke-super {p0, p1}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/D0;)V

    .line 128
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    .line 129
    iget-object v0, v0, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    .line 130
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    .line 131
    iget-object v2, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 132
    check-cast v2, Lcom/android/tools/r8/graph/H5;

    .line 133
    invoke-static {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/kR;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/kR;

    move-result-object p1

    .line 134
    sget-object v0, Lcom/android/tools/r8/internal/kR;->j:Lcom/android/tools/r8/internal/kR;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    move-object p1, v1

    :cond_0
    if-eqz p1, :cond_5

    .line 135
    iget-object v0, p1, Lcom/android/tools/r8/internal/kR;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/graph/M2;

    .line 136
    iget-object v5, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    .line 137
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    .line 138
    invoke-virtual {v5, v4}, Lcom/android/tools/r8/graph/h;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object v5

    .line 139
    invoke-interface {v5}, Lcom/android/tools/r8/graph/b0;->X()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 140
    new-instance v4, Lcom/android/tools/r8/tracereferences/T;

    invoke-direct {v4, p0, p1}, Lcom/android/tools/r8/tracereferences/T;-><init>(Lcom/android/tools/r8/tracereferences/i;Lcom/android/tools/r8/internal/kR;)V

    invoke-interface {v5, v4}, Lcom/android/tools/r8/graph/b0;->a(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 141
    :cond_1
    new-instance v5, Lcom/android/tools/r8/internal/Js0;

    iget-object v6, p0, Lcom/android/tools/r8/tracereferences/i;->e:Lcom/android/tools/r8/diagnostic/DefinitionContext;

    .line 142
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/M2;->s0()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v4

    invoke-direct {v5, v4, v6, v1}, Lcom/android/tools/r8/internal/Js0;-><init>(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ClassAccessFlags;)V

    .line 143
    iget-object v6, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    .line 144
    sget-boolean v7, Lcom/android/tools/r8/tracereferences/j;->j:Z

    if-nez v7, :cond_3

    .line 145
    iget-boolean v7, v5, Lcom/android/tools/r8/internal/Ms0;->d:Z

    if-eqz v7, :cond_2

    goto :goto_1

    .line 146
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 147
    :cond_3
    :goto_1
    iget-object v6, v6, Lcom/android/tools/r8/tracereferences/j;->f:Ljava/util/Set;

    .line 148
    iget-boolean v7, v5, Lcom/android/tools/r8/internal/Ms0;->d:Z

    if-eqz v7, :cond_4

    .line 149
    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_4
    iget-object v4, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    iget-object v6, v4, Lcom/android/tools/r8/tracereferences/j;->c:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

    iget-object v4, v4, Lcom/android/tools/r8/tracereferences/j;->d:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {v6, v5, v4}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;->acceptType(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedClass;Lcom/android/tools/r8/DiagnosticsHandler;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/tracereferences/i;->i(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NW;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 2
    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    sget-boolean v1, Lcom/android/tools/r8/tracereferences/i;->g:Z

    if-nez v1, :cond_1

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kK;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/i;->e:Lcom/android/tools/r8/diagnostic/DefinitionContext;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/tracereferences/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    return-void

    .line 8
    :cond_2
    sget-boolean v1, Lcom/android/tools/r8/tracereferences/i;->g:Z

    if-nez v1, :cond_4

    .line 9
    iget-object v1, p1, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kK;->b()Z

    move-result v1

    if-nez v1, :cond_4

    .line 11
    iget-object v1, p1, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 12
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kK;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_4
    :goto_1
    iget-object p1, p1, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kK;->b()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    iget-object p1, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    .line 16
    iget-object p1, p1, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j;

    .line 18
    sget-boolean v1, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v1, :cond_5

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->c()V

    goto :goto_2

    .line 20
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    :goto_2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    goto :goto_4

    .line 22
    :cond_6
    iget-object p1, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    .line 23
    iget-object p1, p1, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j;

    .line 25
    sget-boolean v1, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v1, :cond_7

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->c()V

    goto :goto_3

    .line 27
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    :goto_3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-nez v1, :cond_8

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->c()V

    .line 30
    :cond_8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 31
    :goto_4
    new-instance v1, Lcom/android/tools/r8/tracereferences/S;

    invoke-direct {v1}, Lcom/android/tools/r8/tracereferences/S;-><init>()V

    .line 32
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/tools/r8/tracereferences/i;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4;Ljava/util/function/Function;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/kR;Lcom/android/tools/r8/graph/E0;)V
    .locals 4

    .line 38
    iget-object v0, p1, Lcom/android/tools/r8/internal/kR;->b:Lcom/android/tools/r8/graph/A2;

    .line 39
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/tracereferences/i;->b(Lcom/android/tools/r8/graph/A2;)V

    .line 41
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/kR;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/I2;

    .line 42
    iget-object v2, p1, Lcom/android/tools/r8/internal/kR;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    .line 43
    iget-object v3, p2, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 44
    iget-object v3, v3, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 45
    invoke-virtual {v3, v1, v2}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/tracereferences/i;->b(Lcom/android/tools/r8/graph/A2;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 5
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    sget-object v2, Lcom/android/tools/r8/internal/kK;->e:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/tracereferences/i;->g:Z

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p1, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kK;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/tracereferences/i;->a(Lcom/android/tools/r8/internal/NW;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    .line 12
    iget-object v0, v0, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    .line 18
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->j:Lcom/android/tools/r8/internal/uD;

    .line 19
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/uD;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    .line 21
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 22
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/tracereferences/i;->e:Lcom/android/tools/r8/diagnostic/DefinitionContext;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/tracereferences/i;->i(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/A2;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    iget-object v0, v0, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    sget-object v2, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    sget-boolean v0, Lcom/android/tools/r8/tracereferences/i;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kK;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    iget-object v0, v0, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/tracereferences/S;

    invoke-direct {v1}, Lcom/android/tools/r8/tracereferences/S;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/tracereferences/i;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4;Ljava/util/function/Function;)V

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/tracereferences/i;->i(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/A2;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 5
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    sget-object v2, Lcom/android/tools/r8/internal/kK;->g:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)Lcom/android/tools/r8/internal/NW;

    move-result-object v0

    .line 7
    sget-boolean v1, Lcom/android/tools/r8/tracereferences/i;->g:Z

    if-nez v1, :cond_1

    .line 8
    iget-object v1, v0, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kK;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 11
    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    .line 13
    iget-object v1, v1, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    .line 14
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    .line 15
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/j;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/tracereferences/Y;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/tracereferences/Y;-><init>(Lcom/android/tools/r8/tracereferences/i;)V

    .line 16
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/tracereferences/i;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4;Ljava/util/function/Function;)V

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/M2;)V
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    .line 18
    iget-object v1, v0, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    .line 19
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    .line 22
    invoke-virtual {v1, v2, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 23
    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/i;->e:Lcom/android/tools/r8/diagnostic/DefinitionContext;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/tracereferences/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/A2;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 5
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    sget-object v2, Lcom/android/tools/r8/internal/kK;->h:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/tracereferences/i;->g:Z

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p1, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kK;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/tracereferences/i;->a(Lcom/android/tools/r8/internal/NW;)V

    return-void
.end method

.method public final synthetic g(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/i;->e:Lcom/android/tools/r8/diagnostic/DefinitionContext;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/tracereferences/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/tracereferences/i;->i(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final i(Lcom/android/tools/r8/graph/l1;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    iget-object v0, v0, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/iw;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/i;->f:Lcom/android/tools/r8/tracereferences/j;

    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/tracereferences/i;->e:Lcom/android/tools/r8/diagnostic/DefinitionContext;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    return-void
.end method
