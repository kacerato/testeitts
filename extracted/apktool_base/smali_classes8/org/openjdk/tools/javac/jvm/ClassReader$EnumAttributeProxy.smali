.class Lorg/openjdk/tools/javac/jvm/ClassReader$EnumAttributeProxy;
.super Lorg/openjdk/tools/javac/code/Attribute;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnumAttributeProxy"
.end annotation


# instance fields
.field enumType:Lorg/openjdk/tools/javac/code/Type;

.field enumerator:Lorg/openjdk/tools/javac/util/Name;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/code/Attribute;-><init>(Lorg/openjdk/tools/javac/code/Type;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$EnumAttributeProxy;->enumType:Lorg/openjdk/tools/javac/code/Type;

    iput-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$EnumAttributeProxy;->enumerator:Lorg/openjdk/tools/javac/util/Name;

    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/tools/javac/code/Attribute$Visitor;)V
    .locals 0

    check-cast p1, Lorg/openjdk/tools/javac/jvm/ClassReader$ProxyVisitor;

    invoke-interface {p1, p0}, Lorg/openjdk/tools/javac/jvm/ClassReader$ProxyVisitor;->visitEnumAttributeProxy(Lorg/openjdk/tools/javac/jvm/ClassReader$EnumAttributeProxy;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/*proxy enum*/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$EnumAttributeProxy;->enumType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$EnumAttributeProxy;->enumerator:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
