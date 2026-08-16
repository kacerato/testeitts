.class public final synthetic Lorg/openjdk/tools/javac/comp/o2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$2;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/o2;->b:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$2;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/o2;->b:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$2;

    check-cast p2, Lorg/openjdk/tools/javac/util/List;

    invoke-static {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$2;->b(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$2;Ljava/lang/Object;Lorg/openjdk/tools/javac/util/List;)Z

    move-result p1

    return p1
.end method
