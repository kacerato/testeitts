.class public final synthetic Lcom/android/tools/r8/internal/lF0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/v2;

.field public final synthetic c:Lcom/android/tools/r8/graph/j;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/lF0;->b:Lcom/android/tools/r8/graph/v2;

    iput-object p2, p0, Lcom/android/tools/r8/internal/lF0;->c:Lcom/android/tools/r8/graph/j;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/lF0;->b:Lcom/android/tools/r8/graph/v2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/lF0;->c:Lcom/android/tools/r8/graph/j;

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    check-cast p2, Lcom/android/tools/r8/internal/Yx0;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/G2;->a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Yx0;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method
