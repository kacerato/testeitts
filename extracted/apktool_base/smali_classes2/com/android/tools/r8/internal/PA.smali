.class public final Lcom/android/tools/r8/internal/PA;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/PA;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/PA;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/PA;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/ay0;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/PA;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/eG0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/eG0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/PA;->b:Ljava/util/ArrayList;

    new-instance v1, Lu/K0;

    invoke-direct {v1}, Lu/K0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    new-instance v0, Lcom/android/tools/r8/internal/ay0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/PA;->a:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/PA;->b:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/PA;->c:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/ay0;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    return-object v0
.end method
