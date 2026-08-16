.class public interface abstract Lorg/eclipse/jdt/core/util/IModuleAttribute;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IClassFileAttribute;


# virtual methods
.method public abstract getExportsCount()I
.end method

.method public abstract getExportsInfo()[Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;
.end method

.method public abstract getModuleFlags()I
.end method

.method public abstract getModuleName()[C
.end method

.method public abstract getModuleNameIndex()I
.end method

.method public abstract getModuleVersionIndex()I
.end method

.method public abstract getModuleVersionValue()[C
.end method

.method public abstract getOpensCount()I
.end method

.method public abstract getOpensInfo()[Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;
.end method

.method public abstract getProvidesCount()I
.end method

.method public abstract getProvidesInfo()[Lorg/eclipse/jdt/core/util/IProvidesInfo;
.end method

.method public abstract getRequiresCount()I
.end method

.method public abstract getRequiresInfo()[Lorg/eclipse/jdt/core/util/IRequiresInfo;
.end method

.method public abstract getUsesClassNames()[[C
.end method

.method public abstract getUsesCount()I
.end method

.method public abstract getUsesIndices()[I
.end method
