.class public LO6/a$z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO6/a;->w2()V
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

    iput-object p1, p0, LO6/a$z;->b:LO6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, LO6/a$z;->b:LO6/a;

    invoke-static {v0}, LO6/a;->N1(LO6/a;)Ljava/io/File;

    iget-object v0, p0, LO6/a$z;->b:LO6/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LO6/a$z;->b:LO6/a;

    invoke-static {v1}, LO6/a;->X1(LO6/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b;->p(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, LO6/a$z$a;

    invoke-direct {v1, p0, v0}, LO6/a$z$a;-><init>(LO6/a$z;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
