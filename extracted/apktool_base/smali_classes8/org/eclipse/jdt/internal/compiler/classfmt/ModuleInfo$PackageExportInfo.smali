.class Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageExportInfo"
.end annotation


# instance fields
.field exportedTo:[[C

.field exportedToCount:I

.field modifiers:I

.field packageName:[C

.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;->this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public name()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;->packageName:[C

    return-object v0
.end method

.method public targets()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;->exportedTo:[[C

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;->toStringContent(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringContent(Ljava/lang/StringBuffer;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;->packageName:[C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;->exportedToCount:I

    if-lez v0, :cond_1

    const-string v0, " to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;->exportedToCount:I

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;->exportedTo:[[C

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method
