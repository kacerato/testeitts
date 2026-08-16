.class public Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeInfo"
.end annotation


# instance fields
.field public annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

.field public anonymousMember:Z

.field public categories:[[C

.field public childrenCategories:Ljava/util/HashMap;

.field public declarationStart:I

.field public extraFlags:I

.field public modifiers:I

.field public name:[C

.field public nameSourceEnd:I

.field public nameSourceStart:I

.field public node:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

.field public secondary:Z

.field public superclass:[C

.field public superinterfaces:[[C

.field public typeAnnotated:Z

.field public typeParameters:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->childrenCategories:Ljava/util/HashMap;

    return-void
.end method
