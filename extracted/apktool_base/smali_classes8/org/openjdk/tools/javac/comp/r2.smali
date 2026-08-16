.class public final synthetic Lorg/openjdk/tools/javac/comp/r2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    check-cast p2, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;->reduce(Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;)Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    move-result-object p1

    return-object p1
.end method
