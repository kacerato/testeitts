.class abstract Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Operators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "OperatorHelper"
.end annotation


# instance fields
.field alternatives:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "[",
            "Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;",
            ">;"
        }
    .end annotation
.end field

.field final name:Lorg/openjdk/tools/javac/util/Name;

.field operatorSuppliers:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Ljava/util/function/Supplier<",
            "Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Operators;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V
    .locals 1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;->alternatives:Ljava/util/Optional;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;->operatorSuppliers:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/comp/Operators;->operatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;->name:Lorg/openjdk/tools/javac/util/Name;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;)[Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;->initOperators()[Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(I)[Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;->lambda$initOperators$0(I)[Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p0

    return-object p0
.end method

.method private initOperators()[Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;->operatorSuppliers:Lorg/openjdk/tools/javac/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/comp/G1;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/comp/G1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/comp/H1;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/comp/H1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;->alternatives:Ljava/util/Optional;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;->operatorSuppliers:Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method

.method private static synthetic lambda$initOperators$0(I)[Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 0

    new-array p0, p0, [Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    return-object p0
.end method


# virtual methods
.method public final doLookup(Ljava/util/function/Predicate;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;->alternatives:Ljava/util/Optional;

    new-instance v1, Lorg/openjdk/tools/javac/comp/I1;

    invoke-direct {v1, p0}, Lorg/openjdk/tools/javac/comp/I1;-><init>(Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;->this$0:Lorg/openjdk/tools/javac/comp/Operators;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Operators;->noOpSymbol:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    return-object p1
.end method
