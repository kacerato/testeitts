.class public final Lcom/android/tools/r8/internal/A4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/AssertionsConfiguration;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/AbstractCollection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/android/tools/r8/AssertionsConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/A4;->a:Lcom/android/tools/r8/AssertionsConfiguration;

    sget-boolean p2, Lcom/android/tools/r8/internal/A4;->d:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/A4;->b:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/A4;->a()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/AbstractCollection;

    iput-object p1, p0, Lcom/android/tools/r8/internal/A4;->c:Ljava/util/AbstractCollection;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/android/tools/r8/AssertionsConfiguration;)V
    .locals 1

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/AssertionsConfiguration;->isAssertionHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/AssertionsConfiguration;->getAssertionHandler()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/AssertionsConfiguration;->getAssertionHandler()Lcom/android/tools/r8/references/MethodReference;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/A4;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/A4;->a:Lcom/android/tools/r8/AssertionsConfiguration;

    invoke-virtual {v0}, Lcom/android/tools/r8/AssertionsConfiguration;->isAssertionHandler()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/A4;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 4
    sget-object v0, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    return-object v0

    .line 5
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/A4;->b:Ljava/util/List;

    new-instance v2, Lcom/android/tools/r8/internal/ly0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/ly0;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method
