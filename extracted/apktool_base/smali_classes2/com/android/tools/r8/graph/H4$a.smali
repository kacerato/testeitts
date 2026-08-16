.class public Lcom/android/tools/r8/graph/H4$a;
.super Lcom/android/tools/r8/graph/H4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/H4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final e:Lcom/android/tools/r8/graph/H4$a;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/graph/H4$a;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/android/tools/r8/graph/H4$a;-><init>(Ljava/util/Map;Ljava/util/List;Ljava/util/List;I)V

    sput-object v0, Lcom/android/tools/r8/graph/H4$a;->e:Lcom/android/tools/r8/graph/H4$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/List;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/H4;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/H4$a;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/tools/r8/graph/H4$a;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/graph/H4$a;->c:Ljava/util/List;

    iput p4, p0, Lcom/android/tools/r8/graph/H4$a;->d:I

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/D4;)V
    .locals 0

    .line 4
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/H4$a;
    .locals 0

    .line 1
    return-object p0
.end method

.method public a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/tools/r8/graph/D4;",
            ">;",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/tools/r8/graph/C4;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/H4$a;->a:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/graph/r8;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/r8;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/graph/H4$a;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/graph/H4$a;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/H4$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/H4$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/graph/H4$a;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/graph/H4$a;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
