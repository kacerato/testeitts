.class public final Lcom/android/tools/r8/internal/i80;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Dg;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Dg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/i80;->a:Lcom/android/tools/r8/internal/Dg;

    return-void
.end method

.method public static a(Ljava/util/function/ObjIntConsumer;Lcom/android/tools/r8/internal/fv;I)V
    .locals 0

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/internal/fv;->c:Ljava/lang/Object;

    .line 4
    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-interface {p0, p1, p2}, Ljava/util/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    return-void
.end method

.method public static a(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/fv;)Z
    .locals 0

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/fv;->c:Ljava/lang/Object;

    .line 6
    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/util/function/ObjIntConsumer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/i80;->a:Lcom/android/tools/r8/internal/Dg;

    new-instance v1, Lcom/android/tools/r8/internal/Sd1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Sd1;-><init>(Ljava/util/function/ObjIntConsumer;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/LY;->a(Ljava/util/function/ObjIntConsumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/Predicate;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/i80;->a:Lcom/android/tools/r8/internal/Dg;

    new-instance v1, Lcom/android/tools/r8/internal/Rd1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Rd1;-><init>(Ljava/util/function/Predicate;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method
