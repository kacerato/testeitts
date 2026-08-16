.class public final Lcom/android/tools/r8/internal/Fc;
.super Lcom/android/tools/r8/internal/Gc;
.source "SourceFile"


# instance fields
.field public final f:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/t70;Lcom/android/tools/r8/internal/Ki;Lcom/android/tools/r8/internal/JI;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Gc;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/t70;Lcom/android/tools/r8/internal/Ki;Lcom/android/tools/r8/internal/JI;)V

    invoke-static {}, Lcom/android/tools/r8/internal/Al0;->a()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Fc;->f:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/ns0;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->b1()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Gc;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Lcom/android/tools/r8/internal/nJ;Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/Gc;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->L:Lcom/android/tools/r8/graph/L2;

    .line 4
    new-instance v3, Lcom/android/tools/r8/internal/VR;

    invoke-direct {v3, v1, v2, p2}, Lcom/android/tools/r8/internal/VR;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/H2;)V

    .line 5
    invoke-virtual {v3, p2}, Lcom/android/tools/r8/internal/VR;->a(Lcom/android/tools/r8/graph/H2;)V

    .line 6
    iget-boolean v1, v3, Lcom/android/tools/r8/internal/VR;->c:Z

    if-eqz v1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/android/tools/r8/internal/Fc;->f:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/tools/r8/internal/Gc;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/ns0;)V

    return-object v0
.end method

.method public final a()V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gc;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Fc;->f:Ljava/util/Set;

    .line 10
    sget-boolean v2, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez v2, :cond_1

    .line 11
    iget-object v2, v0, Lcom/android/tools/r8/graph/y;->P:Ljava/util/Set;

    if-nez v2, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 13
    :cond_1
    :goto_0
    iput-object v1, v0, Lcom/android/tools/r8/graph/y;->P:Ljava/util/Set;

    return-void
.end method
