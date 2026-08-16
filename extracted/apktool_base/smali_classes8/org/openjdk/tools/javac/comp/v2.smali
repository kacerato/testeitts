.class public final synthetic Lorg/openjdk/tools/javac/comp/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/TypeEnter;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/TypeEnter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/v2;->b:Lorg/openjdk/tools/javac/comp/TypeEnter;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/v2;->b:Lorg/openjdk/tools/javac/comp/TypeEnter;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->a(Lorg/openjdk/tools/javac/comp/TypeEnter;Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;)Z

    move-result p1

    return p1
.end method
