.class public final synthetic Lcom/android/tools/r8/kotlin/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/kotlin/X;

.field public final synthetic c:Lcom/android/tools/r8/graph/y;

.field public final synthetic d:Lcom/android/tools/r8/internal/Kl0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/kotlin/X;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Kl0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/y1;->b:Lcom/android/tools/r8/kotlin/X;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/y1;->c:Lcom/android/tools/r8/graph/y;

    iput-object p3, p0, Lcom/android/tools/r8/kotlin/y1;->d:Lcom/android/tools/r8/internal/Kl0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/y1;->b:Lcom/android/tools/r8/kotlin/X;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/y1;->c:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/kotlin/y1;->d:Lcom/android/tools/r8/internal/Kl0;

    check-cast p1, Lcom/android/tools/r8/graph/v2;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/kotlin/X;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Kl0;Lcom/android/tools/r8/graph/v2;)V

    return-void
.end method
