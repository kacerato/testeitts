.class public final synthetic Lorg/openjdk/tools/javac/code/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/code/TypeAnnotations;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/TypeAnnotations;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/H;->b:Lorg/openjdk/tools/javac/code/TypeAnnotations;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/H;->b:Lorg/openjdk/tools/javac/code/TypeAnnotations;

    check-cast p1, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    check-cast p2, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    invoke-static {v0, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotations;->b(Lorg/openjdk/tools/javac/code/TypeAnnotations;Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;)Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    move-result-object p1

    return-object p1
.end method
