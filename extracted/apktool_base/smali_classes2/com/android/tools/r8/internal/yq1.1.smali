.class public final synthetic Lcom/android/tools/r8/internal/yq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic b:Ljava/lang/Iterable;

.field public final synthetic c:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Iterable;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/yq1;->b:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/android/tools/r8/internal/yq1;->c:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/yq1;->b:Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/android/tools/r8/internal/yq1;->c:Ljava/util/function/Predicate;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/qK;->d(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
