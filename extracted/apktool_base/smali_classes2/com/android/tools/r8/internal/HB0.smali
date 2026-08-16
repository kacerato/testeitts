.class public final synthetic Lcom/android/tools/r8/internal/HB0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/eu;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/android/tools/r8/graph/M2;

.field public final synthetic d:Lcom/android/tools/r8/graph/u1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/eu;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/u1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/HB0;->a:Lcom/android/tools/r8/internal/eu;

    iput-object p2, p0, Lcom/android/tools/r8/internal/HB0;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/tools/r8/internal/HB0;->c:Lcom/android/tools/r8/graph/M2;

    iput-object p4, p0, Lcom/android/tools/r8/internal/HB0;->d:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/HB0;->a:Lcom/android/tools/r8/internal/eu;

    iget-object v1, p0, Lcom/android/tools/r8/internal/HB0;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/tools/r8/internal/HB0;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/HB0;->d:Lcom/android/tools/r8/graph/u1;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/internal/cu;

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/CU;->a(Lcom/android/tools/r8/internal/eu;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/cu;)V

    return-void
.end method
