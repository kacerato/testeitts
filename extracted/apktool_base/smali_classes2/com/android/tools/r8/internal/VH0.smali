.class public final synthetic Lcom/android/tools/r8/internal/VH0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic b:Lcom/android/tools/r8/graph/d1;

.field public final synthetic c:Lcom/android/tools/r8/internal/RR;

.field public final synthetic d:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/RR;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/VH0;->a:Lcom/android/tools/r8/internal/Hz;

    iput-object p2, p0, Lcom/android/tools/r8/internal/VH0;->b:Lcom/android/tools/r8/graph/d1;

    iput-object p3, p0, Lcom/android/tools/r8/internal/VH0;->c:Lcom/android/tools/r8/internal/RR;

    iput-object p4, p0, Lcom/android/tools/r8/internal/VH0;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/VH0;->a:Lcom/android/tools/r8/internal/Hz;

    iget-object v1, p0, Lcom/android/tools/r8/internal/VH0;->b:Lcom/android/tools/r8/graph/d1;

    iget-object v2, p0, Lcom/android/tools/r8/internal/VH0;->c:Lcom/android/tools/r8/internal/RR;

    iget-object v3, p0, Lcom/android/tools/r8/internal/VH0;->d:Ljava/util/Map;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/graph/D0;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/internal/m80;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/RR;Ljava/util/Map;Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/internal/m80;)V

    return-void
.end method
