.class public final Lcom/android/tools/r8/shaking/J1;
.super Lcom/android/tools/r8/shaking/X1;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/b1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/b1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/X1;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/J1;->a:Lcom/android/tools/r8/graph/b1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/S0;)Lcom/android/tools/r8/experimental/graphinfo/GraphNode;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/J1;->a:Lcom/android/tools/r8/graph/b1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->s0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/J1;->a:Lcom/android/tools/r8/graph/b1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->l0()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/J1;->a:Lcom/android/tools/r8/graph/b1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    instance-of v0, v0, Lcom/android/tools/r8/graph/g1;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/shaking/J1;->a:Lcom/android/tools/r8/graph/b1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->m0()Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/experimental/graphinfo/FieldGraphNode;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/shaking/J1;->b:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/J1;->a:Lcom/android/tools/r8/graph/b1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->v0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/J1;->a:Lcom/android/tools/r8/graph/b1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->o0()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/internal/Dz$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Dz$a;->k:Lcom/android/tools/r8/internal/Dz$a;

    return-object v0
.end method
