.class public final Lcom/android/tools/r8/graph/O;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/G;

.field public final b:Lcom/android/tools/r8/graph/G;

.field public c:Lcom/android/tools/r8/graph/K;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/graph/G;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/graph/O;->c:Lcom/android/tools/r8/graph/K;

    iput-object p1, p0, Lcom/android/tools/r8/graph/O;->a:Lcom/android/tools/r8/graph/G;

    iput-object p2, p0, Lcom/android/tools/r8/graph/O;->b:Lcom/android/tools/r8/graph/G;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/W9;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/O;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W9;->C()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->C()I

    move-result v2

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W9;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Jq0;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/O;->c:Lcom/android/tools/r8/graph/K;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/android/tools/r8/graph/K;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/K;-><init>(Lcom/android/tools/r8/graph/O;)V

    iput-object v0, p0, Lcom/android/tools/r8/graph/O;->c:Lcom/android/tools/r8/graph/K;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/O;->c:Lcom/android/tools/r8/graph/K;

    return-object v0
.end method
