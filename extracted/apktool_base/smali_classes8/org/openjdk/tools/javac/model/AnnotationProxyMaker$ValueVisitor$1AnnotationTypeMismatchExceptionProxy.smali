.class Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor$1AnnotationTypeMismatchExceptionProxy;
.super Lsun/reflect/annotation/ExceptionProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->typeMismatch(Ljava/lang/reflect/Method;Lorg/openjdk/tools/javac/code/Attribute;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnnotationTypeMismatchExceptionProxy"
.end annotation


# static fields
.field static final serialVersionUID:J = 0x10dL


# instance fields
.field final transient method:Ljava/lang/reflect/Method;

.field final synthetic this$1:Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;

.field final synthetic val$attr:Lorg/openjdk/tools/javac/code/Attribute;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;Ljava/lang/reflect/Method;Lorg/openjdk/tools/javac/code/Attribute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor$1AnnotationTypeMismatchExceptionProxy;->this$1:Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;

    iput-object p3, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor$1AnnotationTypeMismatchExceptionProxy;->val$attr:Lorg/openjdk/tools/javac/code/Attribute;

    invoke-direct {p0}, Lsun/reflect/annotation/ExceptionProxy;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor$1AnnotationTypeMismatchExceptionProxy;->method:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public generateException()Ljava/lang/RuntimeException;
    .locals 3

    new-instance v0, Ljava/lang/annotation/AnnotationTypeMismatchException;

    iget-object v1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor$1AnnotationTypeMismatchExceptionProxy;->method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor$1AnnotationTypeMismatchExceptionProxy;->val$attr:Lorg/openjdk/tools/javac/code/Attribute;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/AnnotationTypeMismatchException;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "<error>"

    return-object v0
.end method
