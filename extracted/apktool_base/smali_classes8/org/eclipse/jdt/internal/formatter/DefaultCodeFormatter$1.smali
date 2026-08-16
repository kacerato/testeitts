.class Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter$1;
.super Lorg/eclipse/jdt/internal/core/JavaProject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->createDummyModuleInfoCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter$1;->this$0:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;-><init>()V

    return-void
.end method


# virtual methods
.method public getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/SourceModule;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jdt/internal/core/SourceModule;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    return-object v0
.end method

.method public getOptions(Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method
