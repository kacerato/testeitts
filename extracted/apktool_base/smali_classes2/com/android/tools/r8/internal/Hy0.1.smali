.class public final synthetic Lcom/android/tools/r8/internal/Hy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/AM;

.field public final synthetic c:Lcom/android/tools/r8/graph/E0;

.field public final synthetic d:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/AM;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Hy0;->b:Lcom/android/tools/r8/internal/AM;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Hy0;->c:Lcom/android/tools/r8/graph/E0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Hy0;->d:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Hy0;->b:Lcom/android/tools/r8/internal/AM;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Hy0;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Hy0;->d:Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/tools/r8/internal/xO;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/AM;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/xO;)V

    return-void
.end method
