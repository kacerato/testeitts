.class public final synthetic Lcom/android/tools/r8/internal/Fp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/pU;

.field public final synthetic b:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic c:Ljava/util/function/BiFunction;

.field public final synthetic d:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/pU;Lcom/android/tools/r8/internal/Hz;Ljava/util/function/BiFunction;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Fp1;->a:Lcom/android/tools/r8/internal/pU;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Fp1;->b:Lcom/android/tools/r8/internal/Hz;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Fp1;->c:Ljava/util/function/BiFunction;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Fp1;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/Fp1;->a:Lcom/android/tools/r8/internal/pU;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Fp1;->b:Lcom/android/tools/r8/internal/Hz;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Fp1;->c:Ljava/util/function/BiFunction;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Fp1;->d:Ljava/util/Map;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/pU;->a(Lcom/android/tools/r8/internal/Hz;Ljava/util/function/BiFunction;Ljava/util/Map;Lcom/android/tools/r8/graph/A2;Ljava/lang/Object;)V

    return-void
.end method
