.class public final synthetic Lorg/openjdk/tools/javac/comp/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Resolve$6;

.field public final synthetic c:Lorg/openjdk/tools/javac/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve$6;Lorg/openjdk/tools/javac/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/k2;->b:Lorg/openjdk/tools/javac/comp/Resolve$6;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/k2;->c:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/k2;->b:Lorg/openjdk/tools/javac/comp/Resolve$6;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/k2;->c:Lorg/openjdk/tools/javac/util/List;

    check-cast p1, Lorg/openjdk/tools/javac/util/Name;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/comp/Resolve$6;->b(Lorg/openjdk/tools/javac/comp/Resolve$6;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method
