.class public final synthetic Lcom/android/tools/r8/internal/d81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/cz;

.field public final synthetic c:Lcom/android/tools/r8/graph/u1;

.field public final synthetic d:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/cz;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/d81;->b:Lcom/android/tools/r8/internal/cz;

    iput-object p2, p0, Lcom/android/tools/r8/internal/d81;->c:Lcom/android/tools/r8/graph/u1;

    iput-object p3, p0, Lcom/android/tools/r8/internal/d81;->d:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/d81;->b:Lcom/android/tools/r8/internal/cz;

    iget-object v1, p0, Lcom/android/tools/r8/internal/d81;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v2, p0, Lcom/android/tools/r8/internal/d81;->d:Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/cz;->a(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
