.class public final synthetic Lorg/openjdk/tools/javac/comp/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Enter;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Enter;Ljava/util/Map;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/f0;->b:Lorg/openjdk/tools/javac/comp/Enter;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/f0;->c:Ljava/util/Map;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/f0;->d:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/f0;->b:Lorg/openjdk/tools/javac/comp/Enter;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/f0;->c:Ljava/util/Map;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/f0;->d:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {v0, v1, v2, p1}, Lorg/openjdk/tools/javac/comp/Enter;->c(Lorg/openjdk/tools/javac/comp/Enter;Ljava/util/Map;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z

    move-result p1

    return p1
.end method
