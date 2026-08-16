.class public final Lcom/android/tools/r8/internal/F40;
.super Lcom/android/tools/r8/internal/aY;
.source "SourceFile"


# instance fields
.field public final l:Lcom/android/tools/r8/graph/y5;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y5;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/android/tools/r8/internal/aY;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/F40;->l:Lcom/android/tools/r8/graph/y5;

    return-void
.end method


# virtual methods
.method public final B0()Lcom/android/tools/r8/internal/F40;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 1

    .line 8
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "We never write out witness instructions"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/F40;->l:Lcom/android/tools/r8/graph/y5;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/aY;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xe5

    .line 6
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 1

    .line 7
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "We never write out witness instructions"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/F40;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->B0()Lcom/android/tools/r8/internal/F40;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/F40;->l:Lcom/android/tools/r8/graph/y5;

    iget-object p1, p1, Lcom/android/tools/r8/internal/F40;->l:Lcom/android/tools/r8/graph/y5;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/C40;->a(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    return p1
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x48

    return v0
.end method
