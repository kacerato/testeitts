.class public final synthetic Lcom/android/tools/r8/internal/bl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/md;

.field public final synthetic c:Ljava/util/function/Predicate;

.field public final synthetic d:Lcom/android/tools/r8/internal/Cq;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/md;Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/Cq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/bl1;->b:Lcom/android/tools/r8/internal/md;

    iput-object p2, p0, Lcom/android/tools/r8/internal/bl1;->c:Ljava/util/function/Predicate;

    iput-object p3, p0, Lcom/android/tools/r8/internal/bl1;->d:Lcom/android/tools/r8/internal/Cq;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/bl1;->b:Lcom/android/tools/r8/internal/md;

    iget-object v1, p0, Lcom/android/tools/r8/internal/bl1;->c:Ljava/util/function/Predicate;

    iget-object v2, p0, Lcom/android/tools/r8/internal/bl1;->d:Lcom/android/tools/r8/internal/Cq;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/md;->a(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/Cq;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
