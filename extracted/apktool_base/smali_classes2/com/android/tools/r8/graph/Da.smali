.class public final synthetic Lcom/android/tools/r8/graph/Da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/R3;

.field public final synthetic c:Lcom/android/tools/r8/graph/j1;

.field public final synthetic d:Lcom/android/tools/r8/graph/H2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/R3;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Da;->b:Lcom/android/tools/r8/graph/R3;

    iput-object p2, p0, Lcom/android/tools/r8/graph/Da;->c:Lcom/android/tools/r8/graph/j1;

    iput-object p3, p0, Lcom/android/tools/r8/graph/Da;->d:Lcom/android/tools/r8/graph/H2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/Da;->b:Lcom/android/tools/r8/graph/R3;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Da;->c:Lcom/android/tools/r8/graph/j1;

    iget-object v2, p0, Lcom/android/tools/r8/graph/Da;->d:Lcom/android/tools/r8/graph/H2;

    check-cast p1, Lcom/android/tools/r8/graph/R3$a;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/graph/R3;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/R3$a;)V

    return-void
.end method
