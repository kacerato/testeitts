.class public final synthetic Lcom/android/tools/r8/naming/a3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/L2;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/L2;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/a3;->b:Lcom/android/tools/r8/graph/L2;

    iput-object p2, p0, Lcom/android/tools/r8/naming/a3;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/naming/a3;->b:Lcom/android/tools/r8/graph/L2;

    iget-object v1, p0, Lcom/android/tools/r8/naming/a3;->c:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/naming/g0;->a(Lcom/android/tools/r8/graph/L2;Ljava/util/Map;Lcom/android/tools/r8/graph/j1;)Z

    move-result p1

    return p1
.end method
