.class public final synthetic Lcom/android/tools/r8/internal/ya1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/fB;

.field public final synthetic c:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/fB;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ya1;->b:Lcom/android/tools/r8/internal/fB;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ya1;->c:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ya1;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ya1;->c:Ljava/util/function/Predicate;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/fB;->d(Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
