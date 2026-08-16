.class public final Lcom/android/tools/r8/internal/zj;
.super Lcom/android/tools/r8/graph/n0;
.source "SourceFile"


# instance fields
.field public final synthetic f:Ljava/util/function/Predicate;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Predicate;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/android/tools/r8/internal/zj;->f:Ljava/util/function/Predicate;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/tools/r8/graph/n0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zj;->f:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->a()V

    :cond_0
    return-void
.end method
