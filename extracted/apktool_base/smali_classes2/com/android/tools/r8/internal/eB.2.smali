.class public final Lcom/android/tools/r8/internal/eB;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Ljava/util/LinkedHashSet;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/ArrayDeque;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedHashSet;Ljava/util/Set;Ljava/util/ArrayDeque;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/eB;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/eB;->a:Ljava/util/LinkedHashSet;

    iput-object p2, p0, Lcom/android/tools/r8/internal/eB;->b:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/internal/eB;->c:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lcom/android/tools/r8/internal/eB;

    iget-object v0, p0, Lcom/android/tools/r8/internal/eB;->a:Ljava/util/LinkedHashSet;

    iget-object v1, p1, Lcom/android/tools/r8/internal/eB;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/eB;->b:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/tools/r8/internal/eB;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method
