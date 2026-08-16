.class public LQ6/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ6/a;->D1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lq7/a;

.field public final synthetic c:LQ6/a;


# direct methods
.method public constructor <init>(LQ6/a;Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$loading"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LQ6/a$b;->c:LQ6/a;

    iput-object p2, p0, LQ6/a$b;->b:Lq7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LQ6/a$b;->c:LQ6/a;

    invoke-static {v1}, LQ6/a;->s1(LQ6/a;)Lub/n;

    move-result-object v1

    const/16 v2, 0x100

    if-nez v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    iput-boolean v0, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    iget-object v3, p0, LQ6/a$b;->c:LQ6/a;

    new-instance v4, Lub/n;

    invoke-direct {v4, v2, v2, v1}, Lub/n;-><init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    invoke-static {v3, v4}, LQ6/a;->t1(LQ6/a;Lub/n;)Lub/n;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_6

    :catch_0
    move-exception v1

    goto :goto_4

    :cond_0
    :goto_0
    iget-object v1, p0, LQ6/a$b;->c:LQ6/a;

    invoke-static {v1}, LQ6/a;->u1(LQ6/a;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    move-result-object v1

    iget-object v3, p0, LQ6/a$b;->c:LQ6/a;

    invoke-static {v3}, LQ6/a;->s1(LQ6/a;)Lub/n;

    move-result-object v3

    new-instance v4, LQ6/a$b$a;

    invoke-direct {v4, p0}, LQ6/a$b$a;-><init>(LQ6/a$b;)V

    invoke-virtual {v1, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->x0(Lub/n;LU9/c;)Z

    iget-object v1, p0, LQ6/a$b;->c:LQ6/a;

    const/high16 v3, 0x10000

    new-array v3, v3, [I

    invoke-static {v1, v3}, LQ6/a;->w1(LQ6/a;[I)[I

    move v1, v0

    move v3, v1

    :goto_1
    if-ge v1, v2, :cond_2

    move v4, v0

    :goto_2
    if-ge v4, v2, :cond_1

    iget-object v5, p0, LQ6/a$b;->c:LQ6/a;

    invoke-static {v5}, LQ6/a;->v1(LQ6/a;)[I

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, LQ6/a$b;->c:LQ6/a;

    invoke-static {v7}, LQ6/a;->s1(LQ6/a;)Lub/n;

    move-result-object v7

    invoke-virtual {v7, v4, v1}, Lub/n;->i(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v7

    iget v7, v7, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    aput v7, v5, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, LQ6/a$b$b;

    invoke-direct {v1, p0, v2, v2}, LQ6/a$b$b;-><init>(LQ6/a$b;II)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    iget-object v1, p0, LQ6/a$b;->b:Lq7/a;

    invoke-virtual {v1}, Lq7/a;->p1()V

    iget-object v1, p0, LQ6/a$b;->c:LQ6/a;

    invoke-static {v1}, LQ6/a;->A1(LQ6/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_5

    :goto_4
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to prepare texture:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LN7/c;->v0(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_5
    return-void

    :goto_6
    iget-object v2, p0, LQ6/a$b;->b:Lq7/a;

    invoke-virtual {v2}, Lq7/a;->p1()V

    iget-object v2, p0, LQ6/a$b;->c:LQ6/a;

    invoke-static {v2}, LQ6/a;->A1(LQ6/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
