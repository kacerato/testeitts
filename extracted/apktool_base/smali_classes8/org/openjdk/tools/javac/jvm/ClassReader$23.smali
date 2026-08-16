.class Lorg/openjdk/tools/javac/jvm/ClassReader$23;
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

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$23;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public read(Lorg/openjdk/tools/javac/code/Symbol;I)V
    .locals 5

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$23;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget v0, p1, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    add-int/2addr v0, p2

    iget-boolean p2, p1, Lorg/openjdk/tools/javac/jvm/ClassReader;->saveParameterNames:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/openjdk/tools/javac/jvm/ClassReader;->sawMethodParameters:Z

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextByte()I

    move-result p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$23;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    new-array v2, p1, [I

    iput-object v2, v1, Lorg/openjdk/tools/javac/jvm/ClassReader;->parameterNameIndices:[I

    iput-boolean p2, v1, Lorg/openjdk/tools/javac/jvm/ClassReader;->haveParameterNameIndices:Z

    const/4 p2, 0x0

    move v1, p2

    :goto_0
    if-ge p2, p1, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$23;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$23;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v3

    const v4, 0x9000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$23;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v3, v3, Lorg/openjdk/tools/javac/jvm/ClassReader;->parameterNameIndices:[I

    add-int/lit8 v4, v1, 0x1

    aput v2, v3, v1

    move v1, v4

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$23;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iput v0, p1, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    return-void
.end method
