.class public final synthetic Lcom/android/tools/r8/internal/hK0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Ju;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/android/tools/r8/graph/u1;

.field public final synthetic d:Lcom/android/tools/r8/internal/G9;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Ju;Ljava/util/List;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/G9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/hK0;->a:Lcom/android/tools/r8/internal/Ju;

    iput-object p2, p0, Lcom/android/tools/r8/internal/hK0;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/internal/hK0;->c:Lcom/android/tools/r8/graph/u1;

    iput-object p4, p0, Lcom/android/tools/r8/internal/hK0;->d:Lcom/android/tools/r8/internal/G9;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/hK0;->a:Lcom/android/tools/r8/internal/Ju;

    iget-object v1, p0, Lcom/android/tools/r8/internal/hK0;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/android/tools/r8/internal/hK0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v3, p0, Lcom/android/tools/r8/internal/hK0;->d:Lcom/android/tools/r8/internal/G9;

    move-object v4, p1

    check-cast v4, Ljava/lang/Integer;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/internal/F1;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Ju;->a(Ljava/util/List;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/G9;Ljava/lang/Integer;Lcom/android/tools/r8/internal/F1;)V

    return-void
.end method
