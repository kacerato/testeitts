.class public final synthetic Lcom/android/tools/r8/graph/Z9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Ljava/util/function/Predicate;

.field public final synthetic c:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Z9;->b:Ljava/util/function/Predicate;

    iput-object p2, p0, Lcom/android/tools/r8/graph/Z9;->c:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/Z9;->b:Ljava/util/function/Predicate;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Z9;->c:Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/function/Predicate;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method
