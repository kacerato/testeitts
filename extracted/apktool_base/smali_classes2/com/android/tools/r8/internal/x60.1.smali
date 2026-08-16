.class public final Lcom/android/tools/r8/internal/x60;
.super Lcom/android/tools/r8/internal/B60$a;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final h:Lcom/android/tools/r8/internal/zH;

.field public i:Lcom/android/tools/r8/graph/A2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/B60$a;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/AH;->d:Z

    new-instance v0, Lcom/android/tools/r8/internal/zH;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/zH;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/x60;->h:Lcom/android/tools/r8/internal/zH;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/android/tools/r8/internal/B60;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/x60;->d()Lcom/android/tools/r8/internal/y60;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/x60;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/x60;->h:Lcom/android/tools/r8/internal/zH;

    .line 3
    iget-object v1, v0, Lcom/android/tools/r8/internal/zH;->a:Ljava/util/ArrayList;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, v0, Lcom/android/tools/r8/internal/zH;->b:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/internal/B60$a;
    .locals 0

    return-object p0
.end method

.method public final d()Lcom/android/tools/r8/internal/y60;
    .locals 13

    sget-boolean v0, Lcom/android/tools/r8/internal/x60;->j:Z

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/B60$a;->f:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/tools/r8/internal/B60$a;->a:I

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/B60$a;->g:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/B60$a;->b:Lcom/android/tools/r8/graph/A2;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/y60;

    iget v2, p0, Lcom/android/tools/r8/internal/B60$a;->a:I

    iget-object v3, p0, Lcom/android/tools/r8/internal/B60$a;->b:Lcom/android/tools/r8/graph/A2;

    iget-object v4, p0, Lcom/android/tools/r8/internal/B60$a;->c:Lcom/android/tools/r8/internal/B60;

    iget-boolean v5, p0, Lcom/android/tools/r8/internal/B60$a;->d:Z

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/B60$a;->e:Z

    iget-object v1, p0, Lcom/android/tools/r8/internal/x60;->h:Lcom/android/tools/r8/internal/zH;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/android/tools/r8/internal/AH;

    iget-object v8, v1, Lcom/android/tools/r8/internal/zH;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    array-length v9, v8

    new-array v10, v9, [I

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v9, :cond_4

    aget-object v12, v8, v11

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    aput v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, v1, Lcom/android/tools/r8/internal/zH;->b:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    invoke-direct {v7, v10, v1}, Lcom/android/tools/r8/internal/AH;-><init>([ILcom/android/tools/r8/internal/hC;)V

    iget-object v8, p0, Lcom/android/tools/r8/internal/x60;->i:Lcom/android/tools/r8/graph/A2;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/tools/r8/internal/y60;-><init>(ILcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/B60;ZZLcom/android/tools/r8/internal/AH;Lcom/android/tools/r8/graph/A2;)V

    return-object v0
.end method
