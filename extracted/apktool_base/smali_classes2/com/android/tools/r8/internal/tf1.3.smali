.class public final synthetic Lcom/android/tools/r8/internal/tf1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/android/tools/r8/graph/y;

.field public final synthetic d:Lcom/android/tools/r8/internal/x1;

.field public final synthetic e:Lcom/android/tools/r8/internal/wA;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/wA;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/tf1;->b:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/tools/r8/internal/tf1;->c:Lcom/android/tools/r8/graph/y;

    iput-object p3, p0, Lcom/android/tools/r8/internal/tf1;->d:Lcom/android/tools/r8/internal/x1;

    iput-object p4, p0, Lcom/android/tools/r8/internal/tf1;->e:Lcom/android/tools/r8/internal/wA;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/tf1;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/tools/r8/internal/tf1;->c:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/tf1;->d:Lcom/android/tools/r8/internal/x1;

    iget-object v3, p0, Lcom/android/tools/r8/internal/tf1;->e:Lcom/android/tools/r8/internal/wA;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/jE;->a(Ljava/util/Map;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/wA;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
