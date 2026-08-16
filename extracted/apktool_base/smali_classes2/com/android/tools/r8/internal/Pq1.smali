.class public final synthetic Lcom/android/tools/r8/internal/Pq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/qP;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/android/tools/r8/internal/DN;

.field public final synthetic e:Lcom/android/tools/r8/internal/oP;

.field public final synthetic f:Lcom/android/tools/r8/internal/QM;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/qP;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/DN;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/QM;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Pq1;->a:Lcom/android/tools/r8/internal/qP;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Pq1;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Pq1;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Pq1;->d:Lcom/android/tools/r8/internal/DN;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Pq1;->e:Lcom/android/tools/r8/internal/oP;

    iput-object p6, p0, Lcom/android/tools/r8/internal/Pq1;->f:Lcom/android/tools/r8/internal/QM;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pq1;->a:Lcom/android/tools/r8/internal/qP;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pq1;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Pq1;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Pq1;->d:Lcom/android/tools/r8/internal/DN;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Pq1;->e:Lcom/android/tools/r8/internal/oP;

    iget-object v5, p0, Lcom/android/tools/r8/internal/Pq1;->f:Lcom/android/tools/r8/internal/QM;

    move-object v6, p1

    check-cast v6, Lcom/android/tools/r8/internal/cP;

    move-object v7, p2

    check-cast v7, Ljava/util/Set;

    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/internal/qP;->a(Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/DN;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/QM;Lcom/android/tools/r8/internal/cP;Ljava/util/Set;)V

    return-void
.end method
