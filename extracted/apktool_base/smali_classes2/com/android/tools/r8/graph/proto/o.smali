.class public final synthetic Lcom/android/tools/r8/graph/proto/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/proto/j;

.field public final synthetic c:Lcom/android/tools/r8/graph/j1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/proto/o;->b:Lcom/android/tools/r8/graph/proto/j;

    iput-object p2, p0, Lcom/android/tools/r8/graph/proto/o;->c:Lcom/android/tools/r8/graph/j1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/o;->b:Lcom/android/tools/r8/graph/proto/j;

    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/o;->c:Lcom/android/tools/r8/graph/j1;

    check-cast p1, Lcom/android/tools/r8/graph/j1$a;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/proto/j;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1$a;)V

    return-void
.end method
