.class Lorg/eclipse/jdt/internal/core/builder/ModuleInfoBuilder$BytecodeCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/builder/ModuleInfoBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytecodeCollector"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field bytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptResult(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getClassFiles()[Lorg/eclipse/jdt/internal/compiler/ClassFile;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ModuleInfoBuilder$BytecodeCollector;->bytes:[B

    return-void
.end method
