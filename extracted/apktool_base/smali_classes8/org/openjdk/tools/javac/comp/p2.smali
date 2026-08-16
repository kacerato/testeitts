.class public final synthetic Lorg/openjdk/tools/javac/comp/p2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/p2;->b:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/p2;->b:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    check-cast p1, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->b(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;)Z

    move-result p1

    return p1
.end method
