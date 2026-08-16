.class Lcom/jme3/shader/plugins/GLSLLoader$ShaderDependencyKey;
.super Lcom/jme3/asset/AssetKey;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/shader/plugins/GLSLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShaderDependencyKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/asset/AssetKey<",
        "Ljava/io/Reader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jme3/shader/plugins/GLSLLoader;


# direct methods
.method public constructor <init>(Lcom/jme3/shader/plugins/GLSLLoader;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/shader/plugins/GLSLLoader$ShaderDependencyKey;->this$0:Lcom/jme3/shader/plugins/GLSLLoader;

    invoke-direct {p0, p2}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCacheType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/asset/cache/AssetCache;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
