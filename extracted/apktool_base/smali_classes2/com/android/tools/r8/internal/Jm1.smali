.class public final synthetic Lcom/android/tools/r8/internal/Jm1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Lcom/android/tools/r8/internal/pu0;

.field public final synthetic d:Lcom/android/tools/r8/graph/E0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Jm1;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Jm1;->c:Lcom/android/tools/r8/internal/pu0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Jm1;->d:Lcom/android/tools/r8/graph/E0;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Jm1;->b:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Jm1;->c:Lcom/android/tools/r8/internal/pu0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Jm1;->d:Lcom/android/tools/r8/graph/E0;

    check-cast p1, Lcom/android/tools/r8/internal/sJ;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/nJ$k;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/sJ;)Z

    move-result p1

    return p1
.end method
