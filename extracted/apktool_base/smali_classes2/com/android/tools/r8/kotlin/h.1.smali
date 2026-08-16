.class public final Lcom/android/tools/r8/kotlin/h;
.super Lcom/android/tools/r8/kotlin/m;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/kotlin/n;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/kotlin/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/kotlin/m;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/h;->b:Lcom/android/tools/r8/kotlin/n;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/GP;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/HP;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/HP;-><init>(Lcom/android/tools/r8/internal/GP;)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/h;->b:Lcom/android/tools/r8/kotlin/n;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/n;->a(Lcom/android/tools/r8/graph/d1;)V

    return-void
.end method

.method public final b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/h;->b:Lcom/android/tools/r8/kotlin/n;

    new-instance v1, Lcom/android/tools/r8/kotlin/V3;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/kotlin/V3;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/kotlin/n;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    return p1
.end method
