.class public final Lcom/android/tools/r8/internal/Ac;
.super Lcom/android/tools/r8/internal/zm0;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/nJ$g;

.field public final c:Lcom/android/tools/r8/synthesis/J;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/zm0;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->K()Lcom/android/tools/r8/internal/nJ$g;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ac;->b:Lcom/android/tools/r8/internal/nJ$g;

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ac;->c:Lcom/android/tools/r8/synthesis/J;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ac;->b:Lcom/android/tools/r8/internal/nJ$g;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$g;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ac;->c:Lcom/android/tools/r8/synthesis/J;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ac;->b:Lcom/android/tools/r8/internal/nJ$g;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ$g;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ac;->c:Lcom/android/tools/r8/synthesis/J;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/graph/H2;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "CheckSyntheticClasses"

    return-object v0
.end method
