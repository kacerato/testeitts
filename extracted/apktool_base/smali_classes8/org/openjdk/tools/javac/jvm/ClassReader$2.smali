.class Lorg/openjdk/tools/javac/jvm/ClassReader$2;
.super Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/jvm/ClassReader;->initAttributeReaders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$2;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public read(Lorg/openjdk/tools/javac/code/Symbol;I)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$2;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-boolean v1, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->readAllOfClassFile:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->saveParameterNames:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    add-int/2addr p1, p2

    iput p1, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    goto :goto_1

    :cond_1
    :goto_0
    move-object p2, p1

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readCode(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/jvm/Code;

    move-result-object p1

    iput-object p1, p2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->code:Lorg/openjdk/tools/javac/jvm/Code;

    :goto_1
    return-void
.end method
