.class public final Lcom/android/tools/r8/shaking/A4;
.super Lcom/android/tools/r8/shaking/I4;
.source "SourceFile"


# instance fields
.field public final F:Lcom/android/tools/r8/shaking/N;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/Y5;)V
    .locals 3

    iget-object v0, p2, Lcom/android/tools/r8/shaking/N;->m0:Lcom/android/tools/r8/internal/M70;

    sget-object v1, Lcom/android/tools/r8/shaking/w4;->c:Lcom/android/tools/r8/shaking/w4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v0, Lcom/android/tools/r8/internal/b10;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/X70;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/M70;->a()Lcom/android/tools/r8/internal/vg;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/X70;-><init>(Lcom/android/tools/r8/internal/vg;)V

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, p3, v0}, Lcom/android/tools/r8/shaking/I4;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/x4;Lcom/android/tools/r8/graph/Y5;Ljava/lang/Iterable;)V

    iput-object p2, p0, Lcom/android/tools/r8/shaking/A4;->F:Lcom/android/tools/r8/shaking/N;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/f;)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/shaking/A4;->F:Lcom/android/tools/r8/shaking/N;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/shaking/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/A4;->F:Lcom/android/tools/r8/shaking/N;

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f;->a()Lcom/android/tools/r8/shaking/d;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/shaking/d;->a:Ljava/util/ArrayList;

    sget-boolean v1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/tools/r8/shaking/N;->m:Lcom/android/tools/r8/shaking/g;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/shaking/e;

    iget-object v4, v0, Lcom/android/tools/r8/shaking/N;->m:Lcom/android/tools/r8/shaking/g;

    iget-object v5, v3, Lcom/android/tools/r8/shaking/e;->b:Lcom/android/tools/r8/graph/r0;

    iget-object v4, v4, Lcom/android/tools/r8/shaking/g;->a:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    iget-object v5, v3, Lcom/android/tools/r8/shaking/e;->a:Lcom/android/tools/r8/graph/D5;

    iget-object v6, v3, Lcom/android/tools/r8/shaking/e;->b:Lcom/android/tools/r8/graph/r0;

    iget-object v3, v3, Lcom/android/tools/r8/shaking/e;->c:Lcom/android/tools/r8/graph/p0;

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/p0;)V

    goto :goto_1

    :cond_2
    return-void
.end method
