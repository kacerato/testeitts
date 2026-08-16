.class Lorg/openjdk/tools/javac/jvm/ClassReader$ProxyType;
.super Lorg/openjdk/tools/javac/code/Type;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProxyType"
.end annotation


# instance fields
.field private final content:[B

.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/ClassReader;[B)V
    .locals 1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$ProxyType;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeMetadata;->EMPTY:Lorg/openjdk/tools/javac/code/TypeMetadata;

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/code/Type;-><init>(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$ProxyType;->content:[B

    return-void
.end method


# virtual methods
.method public cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getTag()Lorg/openjdk/tools/javac/code/TypeTag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->NONE:Lorg/openjdk/tools/javac/code/TypeTag;

    return-object v0
.end method

.method public resolve()Lorg/openjdk/tools/javac/code/Type;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$ProxyType;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$ProxyType;->content:[B

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigToType([BII)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "<ProxyType>"

    return-object v0
.end method
