.class public final Lcom/android/tools/r8/internal/AC;
.super Lcom/android/tools/r8/internal/Av0;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public final synthetic d:Lcom/android/tools/r8/internal/Av0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Av0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/AC;->d:Lcom/android/tools/r8/internal/Av0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Av0;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/AC;->b:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/AC;->d:Lcom/android/tools/r8/internal/Av0;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/AC;->b:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/AC;->d:Lcom/android/tools/r8/internal/Av0;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/MY;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/MY;->b()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/AC;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/MY;->a()I

    move-result v0

    iput v0, p0, Lcom/android/tools/r8/internal/AC;->b:I

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/AC;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/AC;->b:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/AC;->c:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
