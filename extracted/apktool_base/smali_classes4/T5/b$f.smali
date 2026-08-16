.class public LT5/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LT5/b;->W(LT5/b$h;LT5/b$l;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LT5/b$h;

.field public final synthetic c:Ljava/lang/Runnable;

.field public final synthetic d:LT5/b$l;


# direct methods
.method public constructor <init>(LT5/b$h;Ljava/lang/Runnable;LT5/b$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$info",
            "val$fallback",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LT5/b$f;->b:LT5/b$h;

    iput-object p2, p0, LT5/b$f;->c:Ljava/lang/Runnable;

    iput-object p3, p0, LT5/b$f;->d:LT5/b$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LT5/b$f;->b:LT5/b$h;

    iget-object v1, v0, LT5/b$h;->a:Ljava/lang/String;

    iget-object v2, v0, LT5/b$h;->b:Ljava/lang/String;

    iget-object v0, v0, LT5/b$h;->c:Ljava/lang/String;

    invoke-static {v1, v2, v0}, LT5/b;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LT5/b$j;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, LT5/b$f;->b:LT5/b$h;

    iget-boolean v2, v1, LT5/b$h;->e:Z

    if-nez v2, :cond_0

    iget-object v0, v1, LT5/b$h;->a:Ljava/lang/String;

    iget-object v1, v1, LT5/b$h;->b:Ljava/lang/String;

    const-string v2, "main"

    invoke-static {v0, v1, v2}, LT5/b;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LT5/b$j;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    iget-object v0, v0, LT5/b$j;->a:Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, LT5/b$f;->b:LT5/b$h;

    iget-object v1, v1, LT5/b$h;->d:Ljava/lang/String;

    invoke-static {v0, v1}, LT5/b;->k(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, LT5/b$f$b;

    invoke-direct {v1, p0, v0}, LT5/b$f$b;-><init>(LT5/b$f;Ljava/util/List;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, LT5/b$f;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    new-instance v0, LT5/b$f$a;

    invoke-direct {v0, p0}, LT5/b$f$a;-><init>(LT5/b$f;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
