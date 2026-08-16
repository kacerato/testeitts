.class public Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeclaredVariable"
.end annotation


# instance fields
.field nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNode;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;

.field var:Lcom/jme3/shader/ShaderNodeVariable;


# direct methods
.method public constructor <init>(Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;Lcom/jme3/shader/ShaderNodeVariable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;->this$0:Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;->nodes:Ljava/util/List;

    iput-object p2, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;->var:Lcom/jme3/shader/ShaderNodeVariable;

    return-void
.end method


# virtual methods
.method public final addNode(Lcom/jme3/shader/ShaderNode;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
