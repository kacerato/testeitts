.class public final Lcom/android/tools/r8/internal/L8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public final synthetic c:Lcom/android/tools/r8/internal/N8;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/N8;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/L8;->c:Lcom/android/tools/r8/internal/N8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/tools/r8/internal/L8;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/L8;->b:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/L8;->c:Lcom/android/tools/r8/internal/N8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/N8;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/L8;->c:Lcom/android/tools/r8/internal/N8;

    iget-object v0, v0, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    iget v1, p0, Lcom/android/tools/r8/internal/L8;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/L8;->c:Lcom/android/tools/r8/internal/N8;

    iget-object v1, v1, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    iget v2, p0, Lcom/android/tools/r8/internal/L8;->b:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/android/tools/r8/internal/L8;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/L8;->b:I

    new-instance v2, Lcom/android/tools/r8/internal/M8;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/M8;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/lang/Object;)V

    return-object v2
.end method
