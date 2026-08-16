.class public final synthetic Lcom/android/tools/r8/graph/Fc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/b1;

.field public final synthetic c:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/b1;Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Fc;->b:Lcom/android/tools/r8/graph/b1;

    iput-object p2, p0, Lcom/android/tools/r8/graph/Fc;->c:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/Fc;->b:Lcom/android/tools/r8/graph/b1;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Fc;->c:Ljava/util/function/BiFunction;

    check-cast p1, Lcom/android/tools/r8/graph/r0;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/b1;->a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/graph/r0;)Lcom/android/tools/r8/graph/r0;

    move-result-object p1

    return-object p1
.end method
