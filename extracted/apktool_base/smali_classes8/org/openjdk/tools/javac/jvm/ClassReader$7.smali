.class Lorg/openjdk/tools/javac/jvm/ClassReader$7;
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

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$7;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public read(Lorg/openjdk/tools/javac/code/Symbol;I)V
    .locals 6

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$7;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget v0, p1, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    add-int/2addr v0, p2

    iget-boolean p2, p1, Lorg/openjdk/tools/javac/jvm/ClassReader;->saveParameterNames:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p1, Lorg/openjdk/tools/javac/jvm/ClassReader;->sawMethodParameters:Z

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$7;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$7;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$7;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$7;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$7;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$7;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/ClassReader;->parameterNameIndices:[I

    array-length v4, v1

    if-lt v3, v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x8

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$7;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v5, v4, Lorg/openjdk/tools/javac/jvm/ClassReader;->parameterNameIndices:[I

    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v4, Lorg/openjdk/tools/javac/jvm/ClassReader;->parameterNameIndices:[I

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$7;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v4, v1, Lorg/openjdk/tools/javac/jvm/ClassReader;->parameterNameIndices:[I

    aput v2, v4, v3

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/openjdk/tools/javac/jvm/ClassReader;->haveParameterNameIndices:Z

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$7;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iput v0, p1, Lorg/openjdk/tools/javac/jvm/ClassReader;->bp:I

    return-void
.end method
