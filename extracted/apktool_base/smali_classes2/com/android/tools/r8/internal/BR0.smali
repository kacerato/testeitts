.class public final synthetic Lcom/android/tools/r8/internal/BR0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Ljava/util/function/BiFunction;

.field public final synthetic c:Lcom/android/tools/r8/graph/G0;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiFunction;Lcom/android/tools/r8/graph/G0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/BR0;->b:Ljava/util/function/BiFunction;

    iput-object p2, p0, Lcom/android/tools/r8/internal/BR0;->c:Lcom/android/tools/r8/graph/G0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/BR0;->b:Ljava/util/function/BiFunction;

    iget-object v1, p0, Lcom/android/tools/r8/internal/BR0;->c:Lcom/android/tools/r8/graph/G0;

    check-cast p1, Lcom/android/tools/r8/internal/fv;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/Pn;->a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/internal/fv;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
