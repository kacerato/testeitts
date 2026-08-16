.class Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder$AddExport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddExport"
.end annotation


# instance fields
.field public final export:Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

.field public final sourceModuleName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder$AddExport;->sourceModuleName:Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder$AddExport;->export:Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    return-void
.end method
