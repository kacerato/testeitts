.class public Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INVISIBLE:I = 0x2

.field public static final VISIBLE:I = 0x1


# instance fields
.field public annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

.field public info:I

.field public info2:I

.field public targetType:I

.field public typeReference:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field public variableBinding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

.field public visibility:I

.field public wildcard:Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/ast/Expression;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->typeReference:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->targetType:I

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->visibility:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnnotationContext [annotation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", typeReference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->typeReference:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targetType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->targetType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", info ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->info:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", boundIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->info2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
