.class public final synthetic Lcom/android/tools/r8/internal/NA1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/yb;

.field public final synthetic c:Lcom/android/tools/r8/graph/y;

.field public final synthetic d:Lcom/android/tools/r8/internal/O8;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/yb;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/NA1;->b:Lcom/android/tools/r8/internal/yb;

    iput-object p2, p0, Lcom/android/tools/r8/internal/NA1;->c:Lcom/android/tools/r8/graph/y;

    iput-object p3, p0, Lcom/android/tools/r8/internal/NA1;->d:Lcom/android/tools/r8/internal/O8;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/NA1;->b:Lcom/android/tools/r8/internal/yb;

    iget-object v1, p0, Lcom/android/tools/r8/internal/NA1;->c:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/NA1;->d:Lcom/android/tools/r8/internal/O8;

    check-cast p1, Lcom/android/tools/r8/internal/H9;

    check-cast p2, Lcom/android/tools/r8/internal/S60;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/yb;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method
