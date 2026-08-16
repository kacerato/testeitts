.class Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/ArgumentAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UniquePos"
.end annotation


# instance fields
.field pos:I

.field source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    iput p2, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;->pos:I

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->access$300(Lorg/openjdk/tools/javac/comp/ArgumentAttr;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;

    iget v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;->pos:I

    iget v2, p1, Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;->pos:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;->pos:I

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    shl-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/DiagnosticSource;->getFile()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v1

    invoke-interface {v1}, Lorg/openjdk/javax/tools/FileObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    iget v2, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;->pos:I

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/DiagnosticSource;->getLineNumber(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
