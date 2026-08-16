.class public final Lcom/android/tools/r8/internal/BK;
.super Lcom/android/tools/r8/internal/e0;
.source "SourceFile"


# instance fields
.field public final synthetic d:Ljava/util/Iterator;

.field public final synthetic e:Lcom/android/tools/r8/internal/V60;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lcom/android/tools/r8/internal/V60;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/BK;->d:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/android/tools/r8/internal/BK;->e:Lcom/android/tools/r8/internal/V60;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/e0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/BK;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/BK;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/BK;->e:Lcom/android/tools/r8/internal/V60;

    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/V60;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/tools/r8/internal/e0;->b:I

    const/4 v0, 0x0

    return-object v0
.end method
