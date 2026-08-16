.class public final synthetic Lcom/android/tools/r8/internal/yU0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Qu;

.field public final synthetic b:Lcom/android/tools/r8/internal/Ef;

.field public final synthetic c:Lcom/android/tools/r8/internal/f6;

.field public final synthetic d:Lcom/android/tools/r8/internal/b40;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Qu;Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/internal/b40;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/yU0;->a:Lcom/android/tools/r8/internal/Qu;

    iput-object p2, p0, Lcom/android/tools/r8/internal/yU0;->b:Lcom/android/tools/r8/internal/Ef;

    iput-object p3, p0, Lcom/android/tools/r8/internal/yU0;->c:Lcom/android/tools/r8/internal/f6;

    iput-object p4, p0, Lcom/android/tools/r8/internal/yU0;->d:Lcom/android/tools/r8/internal/b40;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/yU0;->a:Lcom/android/tools/r8/internal/Qu;

    iget-object v1, p0, Lcom/android/tools/r8/internal/yU0;->b:Lcom/android/tools/r8/internal/Ef;

    iget-object v2, p0, Lcom/android/tools/r8/internal/yU0;->c:Lcom/android/tools/r8/internal/f6;

    iget-object v3, p0, Lcom/android/tools/r8/internal/yU0;->d:Lcom/android/tools/r8/internal/b40;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/graph/H5;

    move-object v5, p2

    check-cast v5, Ljava/util/Set;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/internal/b40;Lcom/android/tools/r8/graph/H5;Ljava/util/Set;)V

    return-void
.end method
