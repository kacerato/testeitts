.class public final synthetic Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/k;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/k;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    check-cast p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;)Z

    move-result p1

    return p1
.end method
