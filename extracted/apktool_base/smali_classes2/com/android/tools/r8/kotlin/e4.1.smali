.class public final synthetic Lcom/android/tools/r8/kotlin/e4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/kotlin/n;

.field public final synthetic c:Lcom/android/tools/r8/internal/U6;

.field public final synthetic d:Lcom/android/tools/r8/graph/y;

.field public final synthetic e:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/kotlin/n;Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/e4;->b:Lcom/android/tools/r8/kotlin/n;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/e4;->c:Lcom/android/tools/r8/internal/U6;

    iput-object p3, p0, Lcom/android/tools/r8/kotlin/e4;->d:Lcom/android/tools/r8/graph/y;

    iput-object p4, p0, Lcom/android/tools/r8/kotlin/e4;->e:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/e4;->b:Lcom/android/tools/r8/kotlin/n;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/e4;->c:Lcom/android/tools/r8/internal/U6;

    iget-object v2, p0, Lcom/android/tools/r8/kotlin/e4;->d:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/kotlin/e4;->e:Ljava/util/function/Consumer;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/kotlin/n;->a(Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method
