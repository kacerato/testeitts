.class public Li5/b$o$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li5/b$o$a;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Utils/Variable;

.field public final synthetic c:Li5/b$o$a;


# direct methods
.method public constructor <init>(Li5/b$o$a;Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$variable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Li5/b$o$a$a;->c:Li5/b$o$a;

    iput-object p2, p0, Li5/b$o$a$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    new-instance v1, Lub/g;

    iget-object v2, p0, Li5/b$o$a$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lub/g;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    invoke-static {v1}, LBb/b;->y(Lub/p;)LBb/b;

    move-result-object v0

    new-instance v1, Li5/b$o$a$a$a;

    invoke-direct {v1, p0, v0}, Li5/b$o$a$a$a;-><init>(Li5/b$o$a$a;LBb/b;)V

    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
