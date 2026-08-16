.class public final Lcom/android/tools/r8/internal/BA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/n6;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/n6;->a()Lcom/android/tools/r8/internal/n6;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/BA;->a:Lcom/android/tools/r8/internal/n6;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/LinkedList;)Lcom/android/tools/r8/internal/BA;
    .locals 1

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/LA0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/LA0;-><init>(Lcom/android/tools/r8/internal/BA;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/AA;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/KA0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/KA0;-><init>(Lcom/android/tools/r8/internal/BA;Lcom/android/tools/r8/internal/AA;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/AA;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/AA;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/internal/BA;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/BA;->a:Lcom/android/tools/r8/internal/n6;

    .line 6
    iget-object v0, v0, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    .line 7
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/BA;->a:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
