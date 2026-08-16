.class public Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;
.super Lorg/eclipse/jdt/core/WorkingCopyOwner;
.source "SourceFile"


# static fields
.field public static final PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;


# instance fields
.field public primaryBufferProvider:Lorg/eclipse/jdt/core/WorkingCopyOwner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/WorkingCopyOwner;-><init>()V

    return-void
.end method


# virtual methods
.method public createBuffer(Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/core/IBuffer;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->primaryBufferProvider:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/WorkingCopyOwner;->createBuffer(Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/core/IBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/core/WorkingCopyOwner;->createBuffer(Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/core/IBuffer;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Primary owner"

    return-object v0
.end method
