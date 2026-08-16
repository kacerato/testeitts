.class Lorg/openjdk/tools/javac/jvm/ClassReader$ClassAttributeProxy;
.super Lorg/openjdk/tools/javac/code/Attribute;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassAttributeProxy"
.end annotation


# instance fields
.field classType:Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/code/Attribute;-><init>(Lorg/openjdk/tools/javac/code/Type;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$ClassAttributeProxy;->classType:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/tools/javac/code/Attribute$Visitor;)V
    .locals 0

    check-cast p1, Lorg/openjdk/tools/javac/jvm/ClassReader$ProxyVisitor;

    invoke-interface {p1, p0}, Lorg/openjdk/tools/javac/jvm/ClassReader$ProxyVisitor;->visitClassAttributeProxy(Lorg/openjdk/tools/javac/jvm/ClassReader$ClassAttributeProxy;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/*proxy class*/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$ClassAttributeProxy;->classType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
