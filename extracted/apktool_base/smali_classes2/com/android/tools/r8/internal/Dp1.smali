.class public final synthetic Lcom/android/tools/r8/internal/Dp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/y;

.field public final synthetic b:Lcom/android/tools/r8/internal/h80;

.field public final synthetic c:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/h80;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Dp1;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Dp1;->b:Lcom/android/tools/r8/internal/h80;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Dp1;->c:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dp1;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Dp1;->b:Lcom/android/tools/r8/internal/h80;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Dp1;->c:Ljava/util/function/Function;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/pU;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/h80;Ljava/util/function/Function;Lcom/android/tools/r8/graph/A2;Ljava/lang/Object;)V

    return-void
.end method
