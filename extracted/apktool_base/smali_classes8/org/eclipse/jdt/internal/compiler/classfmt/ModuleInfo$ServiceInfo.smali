.class Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ServiceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceInfo"
.end annotation


# instance fields
.field serviceName:[C

.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;

.field with:[[C


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ServiceInfo;->this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public name()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ServiceInfo;->serviceName:[C

    return-object v0
.end method

.method public with()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ServiceInfo;->with:[[C

    return-object v0
.end method
