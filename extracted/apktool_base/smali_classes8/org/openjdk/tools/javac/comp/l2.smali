.class public final synthetic Lorg/openjdk/tools/javac/comp/l2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Resolve$6;

.field public final synthetic c:Lorg/openjdk/tools/javac/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve$6;Lorg/openjdk/tools/javac/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/l2;->b:Lorg/openjdk/tools/javac/comp/Resolve$6;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/l2;->c:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/l2;->b:Lorg/openjdk/tools/javac/comp/Resolve$6;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/l2;->c:Lorg/openjdk/tools/javac/util/List;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    check-cast p2, Lorg/openjdk/tools/javac/util/Name;

    invoke-static {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$6;->d(Lorg/openjdk/tools/javac/comp/Resolve$6;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    return-object p1
.end method
