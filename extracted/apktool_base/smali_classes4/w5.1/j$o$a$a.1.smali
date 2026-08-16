.class public Lw5/j$o$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j$o$a;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Lq7/a;

.field public final synthetic d:Lw5/j$o$a;


# direct methods
.method public constructor <init>(Lw5/j$o$a;FLq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$strength",
            "val$progress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$o$a$a;->d:Lw5/j$o$a;

    iput p2, p0, Lw5/j$o$a$a;->b:F

    iput-object p3, p0, Lw5/j$o$a$a;->c:Lq7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lw5/j$o$a$a;->d:Lw5/j$o$a;

    iget-object v0, v0, Lw5/j$o$a;->a:Lw5/j$o;

    iget-object v0, v0, Lw5/j$o;->a:Ljava/lang/String;

    invoke-static {v0}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lab/a;

    iget v2, p0, Lw5/j$o$a$a;->b:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lw5/j$o$a$a;->d:Lw5/j$o$a;

    iget-object v4, v4, Lw5/j$o$a;->a:Lw5/j$o;

    iget-object v4, v4, Lw5/j$o;->a:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v4, v5}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_normal_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lw5/j$o$a$a;->b:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lw5/j$o$a$a$a;

    invoke-direct {v4, p0}, Lw5/j$o$a$a$a;-><init>(Lw5/j$o$a$a;)V

    invoke-direct {v1, v2, v0, v3, v4}, Lab/a;-><init>(FLub/g;Ljava/lang/String;Lab/b;)V

    invoke-static {v1}, Lab/c;->i(Lab/a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->FAILED_TO_LOAD_TEXTURE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw5/j$o$a$a;->d:Lw5/j$o$a;

    iget-object v1, v1, Lw5/j$o$a;->a:Lw5/j$o;

    iget-object v1, v1, Lw5/j$o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LN7/c;->v0(Ljava/lang/String;)V

    iget-object v0, p0, Lw5/j$o$a$a;->c:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    :goto_0
    return-void
.end method
