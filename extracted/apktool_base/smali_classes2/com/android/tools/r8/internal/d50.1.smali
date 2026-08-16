.class public final Lcom/android/tools/r8/internal/d50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/on0;


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/W40;

.field public final b:Lcom/android/tools/r8/graph/A2;

.field public c:I

.field public d:I

.field public final synthetic e:Lcom/android/tools/r8/internal/f50;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/f50;Lcom/android/tools/r8/internal/W40;Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/d50;->e:Lcom/android/tools/r8/internal/f50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/tools/r8/internal/d50;->d:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/d50;->a:Lcom/android/tools/r8/internal/W40;

    iput-object p3, p0, Lcom/android/tools/r8/internal/d50;->b:Lcom/android/tools/r8/graph/A2;

    return-void
.end method


# virtual methods
.method public final a(ILcom/android/tools/r8/internal/aB;)I
    .locals 0

    .line 3
    iget-object p2, p0, Lcom/android/tools/r8/internal/d50;->a:Lcom/android/tools/r8/internal/W40;

    iget-object p2, p2, Lcom/android/tools/r8/internal/W40;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final a(II)Lcom/android/tools/r8/graph/j0;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(I)Lcom/android/tools/r8/internal/B60;
    .locals 0

    .line 18
    sget-boolean p1, Lcom/android/tools/r8/internal/B60;->g:Z

    .line 19
    sget-object p1, Lcom/android/tools/r8/internal/B60$c;->h:Lcom/android/tools/r8/internal/B60$c;

    return-object p1
.end method

.method public final a(IIILcom/android/tools/r8/internal/aB;)V
    .locals 0

    .line 16
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Unexpected call to resolveAndBuildSwitch"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(IILcom/android/tools/r8/internal/aB;)V
    .locals 0

    .line 17
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Unexpected call to resolveAndBuildNewArrayFilledData"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;IIZ)V
    .locals 0

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Outliner does not support control flow"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;IZ)V
    .locals 1

    .line 5
    iget-object p3, p0, Lcom/android/tools/r8/internal/d50;->a:Lcom/android/tools/r8/internal/W40;

    iget-object p3, p3, Lcom/android/tools/r8/internal/W40;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p2, p3, :cond_1

    .line 6
    iget-object p2, p0, Lcom/android/tools/r8/internal/d50;->a:Lcom/android/tools/r8/internal/W40;

    iget-object p2, p2, Lcom/android/tools/r8/internal/W40;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/aB;->a()V

    return-void

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/d50;->a:Lcom/android/tools/r8/internal/W40;

    .line 9
    iget-object p2, p2, Lcom/android/tools/r8/internal/W40;->b:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 11
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/aB;->d(I)V

    return-void

    .line 12
    :cond_1
    iput p2, p0, Lcom/android/tools/r8/internal/d50;->c:I

    .line 13
    iget-object p3, p0, Lcom/android/tools/r8/internal/d50;->a:Lcom/android/tools/r8/internal/W40;

    iget-object p3, p3, Lcom/android/tools/r8/internal/W40;->d:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/Z40;

    iget-object p3, p0, Lcom/android/tools/r8/internal/d50;->a:Lcom/android/tools/r8/internal/W40;

    iget v0, p0, Lcom/android/tools/r8/internal/d50;->d:I

    .line 15
    invoke-virtual {p2, p1, p3, v0}, Lcom/android/tools/r8/internal/Z40;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/W40;I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/d50;->d:I

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/aB;)V
    .locals 5

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/d50;->f:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p1, Lcom/android/tools/r8/internal/aB;->r:Lcom/android/tools/r8/graph/proto/j;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/proto/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 6
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/d50;->a:Lcom/android/tools/r8/internal/W40;

    iget-object v1, v1, Lcom/android/tools/r8/internal/W40;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/internal/d50;->a:Lcom/android/tools/r8/internal/W40;

    iget-object v1, v1, Lcom/android/tools/r8/internal/W40;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->F0()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/aB;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p1, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/on0;->d(I)Lcom/android/tools/r8/graph/j0;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 10
    :goto_2
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/internal/pu0;ILcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 11
    new-instance v2, Lcom/android/tools/r8/internal/k3;

    iget-object v4, p1, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    .line 12
    iget-object v4, v4, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 13
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v4

    .line 14
    invoke-direct {v2, v1, v4, v3}, Lcom/android/tools/r8/internal/k3;-><init>(Lcom/android/tools/r8/internal/xw0;IZ)V

    .line 15
    iget-object v1, p1, Lcom/android/tools/r8/internal/aB;->t:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/android/tools/r8/internal/aB;->t:Ljava/util/ArrayList;

    .line 17
    :cond_3
    iget-object v1, p1, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    .line 18
    iget-object v1, p1, Lcom/android/tools/r8/internal/aB;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 19
    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/d50;->a:Lcom/android/tools/r8/internal/W40;

    iget-object v1, v1, Lcom/android/tools/r8/internal/W40;->b:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/d50;->e:Lcom/android/tools/r8/internal/f50;

    iget-object v3, v3, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    invoke-static {v1, v2, v3}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 21
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/internal/pu0;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final b(I)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method

.method public final c(I)I
    .locals 0

    .line 1
    return p1
.end method

.method public final c()Z
    .locals 1

    .line 2
    const/4 v0, 0x1

    return v0
.end method

.method public final clear()V
    .locals 0

    return-void
.end method

.method public final d(I)Lcom/android/tools/r8/graph/j0;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d()V
    .locals 0

    .line 2
    return-void
.end method

.method public final e(I)Lcom/android/tools/r8/graph/j0;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e()Lcom/android/tools/r8/internal/N8;
    .locals 1

    .line 2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/d50;->a:Lcom/android/tools/r8/internal/W40;

    iget-object v0, v0, Lcom/android/tools/r8/internal/W40;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final f(I)I
    .locals 0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final g(I)I
    .locals 0

    .line 1
    return p1
.end method

.method public final g()Lcom/android/tools/r8/internal/B60;
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/d50;->b:Lcom/android/tools/r8/graph/A2;

    sget-boolean v1, Lcom/android/tools/r8/internal/A60;->i:Z

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/z60;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/z60;-><init>()V

    .line 4
    iput-object v0, v1, Lcom/android/tools/r8/internal/z60;->h:Lcom/android/tools/r8/graph/A2;

    .line 5
    iget v0, p0, Lcom/android/tools/r8/internal/d50;->c:I

    .line 6
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/z60;

    iget-object v1, p0, Lcom/android/tools/r8/internal/d50;->b:Lcom/android/tools/r8/graph/A2;

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/z60;

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lcom/android/tools/r8/internal/B60$a;->e:Z

    .line 9
    sget-boolean v1, Lcom/android/tools/r8/internal/z60;->i:Z

    .line 10
    new-instance v1, Lcom/android/tools/r8/internal/A60;

    iget v3, v0, Lcom/android/tools/r8/internal/B60$a;->a:I

    iget-object v4, v0, Lcom/android/tools/r8/internal/B60$a;->b:Lcom/android/tools/r8/graph/A2;

    iget-object v5, v0, Lcom/android/tools/r8/internal/B60$a;->c:Lcom/android/tools/r8/internal/B60;

    iget-boolean v6, v0, Lcom/android/tools/r8/internal/B60$a;->d:Z

    iget-object v7, v0, Lcom/android/tools/r8/internal/z60;->h:Lcom/android/tools/r8/graph/A2;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/internal/A60;-><init>(ILcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/B60;ZLcom/android/tools/r8/graph/A2;)V

    return-object v1
.end method
