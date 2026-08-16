.class Lorg/openjdk/tools/javac/jvm/ClassReader$1;
.super Lorg/openjdk/tools/javac/code/Type$ClassType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/jvm/ClassReader;->classSigToType()Lorg/openjdk/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field completed:Z

.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$1;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-direct {p0, p2, p3, p4}, Lorg/openjdk/tools/javac/code/Type$ClassType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$1;->completed:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic getEnclosingType()Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassReader$1;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingType()Lorg/openjdk/tools/javac/code/Type;
    .locals 5

    .line 2
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$1;->completed:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$1;->completed:Z

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    .line 5
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    .line 6
    sget-object v1, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    if-eq v0, v1, :cond_1

    .line 7
    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Type$ClassType;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v3

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 10
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$1;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/ClassReader;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/openjdk/tools/javac/code/Type$ClassType;->setEnclosingType(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$1;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v3, v3, Lorg/openjdk/tools/javac/jvm/ClassReader;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, v0, v2, v1}, Lorg/openjdk/tools/javac/code/Types;->subst(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/openjdk/tools/javac/code/Type$ClassType;->setEnclosingType(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-super {p0, v1}, Lorg/openjdk/tools/javac/code/Type$ClassType;->setEnclosingType(Lorg/openjdk/tools/javac/code/Type;)V

    .line 13
    :cond_2
    :goto_0
    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Type$ClassType;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public setEnclosingType(Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
