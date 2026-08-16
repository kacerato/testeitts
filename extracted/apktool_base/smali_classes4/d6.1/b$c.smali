.class public Ld6/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld6/b;->P1(Lcom/itsmagic/engine/Engines/Engine/World/World;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/World/World;

.field public final synthetic c:Ld6/b;


# direct methods
.method public constructor <init>(Ld6/b;Lcom/itsmagic/engine/Engines/Engine/World/World;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$world"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ld6/b$c;->c:Ld6/b;

    iput-object p2, p0, Ld6/b$c;->b:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Ld6/b$c;->b:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->folder:Ljava/lang/String;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->fileName:Ljava/lang/String;

    new-instance v2, Ld6/b$c$a;

    invoke-direct {v2, p0}, Ld6/b$c$a;-><init>(Ld6/b$c;)V

    const/4 v3, 0x1

    invoke-static {v1, v0, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/World/a;->I(Ljava/lang/String;Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/a$k;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Ld6/b$c;->c:Ld6/b;

    iget-object v1, p0, Ld6/b$c;->b:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-static {v0, v1}, Ld6/b;->z1(Ld6/b;Lcom/itsmagic/engine/Engines/Engine/World/World;)V

    :goto_0
    return-void
.end method
