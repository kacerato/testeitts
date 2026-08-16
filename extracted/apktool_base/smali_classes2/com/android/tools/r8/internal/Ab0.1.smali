.class public final Lcom/android/tools/r8/internal/Ab0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/Ab0;->a:I

    iput v0, p0, Lcom/android/tools/r8/internal/Ab0;->b:I

    iput v0, p0, Lcom/android/tools/r8/internal/Ab0;->c:I

    iput v0, p0, Lcom/android/tools/r8/internal/Ab0;->d:I

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/Ab0;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Ab0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ab0;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 3
    invoke-virtual {v0, p0, v2}, Lcom/android/tools/r8/internal/Ab0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;)V

    .line 4
    new-instance v3, Lcom/android/tools/r8/internal/Sy0;

    invoke-direct {v3, v0, p0}, Lcom/android/tools/r8/internal/Sy0;-><init>(Lcom/android/tools/r8/internal/Ab0;Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/H2;->k(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Ab0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G5;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ab0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;)V
    .locals 2

    .line 6
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/shaking/t1;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    .line 8
    iget v0, p0, Lcom/android/tools/r8/internal/Ab0;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/Ab0;->a:I

    .line 9
    iget v0, p0, Lcom/android/tools/r8/internal/Ab0;->b:I

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/shaking/t1;->b(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/Ab0;->b:I

    .line 10
    iget v0, p0, Lcom/android/tools/r8/internal/Ab0;->c:I

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/Ab0;->c:I

    .line 11
    iget v0, p0, Lcom/android/tools/r8/internal/Ab0;->d:I

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/tools/r8/internal/Ab0;->d:I

    return-void
.end method
