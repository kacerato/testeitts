.class public final synthetic Lorg/openjdk/tools/javac/comp/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$2;

.field public final synthetic c:Lorg/openjdk/tools/javac/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$2;Lorg/openjdk/tools/javac/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/n2;->b:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$2;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/n2;->c:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/n2;->b:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$2;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/n2;->c:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$2;->a(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$2;Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
