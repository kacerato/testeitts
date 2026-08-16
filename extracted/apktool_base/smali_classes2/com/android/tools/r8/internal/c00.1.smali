.class public final Lcom/android/tools/r8/internal/c00;
.super Lcom/android/tools/r8/internal/zm0;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/internal/Uc0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/zm0;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/Uc0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Uc0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/c00;->c:Lcom/android/tools/r8/internal/Uc0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/c00;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/c00;->c:Lcom/android/tools/r8/internal/Uc0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Uc0;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/c00;->c:Lcom/android/tools/r8/internal/Uc0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Uc0;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/c00;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/c00;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->n2:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->i1()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/c00;->b:Lcom/android/tools/r8/graph/y;

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/c00;->a(Lcom/android/tools/r8/graph/E0;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x0

    .line 9
    :goto_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/c00;->c:Lcom/android/tools/r8/internal/Uc0;

    invoke-virtual {v1, p1, v0}, Lcom/android/tools/r8/internal/Uc0;->a(Ljava/lang/Object;Z)Z

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->o1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/c00;->a(Lcom/android/tools/r8/graph/E0;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/c00;->c:Lcom/android/tools/r8/internal/Uc0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Uc0;->clear()V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoEnums"

    return-object v0
.end method
