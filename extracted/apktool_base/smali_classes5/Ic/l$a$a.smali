.class public LIc/l$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LIc/l$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:LU/h;

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

.field public final synthetic e:LIc/l$a;


# direct methods
.method public constructor <init>(LIc/l$a;Ljava/lang/String;LU/h;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalPath",
            "val$options",
            "val$finalTexConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LIc/l$a$a;->e:LIc/l$a;

    iput-object p2, p0, LIc/l$a$a;->b:Ljava/lang/String;

    iput-object p3, p0, LIc/l$a$a;->c:LU/h;

    iput-object p4, p0, LIc/l$a$a;->d:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, LIc/l$a$a;->b:Ljava/lang/String;

    iget-object v1, p0, LIc/l$a$a;->e:LIc/l$a;

    iget-object v1, v1, LIc/l$a;->c:Landroid/content/Context;

    iget-object v2, p0, LIc/l$a$a;->c:LU/h;

    sget-object v3, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    new-instance v4, LIc/l$a$a$a;

    invoke-direct {v4, p0}, LIc/l$a$a$a;-><init>(LIc/l$a$a;)V

    invoke-static {v0, v1, v2, v3, v4}, LVc/e;->j(Ljava/lang/String;Landroid/content/Context;LU/h;Lcom/bumptech/glide/load/engine/i;LVc/e$k;)V

    return-void
.end method
