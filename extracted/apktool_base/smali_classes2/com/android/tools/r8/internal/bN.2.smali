.class public final Lcom/android/tools/r8/internal/bN;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/bN;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/xP;)Lcom/android/tools/r8/internal/bN;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/bN;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/internal/cN;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/bN;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/cN;

    iget-object v1, p0, Lcom/android/tools/r8/internal/bN;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/cN;-><init>(Ljava/util/ArrayList;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    const-string v1, "Invalid empty consequent set"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0
.end method
