.class public final synthetic Lcom/android/tools/r8/internal/gX0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/function/BiFunction;

.field public final synthetic b:Ljava/util/function/BiFunction;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Lcom/android/tools/r8/internal/gt0;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;Ljava/util/Map;Lcom/android/tools/r8/internal/gt0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/gX0;->a:Ljava/util/function/BiFunction;

    iput-object p2, p0, Lcom/android/tools/r8/internal/gX0;->b:Ljava/util/function/BiFunction;

    iput-object p3, p0, Lcom/android/tools/r8/internal/gX0;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/tools/r8/internal/gX0;->d:Lcom/android/tools/r8/internal/gt0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/gX0;->a:Ljava/util/function/BiFunction;

    iget-object v1, p0, Lcom/android/tools/r8/internal/gX0;->b:Ljava/util/function/BiFunction;

    iget-object v2, p0, Lcom/android/tools/r8/internal/gX0;->c:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/tools/r8/internal/gX0;->d:Lcom/android/tools/r8/internal/gt0;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;Ljava/util/Map;Lcom/android/tools/r8/internal/gt0;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
