.class public Lw5/j$V$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j$V$a;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq7/a;

.field public final synthetic b:Lw5/j$V$a;


# direct methods
.method public constructor <init>(Lw5/j$V$a;Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$loading"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$V$a$a;->b:Lw5/j$V$a;

    iput-object p2, p0, Lw5/j$V$a$a;->a:Lq7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lw5/j$V$a$a;->a:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SOMETHING_WENT_WRONG:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LN7/c;->v0(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->c()V

    iget-object v0, p0, Lw5/j$V$a$a;->b:Lw5/j$V$a;

    iget-object v0, v0, Lw5/j$V$a;->b:Lw5/j$V;

    iget-object v0, v0, Lw5/j$V;->c:Lw5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lw5/b;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Ld8/j;->v0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lw5/j$V$a$a;->a:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    return-void

    :goto_1
    iget-object v1, p0, Lw5/j$V$a$a;->a:Lq7/a;

    invoke-virtual {v1}, Lq7/a;->p1()V

    throw v0
.end method
