.class public final synthetic Lorg/openjdk/tools/javac/comp/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/code/Types;

.field public final synthetic c:Lorg/openjdk/tools/javac/code/Symtab;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Symtab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/o0;->b:Lorg/openjdk/tools/javac/code/Types;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/o0;->c:Lorg/openjdk/tools/javac/code/Symtab;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/o0;->b:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/o0;->c:Lorg/openjdk/tools/javac/code/Symtab;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep$3;->b(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1
.end method
