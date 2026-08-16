.class public final synthetic Lcom/android/tools/r8/graph/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/android/tools/r8/graph/E0;

.field public final synthetic d:Lcom/android/tools/r8/graph/d1;

.field public final synthetic e:Lcom/android/tools/r8/graph/M2;

.field public final synthetic f:Lcom/android/tools/r8/graph/X5;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/X5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/ac;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/tools/r8/graph/ac;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/tools/r8/graph/ac;->c:Lcom/android/tools/r8/graph/E0;

    iput-object p4, p0, Lcom/android/tools/r8/graph/ac;->d:Lcom/android/tools/r8/graph/d1;

    iput-object p5, p0, Lcom/android/tools/r8/graph/ac;->e:Lcom/android/tools/r8/graph/M2;

    iput-object p6, p0, Lcom/android/tools/r8/graph/ac;->f:Lcom/android/tools/r8/graph/X5;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/graph/ac;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/tools/r8/graph/ac;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/tools/r8/graph/ac;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v3, p0, Lcom/android/tools/r8/graph/ac;->d:Lcom/android/tools/r8/graph/d1;

    iget-object v4, p0, Lcom/android/tools/r8/graph/ac;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p0, Lcom/android/tools/r8/graph/ac;->f:Lcom/android/tools/r8/graph/X5;

    move-object v6, p1

    check-cast v6, Lcom/android/tools/r8/graph/M2;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-static/range {v0 .. v7}, Lcom/android/tools/r8/graph/Y5;->a(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/X5;Lcom/android/tools/r8/graph/M2;Ljava/lang/Boolean;)V

    return-void
.end method
