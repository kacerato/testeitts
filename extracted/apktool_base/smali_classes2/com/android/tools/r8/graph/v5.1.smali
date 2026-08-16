.class public final Lcom/android/tools/r8/graph/v5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/h;

.field public final b:Lcom/android/tools/r8/internal/qd0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/qd0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qd0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/v5;->b:Lcom/android/tools/r8/internal/qd0;

    iput-object p1, p0, Lcom/android/tools/r8/graph/v5;->a:Lcom/android/tools/r8/graph/h;

    const/4 p1, -0x1

    iput p1, v0, Lcom/android/tools/r8/internal/x1;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)I
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/graph/v5;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/tools/r8/graph/v5;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v4, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    invoke-interface {v3, v0}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/v5;->a(Lcom/android/tools/r8/graph/H2;)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iget-object v3, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v4, v3

    :goto_2
    if-ge v1, v4, :cond_5

    aget-object v5, v3, v1

    iget-object v6, p0, Lcom/android/tools/r8/graph/v5;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v5, v7, :cond_3

    move-object v5, p1

    goto :goto_3

    :cond_3
    invoke-interface {v6, v5}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v5

    :goto_3
    invoke-static {v5}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v5

    if-nez v5, :cond_4

    move v5, v2

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/tools/r8/graph/v5;->a(Lcom/android/tools/r8/graph/H2;)I

    move-result v5

    :goto_4
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/android/tools/r8/graph/v5;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v1, v0, p1}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    :cond_6
    return v0
.end method
