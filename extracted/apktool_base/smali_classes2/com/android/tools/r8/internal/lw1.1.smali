.class public final synthetic Lcom/android/tools/r8/internal/lw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Jy;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/va0;

.field public final synthetic c:Lcom/android/tools/r8/graph/E0;

.field public final synthetic d:Lcom/android/tools/r8/internal/xa0;

.field public final synthetic e:Ljava/util/Map;

.field public final synthetic f:Lcom/android/tools/r8/internal/wa0;

.field public final synthetic g:Lcom/android/tools/r8/internal/za0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/va0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/xa0;Ljava/util/Map;Lcom/android/tools/r8/internal/wa0;Lcom/android/tools/r8/internal/za0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/lw1;->b:Lcom/android/tools/r8/internal/va0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/lw1;->c:Lcom/android/tools/r8/graph/E0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/lw1;->d:Lcom/android/tools/r8/internal/xa0;

    iput-object p4, p0, Lcom/android/tools/r8/internal/lw1;->e:Ljava/util/Map;

    iput-object p5, p0, Lcom/android/tools/r8/internal/lw1;->f:Lcom/android/tools/r8/internal/wa0;

    iput-object p6, p0, Lcom/android/tools/r8/internal/lw1;->g:Lcom/android/tools/r8/internal/za0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/lw1;->b:Lcom/android/tools/r8/internal/va0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/lw1;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/lw1;->d:Lcom/android/tools/r8/internal/xa0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/lw1;->e:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/tools/r8/internal/lw1;->f:Lcom/android/tools/r8/internal/wa0;

    iget-object v5, p0, Lcom/android/tools/r8/internal/lw1;->g:Lcom/android/tools/r8/internal/za0;

    move-object v6, p1

    check-cast v6, Lcom/android/tools/r8/graph/j1;

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/va0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/xa0;Ljava/util/Map;Lcom/android/tools/r8/internal/wa0;Lcom/android/tools/r8/internal/za0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method
