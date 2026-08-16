.class public final Lcom/android/tools/r8/internal/n00;
.super Lcom/android/tools/r8/internal/ex0;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/ex0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/n00;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/n00;->c:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Zs0;
    .locals 2

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/bW;

    iget-object v1, p0, Lcom/android/tools/r8/internal/n00;->b:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v1, p2, p1}, Lcom/android/tools/r8/internal/bW;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H2;)V

    .line 10
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    .line 11
    iget-object p1, v0, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 13
    invoke-static {p1}, Lcom/android/tools/r8/internal/Zs0;->a(Z)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)Z
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/n00;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/Wl1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Wl1;-><init>(Lcom/android/tools/r8/internal/n00;Lcom/android/tools/r8/graph/H2;)V

    new-instance p1, Lu/P0;

    invoke-direct {p1}, Lu/P0;-><init>()V

    .line 7
    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/graph/H2;->a(Ljava/util/function/Function;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/lx0;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/lx0;->b:Lcom/android/tools/r8/graph/H2;

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/internal/lx0;->c:Lcom/android/tools/r8/graph/H2;

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/n00;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoInvokeSuperNoSuchMethodErrorsPolicy"

    return-object v0
.end method
