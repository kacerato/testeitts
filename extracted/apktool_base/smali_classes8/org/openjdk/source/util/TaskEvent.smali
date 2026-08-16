.class public final Lorg/openjdk/source/util/TaskEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/source/util/TaskEvent$Kind;
    }
.end annotation


# instance fields
.field private clazz:Lorg/openjdk/javax/lang/model/element/TypeElement;

.field private file:Lorg/openjdk/javax/tools/JavaFileObject;

.field private kind:Lorg/openjdk/source/util/TaskEvent$Kind;

.field private unit:Lorg/openjdk/source/tree/CompilationUnitTree;


# direct methods
.method public constructor <init>(Lorg/openjdk/source/util/TaskEvent$Kind;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/javax/lang/model/element/TypeElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/source/util/TaskEvent$Kind;Lorg/openjdk/javax/tools/JavaFileObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/javax/lang/model/element/TypeElement;)V

    return-void
.end method

.method private constructor <init>(Lorg/openjdk/source/util/TaskEvent$Kind;Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/javax/lang/model/element/TypeElement;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/openjdk/source/util/TaskEvent;->kind:Lorg/openjdk/source/util/TaskEvent$Kind;

    .line 7
    iput-object p2, p0, Lorg/openjdk/source/util/TaskEvent;->file:Lorg/openjdk/javax/tools/JavaFileObject;

    .line 8
    iput-object p3, p0, Lorg/openjdk/source/util/TaskEvent;->unit:Lorg/openjdk/source/tree/CompilationUnitTree;

    .line 9
    iput-object p4, p0, Lorg/openjdk/source/util/TaskEvent;->clazz:Lorg/openjdk/javax/lang/model/element/TypeElement;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/source/util/TaskEvent$Kind;Lorg/openjdk/source/tree/CompilationUnitTree;)V
    .locals 2

    .line 3
    invoke-interface {p2}, Lorg/openjdk/source/tree/CompilationUnitTree;->getSourceFile()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/javax/lang/model/element/TypeElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/source/util/TaskEvent$Kind;Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/javax/lang/model/element/TypeElement;)V
    .locals 1

    .line 4
    invoke-interface {p2}, Lorg/openjdk/source/tree/CompilationUnitTree;->getSourceFile()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/javax/lang/model/element/TypeElement;)V

    return-void
.end method


# virtual methods
.method public getCompilationUnit()Lorg/openjdk/source/tree/CompilationUnitTree;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/source/util/TaskEvent;->unit:Lorg/openjdk/source/tree/CompilationUnitTree;

    return-object v0
.end method

.method public getKind()Lorg/openjdk/source/util/TaskEvent$Kind;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/source/util/TaskEvent;->kind:Lorg/openjdk/source/util/TaskEvent$Kind;

    return-object v0
.end method

.method public getSourceFile()Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/source/util/TaskEvent;->file:Lorg/openjdk/javax/tools/JavaFileObject;

    return-object v0
.end method

.method public getTypeElement()Lorg/openjdk/javax/lang/model/element/TypeElement;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/source/util/TaskEvent;->clazz:Lorg/openjdk/javax/lang/model/element/TypeElement;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskEvent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/source/util/TaskEvent;->kind:Lorg/openjdk/source/util/TaskEvent$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/source/util/TaskEvent;->file:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/source/util/TaskEvent;->clazz:Lorg/openjdk/javax/lang/model/element/TypeElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
