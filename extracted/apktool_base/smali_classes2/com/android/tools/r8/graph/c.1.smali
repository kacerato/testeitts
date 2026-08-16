.class public final Lcom/android/tools/r8/graph/c;
.super Lcom/android/tools/r8/graph/d;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/graph/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/c;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/c;-><init>()V

    sput-object v0, Lcom/android/tools/r8/graph/c;->a:Lcom/android/tools/r8/graph/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/O5;)Lcom/android/tools/r8/graph/d;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/d;
    .locals 0

    .line 2
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/d;)Lcom/android/tools/r8/graph/d;
    .locals 0

    .line 3
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 4
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 7
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Should never be iterating the access contexts when they are unknown"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 0

    .line 5
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Ljava/util/function/Predicate;)Z
    .locals 0

    .line 6
    const/4 p1, 0x1

    return p1
.end method

.method public final b()I
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "Should never be querying the number of access contexts when they are unknown"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/util/function/Predicate;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
