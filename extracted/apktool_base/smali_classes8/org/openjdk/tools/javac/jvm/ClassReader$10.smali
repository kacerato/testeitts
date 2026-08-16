.class Lorg/openjdk/tools/javac/jvm/ClassReader$10;
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

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$10;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public read(Lorg/openjdk/tools/javac/code/Symbol;I)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$10;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget v1, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readEnclosingMethodAttr(Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$10;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iput v1, p1, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    return-void
.end method
