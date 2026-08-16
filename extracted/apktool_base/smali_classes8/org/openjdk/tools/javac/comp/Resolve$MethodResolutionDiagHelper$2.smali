.class final Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$2;
.super Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field containsPredicate:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/Object;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;-><init>(Ljava/lang/String;[Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;)V

    new-instance p1, Lorg/openjdk/tools/javac/comp/o2;

    invoke-direct {p1, p0}, Lorg/openjdk/tools/javac/comp/o2;-><init>(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$2;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$2;->containsPredicate:Ljava/util/function/BiPredicate;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$2;Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$2;->lambda$containsAny$1(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$2;Ljava/lang/Object;Lorg/openjdk/tools/javac/util/List;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$2;->lambda$$0(Ljava/lang/Object;Lorg/openjdk/tools/javac/util/List;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$$0(Ljava/lang/Object;Lorg/openjdk/tools/javac/util/List;)Z
    .locals 1

    instance-of v0, p1, Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type;->containsAny(Lorg/openjdk/tools/javac/util/List;)Z

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$2;->containsAny(Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/util/List;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$containsAny$1(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$2;->containsPredicate:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p2, p1}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public containsAny(Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getArgs()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/javac/comp/n2;

    invoke-direct {v0, p0, p2}, Lorg/openjdk/tools/javac/comp/n2;-><init>(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$2;Lorg/openjdk/tools/javac/util/List;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 2

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;->matches(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$2;->containsAny(Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/util/List;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
