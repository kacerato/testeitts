.class public final Lcom/android/tools/r8/internal/Ea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/L9;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Ia;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Ia;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ea;->a:Lcom/android/tools/r8/internal/Ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ea;->a:Lcom/android/tools/r8/internal/Ia;

    .line 2
    iget-object v1, v0, Lcom/android/tools/r8/internal/Ia;->d:Lcom/android/tools/r8/internal/nJ;

    .line 3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->r()Lcom/android/tools/r8/internal/nJ$c;

    move-result-object v1

    .line 4
    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ$c;->b:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v0, Lcom/android/tools/r8/internal/Ia;->f:Lcom/android/tools/r8/internal/h80;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Ia;->c:Lcom/android/tools/r8/graph/H5;

    new-instance v3, Lcom/android/tools/r8/utils/UnverifiableCfCodeDiagnostic;

    .line 6
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/H0;->w()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v4

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/graph/H;->d:Ljava/lang/String;

    .line 8
    iget-object v5, v0, Lcom/android/tools/r8/internal/Ia;->c:Lcom/android/tools/r8/graph/H5;

    .line 9
    iget-object v5, v5, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    .line 10
    iget-object v5, v5, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    const/4 v6, -0x1

    .line 11
    invoke-direct {v3, v4, v6, p1, v5}, Lcom/android/tools/r8/utils/UnverifiableCfCodeDiagnostic;-><init>(Lcom/android/tools/r8/references/MethodReference;ILjava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    sget-object p1, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 14
    new-instance v4, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v4, p1, v2}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 15
    iget-object p1, v1, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_0
    iget-object p1, v0, Lcom/android/tools/r8/internal/Ia;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/H9;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ea;->a:Lcom/android/tools/r8/internal/Ia;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/Ia;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/H9;)V

    return-void
.end method
