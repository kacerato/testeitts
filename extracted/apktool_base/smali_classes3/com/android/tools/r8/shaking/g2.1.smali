.class public final Lcom/android/tools/r8/shaking/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/jv;


# static fields
.field public static final a:Lcom/android/tools/r8/shaking/g2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/shaking/g2;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/g2;-><init>()V

    sput-object v0, Lcom/android/tools/r8/shaking/g2;->a:Lcom/android/tools/r8/shaking/g2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/iv;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/H5;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object p1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iget-object v2, p3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    iget-object v3, p2, Lcom/android/tools/r8/internal/iv;->c:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p3, p1, p4}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object p1, p1, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/TW;->a(Lcom/android/tools/r8/internal/QJ;)Lcom/android/tools/r8/internal/fE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fE;->g()Z

    move-result p1

    return p1

    :cond_5
    return v1
.end method
