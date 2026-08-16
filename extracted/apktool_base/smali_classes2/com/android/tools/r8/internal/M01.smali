.class public final synthetic Lcom/android/tools/r8/internal/M01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/c4;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/c4;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/M01;->b:Lcom/android/tools/r8/graph/c4;

    iput-object p2, p0, Lcom/android/tools/r8/internal/M01;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/M01;->b:Lcom/android/tools/r8/graph/c4;

    iget-object v1, p0, Lcom/android/tools/r8/internal/M01;->c:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/WZ;->a(Lcom/android/tools/r8/graph/c4;Ljava/util/Map;Lcom/android/tools/r8/graph/H2;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method
