.class public Lw5/j$h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j;->k(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$folder",
            "val$name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$h0;->b:Ljava/lang/String;

    iput-object p2, p0, Lw5/j$h0;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lw5/j$h0;->b:Ljava/lang/String;

    iget-object v1, p0, Lw5/j$h0;->c:Ljava/lang/String;

    new-instance v2, Lw5/j$h0$a;

    invoke-direct {v2, p0}, Lw5/j$h0$a;-><init>(Lw5/j$h0;)V

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/World/a;->I(Ljava/lang/String;Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/a$k;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lw5/j$h0;->b:Ljava/lang/String;

    iget-object v1, p0, Lw5/j$h0;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lw5/j;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
