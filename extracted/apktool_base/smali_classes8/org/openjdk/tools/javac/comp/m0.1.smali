.class public final synthetic Lorg/openjdk/tools/javac/comp/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiPredicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/openjdk/tools/javac/comp/InferenceContext;

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1
.end method
