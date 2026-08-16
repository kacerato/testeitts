.class public Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleInfo"
.end annotation


# instance fields
.field public annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

.field public categories:[[C

.field public declarationStart:I

.field public exports:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;

.field public modifiers:I

.field public moduleName:[C

.field public name:[C

.field public nameSourceEnd:I

.field public nameSourceStart:I

.field public node:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

.field public opens:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;

.field public requires:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$RequiresInfo;

.field public services:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ServicesInfo;

.field public usedServices:[[C


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
