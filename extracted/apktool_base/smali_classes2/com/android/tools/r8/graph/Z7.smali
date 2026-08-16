.class public final synthetic Lcom/android/tools/r8/graph/Z7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Jy;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/H2;

.field public final synthetic c:Ljava/util/function/Predicate;

.field public final synthetic d:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/H2;Ljava/util/function/Predicate;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Z7;->b:Lcom/android/tools/r8/graph/H2;

    iput-object p2, p0, Lcom/android/tools/r8/graph/Z7;->c:Ljava/util/function/Predicate;

    iput-object p3, p0, Lcom/android/tools/r8/graph/Z7;->d:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/Z7;->b:Lcom/android/tools/r8/graph/H2;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Z7;->c:Ljava/util/function/Predicate;

    iget-object v2, p0, Lcom/android/tools/r8/graph/Z7;->d:Ljava/util/function/Function;

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/graph/H2;->a(Ljava/util/function/Predicate;Ljava/util/function/Function;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method
