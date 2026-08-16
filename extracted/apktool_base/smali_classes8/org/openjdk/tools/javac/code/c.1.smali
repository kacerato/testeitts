.class public final synthetic Lorg/openjdk/tools/javac/code/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/code/ClassFinder;

.field public final synthetic c:Ljava/lang/Iterable;

.field public final synthetic d:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

.field public final synthetic e:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/ClassFinder;Ljava/lang/Iterable;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/c;->b:Lorg/openjdk/tools/javac/code/ClassFinder;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/c;->c:Ljava/lang/Iterable;

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/c;->d:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iput-object p4, p0, Lorg/openjdk/tools/javac/code/c;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/c;->b:Lorg/openjdk/tools/javac/code/ClassFinder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/c;->c:Ljava/lang/Iterable;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/c;->d:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/c;->e:Ljava/util/Set;

    invoke-static {v0, v1, v2, v3}, Lorg/openjdk/tools/javac/code/ClassFinder;->b(Lorg/openjdk/tools/javac/code/ClassFinder;Ljava/lang/Iterable;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Ljava/util/Set;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
