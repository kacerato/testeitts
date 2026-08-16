.class Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor$1;
.super Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->createTypeInfo(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;Lorg/eclipse/jdt/internal/core/SourceType;)Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor$1;->this$0:Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public isAnonymousMember()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
