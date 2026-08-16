.class public final synthetic Lcom/android/tools/r8/internal/FJ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/JR;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/android/tools/r8/graph/x0;

.field public final synthetic d:Lcom/android/tools/r8/origin/Origin;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/JR;Ljava/util/Map;Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/FJ0;->a:Lcom/android/tools/r8/internal/JR;

    iput-object p2, p0, Lcom/android/tools/r8/internal/FJ0;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/tools/r8/internal/FJ0;->c:Lcom/android/tools/r8/graph/x0;

    iput-object p4, p0, Lcom/android/tools/r8/internal/FJ0;->d:Lcom/android/tools/r8/origin/Origin;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/FJ0;->a:Lcom/android/tools/r8/internal/JR;

    iget-object v1, p0, Lcom/android/tools/r8/internal/FJ0;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/tools/r8/internal/FJ0;->c:Lcom/android/tools/r8/graph/x0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/FJ0;->d:Lcom/android/tools/r8/origin/Origin;

    move-object v4, p1

    check-cast v4, Ljava/lang/Integer;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/internal/IR;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/JR;->a(Ljava/util/Map;Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/origin/Origin;Ljava/lang/Integer;Lcom/android/tools/r8/internal/IR;)V

    return-void
.end method
