.class public abstract Lcom/android/tools/r8/internal/Y9;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/I00;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->L0:Lcom/android/tools/r8/internal/nJ$f;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ$f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->s0:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/If;

    const-string v0, "Cannot combine -Dcom.android.tools.r8.forceNestDesugaring with desugaring turned off"

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->L0:Lcom/android/tools/r8/internal/nJ$f;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ$f;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/I00;

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    .line 6
    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/I00;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/androidapi/a;)V

    return-object v0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 9
    instance-of v0, v0, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v0, :cond_7

    .line 10
    sget-boolean v0, Lcom/android/tools/r8/internal/I00;->h:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->L0:Lcom/android/tools/r8/internal/nJ$f;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ$f;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4
    :goto_1
    if-nez v0, :cond_6

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 13
    instance-of v0, v0, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v0, :cond_5

    goto :goto_2

    .line 14
    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 15
    :cond_6
    :goto_2
    new-instance v0, Lcom/android/tools/r8/internal/I00;

    .line 16
    new-instance v1, Lcom/android/tools/r8/androidapi/b;

    invoke-direct {v1}, Lcom/android/tools/r8/androidapi/b;-><init>()V

    .line 17
    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/I00;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/androidapi/a;)V

    return-object v0

    .line 18
    :cond_7
    sget-boolean v0, Lcom/android/tools/r8/internal/I00;->h:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->L0:Lcom/android/tools/r8/internal/nJ$f;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ$f;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_9
    :goto_3
    if-nez v0, :cond_b

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 20
    :cond_b
    :goto_4
    new-instance v0, Lcom/android/tools/r8/internal/I00;

    .line 21
    iget-object v1, p0, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    .line 22
    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/I00;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/androidapi/a;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/JI;)Lcom/android/tools/r8/internal/DI;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)Ljava/util/Collection;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;)V
.end method

.method public abstract a(Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;Lcom/android/tools/r8/graph/H5;)V
.end method

.method public abstract a(Ljava/util/function/Consumer;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H5;)Z
.end method
