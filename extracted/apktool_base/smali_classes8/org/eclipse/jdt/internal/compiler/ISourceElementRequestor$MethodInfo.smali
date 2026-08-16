.class public Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodInfo"
.end annotation


# instance fields
.field public annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

.field public categories:[[C

.field public declarationStart:I

.field public declaringPackageName:[C

.field public declaringTypeModifiers:I

.field public enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

.field public exceptionTypes:[[C

.field public extraFlags:I

.field public isAnnotation:Z

.field public isConstructor:Z

.field public modifiers:I

.field public name:[C

.field public nameSourceEnd:I

.field public nameSourceStart:I

.field public node:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

.field public parameterInfos:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ParameterInfo;

.field public parameterNames:[[C

.field public parameterTypes:[[C

.field public returnType:[C

.field public typeAnnotated:Z

.field public typeParameters:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
