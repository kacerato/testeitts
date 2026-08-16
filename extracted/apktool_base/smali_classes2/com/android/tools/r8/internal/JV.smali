.class public final Lcom/android/tools/r8/internal/JV;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/naming/k$c;

.field public final b:Lcom/android/tools/r8/naming/V;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/naming/V;Lcom/android/tools/r8/naming/k$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/JV;->b:Lcom/android/tools/r8/naming/V;

    iput-object p2, p0, Lcom/android/tools/r8/internal/JV;->a:Lcom/android/tools/r8/naming/k$c;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/naming/k$b;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/JV;->a:Lcom/android/tools/r8/naming/k$c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/naming/k$c;->a(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/JV;->a:Lcom/android/tools/r8/naming/k$c;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/k$c;->a()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/VJ0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/VJ0;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
