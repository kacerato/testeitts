.class public final synthetic Lorg/openjdk/tools/javac/comp/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Modules;

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Modules;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/g1;->b:Lorg/openjdk/tools/javac/comp/Modules;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/g1;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/g1;->b:Lorg/openjdk/tools/javac/comp/Modules;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/g1;->c:Ljava/util/Set;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/comp/Modules;->o(Lorg/openjdk/tools/javac/comp/Modules;Ljava/util/Set;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z

    move-result p1

    return p1
.end method
