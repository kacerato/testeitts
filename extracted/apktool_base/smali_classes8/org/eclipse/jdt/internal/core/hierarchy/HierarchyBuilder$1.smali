.class Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder$1;
.super Lorg/eclipse/jdt/internal/core/util/ResourceCompilationUnit;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->createCompilationUnitFromPath(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IFile;[C)Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;

.field private final synthetic val$elementName:[C


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;Lorg/eclipse/core/resources/IFile;[C[C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder$1;->this$0:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder$1;->val$elementName:[C

    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/internal/core/util/ResourceCompilationUnit;-><init>(Lorg/eclipse/core/resources/IFile;[C)V

    return-void
.end method


# virtual methods
.method public getFileName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder$1;->val$elementName:[C

    return-object v0
.end method
