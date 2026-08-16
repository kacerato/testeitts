.class Lorg/openjdk/tools/javac/code/ClassFinder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/ClassFinder;->lambda$list$1(Ljava/lang/Iterable;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Ljava/util/Set;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/openjdk/javax/tools/JavaFileObject;",
        ">;"
    }
.end annotation


# instance fields
.field private next:Lorg/openjdk/javax/tools/JavaFileObject;

.field private final original:Ljava/util/Iterator;

.field final synthetic this$0:Lorg/openjdk/tools/javac/code/ClassFinder;

.field final synthetic val$kinds:Ljava/util/Set;

.field final synthetic val$listed:Ljava/lang/Iterable;

.field final synthetic val$p:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/ClassFinder;Ljava/lang/Iterable;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/ClassFinder$1;->this$0:Lorg/openjdk/tools/javac/code/ClassFinder;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/ClassFinder$1;->val$listed:Ljava/lang/Iterable;

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/ClassFinder$1;->val$p:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iput-object p4, p0, Lorg/openjdk/tools/javac/code/ClassFinder$1;->val$kinds:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/ClassFinder$1;->original:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder$1;->next:Lorg/openjdk/javax/tools/JavaFileObject;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder$1;->original:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder$1;->original:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaFileObject;->getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v1

    sget-object v2, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaFileObject;->getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v1

    sget-object v2, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/ClassFinder$1;->this$0:Lorg/openjdk/tools/javac/code/ClassFinder;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/ClassFinder;->currentLoc:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/code/ClassFinder;->isSigFile(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/ClassFinder$1;->val$p:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-wide v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/high16 v4, 0x100000000000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/ClassFinder$1;->val$kinds:Ljava/util/Set;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaFileObject;->getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder$1;->next:Lorg/openjdk/javax/tools/JavaFileObject;

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder$1;->next:Lorg/openjdk/javax/tools/JavaFileObject;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/ClassFinder$1;->next()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/ClassFinder$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder$1;->next:Lorg/openjdk/javax/tools/JavaFileObject;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lorg/openjdk/tools/javac/code/ClassFinder$1;->next:Lorg/openjdk/javax/tools/JavaFileObject;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
