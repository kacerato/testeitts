.class Lorg/openjdk/tools/javac/code/Types$ImplementationCache$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types$ImplementationCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field final cachedImpl:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

.field final checkResult:Z

.field final implFilter:Lorg/openjdk/tools/javac/util/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field final prevMark:I

.field final synthetic this$1:Lorg/openjdk/tools/javac/code/Types$ImplementationCache;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types$ImplementationCache;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/util/Filter;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;ZI)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$ImplementationCache$Entry;->this$1:Lorg/openjdk/tools/javac/code/Types$ImplementationCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Types$ImplementationCache$Entry;->cachedImpl:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/Types$ImplementationCache$Entry;->implFilter:Lorg/openjdk/tools/javac/util/Filter;

    iput-boolean p4, p0, Lorg/openjdk/tools/javac/code/Types$ImplementationCache$Entry;->checkResult:Z

    iput p5, p0, Lorg/openjdk/tools/javac/code/Types$ImplementationCache$Entry;->prevMark:I

    return-void
.end method


# virtual methods
.method public matches(Lorg/openjdk/tools/javac/util/Filter;ZI)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;ZI)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$ImplementationCache$Entry;->implFilter:Lorg/openjdk/tools/javac/util/Filter;

    if-ne v0, p1, :cond_0

    iget-boolean p1, p0, Lorg/openjdk/tools/javac/code/Types$ImplementationCache$Entry;->checkResult:Z

    if-ne p1, p2, :cond_0

    iget p1, p0, Lorg/openjdk/tools/javac/code/Types$ImplementationCache$Entry;->prevMark:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
