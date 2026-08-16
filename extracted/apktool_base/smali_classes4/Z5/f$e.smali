.class public LZ5/f$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ5/f;->d2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lq7/a;

.field public final synthetic c:LZ5/f;


# direct methods
.method public constructor <init>(LZ5/f;Lq7/a;)V
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

    iput-object p1, p0, LZ5/f$e;->c:LZ5/f;

    iput-object p2, p0, LZ5/f$e;->b:Lq7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, LZ5/f$e;->c:LZ5/f;

    invoke-static {v0}, LZ5/f;->y1(LZ5/f;)LU5/a;

    move-result-object v0

    invoke-virtual {v0}, LU5/a;->i()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, LZ5/f$e;->c:LZ5/f;

    invoke-static {v0}, LZ5/f;->y1(LZ5/f;)LU5/a;

    move-result-object v0

    invoke-virtual {v0}, LU5/a;->i()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, LZ5/f$e;->c:LZ5/f;

    invoke-static {v2}, LZ5/f;->y1(LZ5/f;)LU5/a;

    move-result-object v2

    invoke-virtual {v2}, LU5/a;->i()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, LZ5/f$e;->c:LZ5/f;

    invoke-static {v2}, LZ5/f;->y1(LZ5/f;)LU5/a;

    move-result-object v2

    invoke-virtual {v2}, LU5/a;->i()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    iget-object v2, p0, LZ5/f$e;->c:LZ5/f;

    invoke-static {v2}, LZ5/f;->z1(LZ5/f;)LZ5/f$o;

    move-result-object v2

    sget-object v3, LZ5/f$o;->MyPackages:LZ5/f$o;

    if-ne v2, v3, :cond_2

    sget-object v2, LW7/b;->f:LC8/a;

    iget-object v2, v2, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->L()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v2, p0, LZ5/f$e;->c:LZ5/f;

    invoke-static {v2}, LZ5/f;->y1(LZ5/f;)LU5/a;

    move-result-object v2

    invoke-virtual {v2}, LU5/a;->g()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LZ5/f;->A1([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LZ5/f$e;->c:LZ5/f;

    invoke-static {v3}, LZ5/f;->y1(LZ5/f;)LU5/a;

    move-result-object v3

    invoke-virtual {v3}, LU5/a;->j()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, LT5/b$k;->NotTemplate:LT5/b$k;

    goto :goto_2

    :cond_3
    sget-object v3, LT5/b$k;->DonotMatter:LT5/b$k;

    :goto_2
    :try_start_0
    iget-object v4, p0, LZ5/f$e;->c:LZ5/f;

    invoke-static {v1, v0, v2, v3}, LT5/b;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LT5/b$k;)Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v0}, LZ5/f;->B1(LZ5/f;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, LZ5/f$e$a;

    invoke-direct {v1, p0, v0}, LZ5/f$e$a;-><init>(LZ5/f$e;Ljava/util/List;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v1, LZ5/f$e$b;

    invoke-direct {v1, p0, v0}, LZ5/f$e$b;-><init>(LZ5/f$e;Ljava/lang/RuntimeException;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :goto_3
    return-void
.end method
