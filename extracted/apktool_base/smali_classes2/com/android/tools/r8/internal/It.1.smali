.class public final Lcom/android/tools/r8/internal/It;
.super Lcom/android/tools/r8/internal/l4;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/It;

.field public static final synthetic d:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/It;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/It;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/It;->c:Lcom/android/tools/r8/internal/It;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/l4;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/G00;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/l4;
    .locals 0

    .line 2
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/l4;
    .locals 0

    .line 3
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/internal/It;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->q()Lcom/android/tools/r8/internal/s4;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/s4;->a:Ljava/util/List;

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/l4;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final b()Z
    .locals 1

    .line 2
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/l4;
    .locals 0

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
