.class public final Lcom/android/tools/r8/internal/dW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/cW;


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/dW;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)V
    .locals 5

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/dW;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/cW;

    .line 5
    sget-boolean v4, Lcom/android/tools/r8/internal/dW;->b:Z

    if-nez v4, :cond_0

    invoke-interface {v3, p1}, Lcom/android/tools/r8/internal/cW;->a(Lcom/android/tools/r8/graph/y;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/dW;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/cW;

    .line 3
    invoke-interface {v4, p1}, Lcom/android/tools/r8/internal/cW;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/dW;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/cW;

    invoke-interface {v4, p1}, Lcom/android/tools/r8/internal/cW;->c(Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method
