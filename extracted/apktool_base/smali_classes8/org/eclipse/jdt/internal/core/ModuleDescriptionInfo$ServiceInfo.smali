.class Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;
.super Lorg/eclipse/jdt/internal/core/MemberElementInfo;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceInfo"
.end annotation


# instance fields
.field implNames:[[C

.field serviceName:[C


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/MemberElementInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public name()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;->serviceName:[C

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;->serviceName:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;->implNames:[[C

    array-length v3, v2

    if-lt v1, v3, :cond_0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;->implNames:[[C

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public with()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;->implNames:[[C

    return-object v0
.end method
