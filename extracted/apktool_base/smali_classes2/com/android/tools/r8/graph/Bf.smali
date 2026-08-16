.class public final synthetic Lcom/android/tools/r8/graph/Bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/s0;

.field public final synthetic c:Ljava/util/function/Consumer;

.field public final synthetic d:Ljava/util/function/Consumer;

.field public final synthetic e:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/s0;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Bf;->b:Lcom/android/tools/r8/graph/s0;

    iput-object p2, p0, Lcom/android/tools/r8/graph/Bf;->c:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/android/tools/r8/graph/Bf;->d:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/android/tools/r8/graph/Bf;->e:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/graph/Bf;->b:Lcom/android/tools/r8/graph/s0;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Bf;->c:Ljava/util/function/Consumer;

    iget-object v2, p0, Lcom/android/tools/r8/graph/Bf;->d:Ljava/util/function/Consumer;

    iget-object v3, p0, Lcom/android/tools/r8/graph/Bf;->e:Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/graph/s0;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;)V

    return-void
.end method
