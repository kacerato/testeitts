.class public final Lcom/android/tools/r8/shaking/l0;
.super Lcom/android/tools/r8/shaking/k0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/H2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/k0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/l0;->a:Lcom/android/tools/r8/graph/H2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/N;)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/shaking/l0;->a:Lcom/android/tools/r8/graph/H2;

    sget-object v1, Lcom/android/tools/r8/shaking/R0;->a:Lcom/android/tools/r8/shaking/R0;

    sget-boolean v2, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v3, p1, Lcom/android/tools/r8/shaking/N;->o:Lcom/android/tools/r8/graph/s5;

    iget-object v4, p1, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v5, Lcom/android/tools/r8/graph/s5;->i:Z

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v5, :cond_5

    iget-object v5, v0, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    iget-object v5, v3, Lcom/android/tools/r8/graph/t5;->c:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v3, v4, v0}, Lcom/android/tools/r8/graph/s5;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/E0;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/N;->q(Lcom/android/tools/r8/graph/H2;)V

    :cond_8
    return-void
.end method
