.class public Lorg/eclipse/jdt/internal/core/AbstractModule$AutoModule;
.super Lorg/eclipse/jdt/internal/core/NamedMember;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/AbstractModule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/AbstractModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoModule"
.end annotation


# instance fields
.field private nameFromManifest:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/NamedMember;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/core/AbstractModule$AutoModule;->nameFromManifest:Z

    return-void
.end method


# virtual methods
.method public getChildren()[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    return-object v0
.end method

.method public getFlags()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getHandleMementoDelimiter()C
    .locals 1

    const/16 v0, 0x60

    return v0
.end method

.method public getRequiredModules()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->NO_REQUIRES:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;

    return-object v0
.end method

.method public getTypeRoot()Lorg/eclipse/jdt/core/ITypeRoot;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAutoModule()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAutoNameFromManifest()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/AbstractModule$AutoModule;->nameFromManifest:Z

    return v0
.end method

.method public toStringContent(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const-string p2, "automatic module "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/NamedMember;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
