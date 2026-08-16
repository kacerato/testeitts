.class public final Lcom/android/tools/r8/kotlin/j;
.super Lcom/android/tools/r8/kotlin/m;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/kotlin/s0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/kotlin/s0;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/kotlin/m;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/j;->b:Lcom/android/tools/r8/kotlin/s0;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/RP;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/RP;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/j;->b:Lcom/android/tools/r8/kotlin/s0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/s0;->a(Lcom/android/tools/r8/graph/d1;)V

    return-void
.end method

.method public final b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/j;->b:Lcom/android/tools/r8/kotlin/s0;

    new-instance v1, Lcom/android/tools/r8/kotlin/X3;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/kotlin/X3;-><init>(Ljava/util/function/Consumer;)V

    const-string p1, "kotlin/Any"

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/tools/r8/kotlin/s0;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
