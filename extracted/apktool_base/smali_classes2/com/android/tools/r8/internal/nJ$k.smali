.class public Lcom/android/tools/r8/internal/nJ$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/nJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public a:Z

.field public final b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$k;->a:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/nJ$k;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/sJ;)Z
    .locals 0

    .line 8
    invoke-interface {p3, p0, p1, p2}, Lcom/android/tools/r8/internal/sJ;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/E0;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/E0;)Z
    .locals 0

    .line 4
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->b1()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/E0;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/E0;)Z
    .locals 0

    .line 3
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/E0;)Z
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object p0

    .line 7
    const-string p1, "java.util.zip.ZipFile"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->b1()Ljava/lang/String;

    move-result-object p0

    const-string p1, "java.lang.AutoCloseable"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/internal/nJ$k;
    .locals 2

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/nJ$k;->c:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$k;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/nJ$k;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/Hm1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Hm1;-><init>(Lcom/android/tools/r8/references/ClassReference;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$k;->a:Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/E0;)Z
    .locals 2

    .line 5
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$k;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/nJ$k;->b:Ljava/util/ArrayList;

    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Jm1;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/tools/r8/internal/Jm1;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/E0;)V

    .line 7
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .locals 2

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/nJ$k;->c:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$k;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/nJ$k;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/Im1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Im1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/nJ$k;->c:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$k;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/nJ$k;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/Gm1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Gm1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/nJ$k;->c:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$k;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/nJ$k;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/Km1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Km1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
