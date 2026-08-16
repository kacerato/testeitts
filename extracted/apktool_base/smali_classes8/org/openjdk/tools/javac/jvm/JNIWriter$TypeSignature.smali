.class Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/JNIWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeSignature"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature$JvmTypeVisitor;,
        Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature$SignatureException;
    }
.end annotation


# static fields
.field private static final SIG_ARRAY:Ljava/lang/String; = "["

.field private static final SIG_BOOLEAN:Ljava/lang/String; = "Z"

.field private static final SIG_BYTE:Ljava/lang/String; = "B"

.field private static final SIG_CHAR:Ljava/lang/String; = "C"

.field private static final SIG_CLASS:Ljava/lang/String; = "L"

.field private static final SIG_DOUBLE:Ljava/lang/String; = "D"

.field private static final SIG_FLOAT:Ljava/lang/String; = "F"

.field private static final SIG_INT:Ljava/lang/String; = "I"

.field private static final SIG_LONG:Ljava/lang/String; = "J"

.field private static final SIG_SHORT:Ljava/lang/String; = "S"

.field private static final SIG_VOID:Ljava/lang/String; = "V"


# instance fields
.field elems:Lorg/openjdk/tools/javac/model/JavacElements;

.field types:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature;->types:Lorg/openjdk/tools/javac/code/Types;

    return-void
.end method


# virtual methods
.method public getJvmSignature(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/StringBuilder;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature$JvmTypeVisitor;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature$JvmTypeVisitor;-><init>()V

    invoke-virtual {v1, p1, v0}, Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature$JvmTypeVisitor;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/StringBuilder;)Lorg/openjdk/tools/javac/code/Type;

    return-object v0
.end method

.method public getParameterSignature(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/StringBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature$SignatureException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature;->getJvmSignature(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getReturnSignature(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/StringBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature$SignatureException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature;->getJvmSignature(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public getSignature(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/StringBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature$SignatureException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature;->getParameterSignature(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/JNIWriter$TypeSignature;->getReturnSignature(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object v0
.end method
