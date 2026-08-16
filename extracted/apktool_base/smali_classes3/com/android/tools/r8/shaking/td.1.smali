.class public final synthetic Lcom/android/tools/r8/shaking/td;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic b:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic c:Lcom/android/tools/r8/graph/y;

.field public final synthetic d:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/y;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/td;->a:Lcom/android/tools/r8/internal/Hz;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/td;->b:Lcom/android/tools/r8/internal/Hz;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/td;->c:Lcom/android/tools/r8/graph/y;

    iput-object p4, p0, Lcom/android/tools/r8/shaking/td;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/shaking/td;->a:Lcom/android/tools/r8/internal/Hz;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/td;->b:Lcom/android/tools/r8/internal/Hz;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/td;->c:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/td;->d:Ljava/util/Map;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/graph/v2;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/internal/F4;

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/y;Ljava/util/Map;Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/internal/F4;)V

    return-void
.end method
