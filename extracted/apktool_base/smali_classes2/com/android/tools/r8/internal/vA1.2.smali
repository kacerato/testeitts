.class public final synthetic Lcom/android/tools/r8/internal/vA1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/yX;

.field public final synthetic c:Lcom/android/tools/r8/internal/wX;

.field public final synthetic d:Lcom/android/tools/r8/graph/y;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/yX;Lcom/android/tools/r8/internal/wX;Lcom/android/tools/r8/graph/y;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/vA1;->b:Lcom/android/tools/r8/internal/yX;

    iput-object p2, p0, Lcom/android/tools/r8/internal/vA1;->c:Lcom/android/tools/r8/internal/wX;

    iput-object p3, p0, Lcom/android/tools/r8/internal/vA1;->d:Lcom/android/tools/r8/graph/y;

    iput-object p4, p0, Lcom/android/tools/r8/internal/vA1;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/vA1;->b:Lcom/android/tools/r8/internal/yX;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vA1;->c:Lcom/android/tools/r8/internal/wX;

    iget-object v2, p0, Lcom/android/tools/r8/internal/vA1;->d:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/internal/vA1;->e:Ljava/lang/Object;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/internal/wX;

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/yX;->a(Lcom/android/tools/r8/internal/wX;Lcom/android/tools/r8/graph/y;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/wX;)Lcom/android/tools/r8/internal/wX;

    move-result-object p1

    return-object p1
.end method
