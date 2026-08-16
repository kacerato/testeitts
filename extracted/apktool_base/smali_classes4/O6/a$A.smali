.class public LO6/a$A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO6/a;->x2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LO6/a;


# direct methods
.method public constructor <init>(LO6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LO6/a$A;->b:LO6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Lub/g;

    iget-object v1, p0, LO6/a$A;->b:LO6/a;

    invoke-static {v1}, LO6/a;->X1(LO6/a;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lub/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lub/g;->u0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v1

    new-instance v2, LO6/a$A$a;

    invoke-direct {v2, p0, v0, v1}, LO6/a$A$a;-><init>(LO6/a$A;Lub/g;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    invoke-static {v2}, LN7/c;->j0(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, LO6/a$A$b;

    invoke-direct {v0, p0}, LO6/a$A$b;-><init>(LO6/a$A;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
