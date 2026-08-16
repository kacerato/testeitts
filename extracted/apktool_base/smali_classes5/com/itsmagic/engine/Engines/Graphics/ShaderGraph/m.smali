.class public final synthetic Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/c;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;


# direct methods
.method public synthetic constructor <init>(ZLcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/m;->a:Z

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/m;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    return-void
.end method


# virtual methods
.method public final a(LSb/b;)V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/m;->a:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/m;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;->a(ZLcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;LSb/b;)V

    return-void
.end method
