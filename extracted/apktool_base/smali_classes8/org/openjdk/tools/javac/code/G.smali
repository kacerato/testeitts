.class public final synthetic Lorg/openjdk/tools/javac/code/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/code/TypeAnnotations;

.field public final synthetic c:Lorg/openjdk/tools/javac/code/Symbol;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/TypeAnnotations;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/G;->b:Lorg/openjdk/tools/javac/code/TypeAnnotations;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/G;->c:Lorg/openjdk/tools/javac/code/Symbol;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/G;->b:Lorg/openjdk/tools/javac/code/TypeAnnotations;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/G;->c:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast p1, Lorg/openjdk/tools/javac/code/Attribute;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/code/TypeAnnotations;->e(Lorg/openjdk/tools/javac/code/TypeAnnotations;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Attribute;)Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    move-result-object p1

    return-object p1
.end method
