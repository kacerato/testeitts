.class public final synthetic Lcom/android/tools/r8/internal/r61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/l1;

.field public final synthetic c:Lcom/android/tools/r8/internal/C7;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/C7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/r61;->b:Lcom/android/tools/r8/graph/l1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/r61;->c:Lcom/android/tools/r8/internal/C7;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/r61;->b:Lcom/android/tools/r8/graph/l1;

    iget-object v1, p0, Lcom/android/tools/r8/internal/r61;->c:Lcom/android/tools/r8/internal/C7;

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/bz;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/internal/zE;)Z

    move-result p1

    return p1
.end method
