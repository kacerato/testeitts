.class public LY5/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY5/d;->M1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LU5/a;

.field public final synthetic c:LY5/d;


# direct methods
.method public constructor <init>(LY5/d;LU5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$so"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LY5/d$d;->c:LY5/d;

    iput-object p2, p0, LY5/d$d;->b:LU5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LY5/d$d;->b:LU5/a;

    invoke-virtual {v0}, LU5/a;->g()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LY5/d;->w1([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LY5/d$d;->b:LU5/a;

    invoke-virtual {v1}, LU5/a;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LT5/b$k;->NotTemplate:LT5/b$k;

    goto :goto_0

    :cond_0
    sget-object v1, LT5/b$k;->DonotMatter:LT5/b$k;

    :goto_0
    :try_start_0
    iget-object v2, p0, LY5/d$d;->b:LU5/a;

    invoke-virtual {v2}, LU5/a;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LY5/d$d;->b:LU5/a;

    invoke-static {v3}, LY5/d;->x1(LU5/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, LT5/b;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LT5/b$k;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, LY5/d$d;->c:LY5/d;

    invoke-static {v1}, LY5/d;->y1(LY5/d;)I

    move-result v1

    iget-object v2, p0, LY5/d$d;->b:LU5/a;

    invoke-virtual {v2}, LU5/a;->d()I

    move-result v2

    invoke-static {v0, v1, v2}, LY5/d;->z1(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    new-instance v1, LY5/d$d$a;

    invoke-direct {v1, p0, v0}, LY5/d$d$a;-><init>(LY5/d$d;Ljava/util/List;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, LY5/d$d$b;

    invoke-direct {v1, p0, v0}, LY5/d$d$b;-><init>(LY5/d$d;Ljava/lang/RuntimeException;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
