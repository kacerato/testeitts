.class public final synthetic Lcom/android/tools/r8/internal/Uq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/d1;

.field public final synthetic c:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/d1;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Uq1;->b:Lcom/android/tools/r8/graph/d1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Uq1;->c:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Uq1;->b:Lcom/android/tools/r8/graph/d1;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Uq1;->c:Ljava/util/function/Predicate;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/qU;->a(Lcom/android/tools/r8/graph/d1;Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    return p1
.end method
