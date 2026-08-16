.class public final synthetic Lcom/android/tools/r8/internal/Ff1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Ljava/util/function/Consumer;

.field public final synthetic d:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ff1;->b:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ff1;->c:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Ff1;->d:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ff1;->b:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ff1;->c:Ljava/util/function/Consumer;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ff1;->d:Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/tools/r8/graph/n1;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/jY;->a(Ljava/util/Set;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/n1;)V

    return-void
.end method
