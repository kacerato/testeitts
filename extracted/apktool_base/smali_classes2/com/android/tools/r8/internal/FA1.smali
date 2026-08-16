.class public final synthetic Lcom/android/tools/r8/internal/FA1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/ya0;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Lcom/android/tools/r8/internal/Dq;

.field public final synthetic f:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/ya0;Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/internal/Dq;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/FA1;->b:Lcom/android/tools/r8/internal/ya0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/FA1;->c:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/tools/r8/internal/FA1;->d:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/tools/r8/internal/FA1;->e:Lcom/android/tools/r8/internal/Dq;

    iput-object p5, p0, Lcom/android/tools/r8/internal/FA1;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/FA1;->b:Lcom/android/tools/r8/internal/ya0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/FA1;->c:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/tools/r8/internal/FA1;->d:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/tools/r8/internal/FA1;->e:Lcom/android/tools/r8/internal/Dq;

    iget-object v4, p0, Lcom/android/tools/r8/internal/FA1;->f:Ljava/util/Map;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/graph/H5;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/ya0;->a(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/internal/Dq;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
