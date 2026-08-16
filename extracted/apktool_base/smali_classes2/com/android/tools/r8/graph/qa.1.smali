.class public final synthetic Lcom/android/tools/r8/graph/qa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/P4;

.field public final synthetic b:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/P4;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/qa;->a:Lcom/android/tools/r8/graph/P4;

    iput-object p2, p0, Lcom/android/tools/r8/graph/qa;->b:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/qa;->a:Lcom/android/tools/r8/graph/P4;

    iget-object v1, p0, Lcom/android/tools/r8/graph/qa;->b:Ljava/util/function/Function;

    check-cast p1, Lcom/android/tools/r8/graph/F2;

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/graph/P4;->a(Lcom/android/tools/r8/graph/P4;Ljava/util/function/Function;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/graph/j1;)V

    return-void
.end method
