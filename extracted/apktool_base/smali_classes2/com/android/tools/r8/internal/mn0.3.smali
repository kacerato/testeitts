.class public abstract Lcom/android/tools/r8/internal/mn0;
.super Lcom/android/tools/r8/internal/m80;
.source "SourceFile"


# static fields
.field public static final synthetic f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/kn0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kn0;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/m80;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 2
    invoke-virtual {p4, p3, p1, p2}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/internal/Yx;)Lcom/android/tools/r8/internal/ln0;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/ln0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ln0;-><init>()V

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/El1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/El1;-><init>(Lcom/android/tools/r8/internal/mn0;)V

    invoke-interface {p0, v1}, Lcom/android/tools/r8/internal/Yx;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/d1;Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Gl1;

    invoke-direct {v0, p4, p1, p2, p3}, Lcom/android/tools/r8/internal/Gl1;-><init>(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/d1;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/ln0;
    .locals 2

    .line 3
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/Dl1;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/android/tools/r8/internal/Dl1;-><init>(Lcom/android/tools/r8/internal/mn0;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/d1;)V

    invoke-static {v1}, Lcom/android/tools/r8/internal/mn0;->b(Lcom/android/tools/r8/internal/Yx;)Lcom/android/tools/r8/internal/ln0;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/util/Set;
    .locals 2

    .line 5
    new-instance v0, Lcom/android/tools/r8/graph/I9;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/I9;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/Fl1;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Fl1;-><init>(Ljava/util/Set;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v1
.end method
