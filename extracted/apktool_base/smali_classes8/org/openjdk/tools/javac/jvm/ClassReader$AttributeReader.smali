.class public abstract Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AttributeReader"
.end annotation


# instance fields
.field protected final kinds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;",
            ">;"
        }
    .end annotation
.end field

.field protected final name:Lorg/openjdk/tools/javac/util/Name;

.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

.field protected final version:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/jvm/ClassFile$Version;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;->name:Lorg/openjdk/tools/javac/util/Name;

    iput-object p3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;->version:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    iput-object p4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;->kinds:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public accepts(Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;)Z
    .locals 8

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;->kinds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget v0, p1, Lorg/openjdk/tools/javac/jvm/ClassReader;->majorVersion:I

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;->version:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    iget v2, v1, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->major:I

    if-gt v0, v2, :cond_1

    if-ne v0, v2, :cond_0

    iget v0, p1, Lorg/openjdk/tools/javac/jvm/ClassReader;->minorVersion:I

    iget v1, v1, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->minor:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Lorg/openjdk/tools/javac/jvm/ClassReader;->lintClassfile:Z

    if-eqz v0, :cond_2

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/ClassReader;->warnedAttrs:Ljava/util/Set;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/ClassReader;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->CLASSFILE:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    const-string v2, "future.attr"

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;->version:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    iget v4, v4, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->major:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;->version:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    iget v5, v5, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->minor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget v6, v6, Lorg/openjdk/tools/javac/jvm/ClassReader;->majorVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget v7, v7, Lorg/openjdk/tools/javac/jvm/ClassReader;->minorVersion:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/ClassReader;->warnedAttrs:Ljava/util/Set;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/ClassReader;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    throw v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public abstract read(Lorg/openjdk/tools/javac/code/Symbol;I)V
.end method
