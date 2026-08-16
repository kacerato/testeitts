.class Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;
.super Lorg/eclipse/jdt/internal/core/MemberElementInfo;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageExportInfo"
.end annotation


# instance fields
.field pack:[C

.field target:[[C


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/MemberElementInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public name()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;->pack:[C

    return-object v0
.end method

.method public targets()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;->target:[[C

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;->pack:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;->target:[[C

    if-eqz v1, :cond_1

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;->target:[[C

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
