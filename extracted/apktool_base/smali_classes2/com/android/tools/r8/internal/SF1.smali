.class public final synthetic Lcom/android/tools/r8/internal/SF1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/zz;

.field public final synthetic c:Ljava/util/function/Predicate;

.field public final synthetic d:Ljava/util/function/BiPredicate;

.field public final synthetic e:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/zz;Ljava/util/function/Predicate;Ljava/util/function/BiPredicate;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/SF1;->b:Lcom/android/tools/r8/internal/zz;

    iput-object p2, p0, Lcom/android/tools/r8/internal/SF1;->c:Ljava/util/function/Predicate;

    iput-object p3, p0, Lcom/android/tools/r8/internal/SF1;->d:Ljava/util/function/BiPredicate;

    iput-object p4, p0, Lcom/android/tools/r8/internal/SF1;->e:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/SF1;->b:Lcom/android/tools/r8/internal/zz;

    iget-object v1, p0, Lcom/android/tools/r8/internal/SF1;->c:Ljava/util/function/Predicate;

    iget-object v2, p0, Lcom/android/tools/r8/internal/SF1;->d:Ljava/util/function/BiPredicate;

    iget-object v3, p0, Lcom/android/tools/r8/internal/SF1;->e:Ljava/util/function/Predicate;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/zz;->a(Ljava/util/function/Predicate;Ljava/util/function/BiPredicate;Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
