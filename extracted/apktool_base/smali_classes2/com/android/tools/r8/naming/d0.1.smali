.class public final Lcom/android/tools/r8/naming/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public a:Ljava/util/HashMap;

.field public b:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/naming/d0;->a:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/tools/r8/naming/d0;->b:Ljava/util/HashSet;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/fv;)Ljava/util/Set;
    .locals 0

    .line 9
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/L2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/naming/d0;->b:Ljava/util/HashSet;

    if-nez v0, :cond_2

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/naming/d0;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/naming/d0;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/d0;->a:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/d0;->b:Ljava/util/HashSet;

    .line 5
    :cond_2
    sget-object v0, Lcom/android/tools/r8/internal/vX;->a:Lcom/android/tools/r8/internal/vX;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 6
    new-instance v1, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/android/tools/r8/naming/d0;->a:Ljava/util/HashMap;

    new-instance v0, Lcom/android/tools/r8/naming/T2;

    invoke-direct {v0}, Lcom/android/tools/r8/naming/T2;-><init>()V

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcom/android/tools/r8/naming/d0;->b:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
