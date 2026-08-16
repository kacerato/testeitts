.class public abstract Lcom/android/tools/r8/internal/Nv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Z
    .locals 4

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->I()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->g()Lcom/android/tools/r8/graph/D5;

    move-result-object p0

    sget-boolean v0, Lcom/android/tools/r8/internal/Nv;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    iget-object v0, v0, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p2, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/FeatureSplit;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/FeatureSplit;

    move-result-object v1

    if-ne v2, v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p2, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/FeatureSplit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/FeatureSplit;->isBase()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->s:Lcom/android/tools/r8/internal/Qv;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/Qv;->b:Z

    if-eqz v0, :cond_6

    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->isClass()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getAccessFlags()Lcom/android/tools/r8/graph/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getAccessFlags()Lcom/android/tools/r8/graph/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getAccessFlags()Lcom/android/tools/r8/graph/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->f()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j;

    invoke-interface {p1}, Lcom/android/tools/r8/graph/D5;->a()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/tools/r8/graph/D5;->a()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)Z

    move-result p0

    if-nez p0, :cond_6

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_2
    const/4 p0, 0x1

    return p0
.end method
