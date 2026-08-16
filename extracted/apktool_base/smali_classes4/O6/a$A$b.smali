.class public LO6/a$A$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO6/a$A;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LO6/a$A;


# direct methods
.method public constructor <init>(LO6/a$A;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LO6/a$A$b;->b:LO6/a$A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LO6/a$A$b;->b:LO6/a$A;

    iget-object v0, v0, LO6/a$A;->b:LO6/a;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    invoke-static {v0, v1}, LO6/a;->s1(LO6/a;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-object v0, p0, LO6/a$A$b;->b:LO6/a$A;

    iget-object v0, v0, LO6/a$A;->b:LO6/a;

    invoke-static {v0}, LO6/a;->r1(LO6/a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;->Sprite:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->type:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    iget-object v0, p0, LO6/a$A$b;->b:LO6/a$A;

    iget-object v0, v0, LO6/a$A;->b:LO6/a;

    invoke-static {v0}, LO6/a;->u1(LO6/a;)V

    return-void
.end method
