.class public final synthetic Lcom/android/tools/r8/internal/wA1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/yX;

.field public final synthetic c:Ljava/util/function/Function;

.field public final synthetic d:Lcom/android/tools/r8/internal/ns0;

.field public final synthetic e:Lcom/android/tools/r8/graph/y;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/yX;Ljava/util/function/Function;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/graph/y;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/wA1;->b:Lcom/android/tools/r8/internal/yX;

    iput-object p2, p0, Lcom/android/tools/r8/internal/wA1;->c:Ljava/util/function/Function;

    iput-object p3, p0, Lcom/android/tools/r8/internal/wA1;->d:Lcom/android/tools/r8/internal/ns0;

    iput-object p4, p0, Lcom/android/tools/r8/internal/wA1;->e:Lcom/android/tools/r8/graph/y;

    iput-object p5, p0, Lcom/android/tools/r8/internal/wA1;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/wA1;->b:Lcom/android/tools/r8/internal/yX;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wA1;->c:Ljava/util/function/Function;

    iget-object v2, p0, Lcom/android/tools/r8/internal/wA1;->d:Lcom/android/tools/r8/internal/ns0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/wA1;->e:Lcom/android/tools/r8/graph/y;

    iget-object v4, p0, Lcom/android/tools/r8/internal/wA1;->f:Ljava/lang/Object;

    move-object v6, p2

    check-cast v6, Lcom/android/tools/r8/internal/wX;

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/yX;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/graph/y;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/wX;)Lcom/android/tools/r8/internal/wX;

    move-result-object p1

    return-object p1
.end method
