.class public LY5/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY5/f;->M1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LY5/f;


# direct methods
.method public constructor <init>(LY5/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LY5/f$d;->b:LY5/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LY5/f$d;->b:LY5/f;

    invoke-static {v0}, LY5/f;->r1(LY5/f;)LU5/a;

    move-result-object v0

    invoke-virtual {v0}, LU5/a;->g()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LY5/f;->B1([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LY5/f$d;->b:LY5/f;

    invoke-static {v1}, LY5/f;->r1(LY5/f;)LU5/a;

    move-result-object v1

    invoke-virtual {v1}, LU5/a;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LT5/b$k;->NotTemplate:LT5/b$k;

    goto :goto_0

    :cond_0
    sget-object v1, LT5/b$k;->DonotMatter:LT5/b$k;

    :goto_0
    iget-object v2, p0, LY5/f$d;->b:LY5/f;

    invoke-static {v2}, LY5/f;->r1(LY5/f;)LU5/a;

    move-result-object v2

    invoke-virtual {v2}, LU5/a;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LY5/f$d;->b:LY5/f;

    invoke-static {v3}, LY5/f;->r1(LY5/f;)LU5/a;

    move-result-object v3

    invoke-static {v3}, LY5/f;->C1(LU5/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, LT5/b;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LT5/b$k;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, LY5/f$d;->b:LY5/f;

    invoke-static {v1}, LY5/f;->D1(LY5/f;)I

    move-result v1

    iget-object v2, p0, LY5/f$d;->b:LY5/f;

    invoke-static {v2}, LY5/f;->r1(LY5/f;)LU5/a;

    move-result-object v2

    invoke-virtual {v2}, LU5/a;->d()I

    move-result v2

    invoke-static {v0, v1, v2}, LY5/f;->E1(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    new-instance v1, LY5/f$d$a;

    invoke-direct {v1, p0, v0}, LY5/f$d$a;-><init>(LY5/f$d;Ljava/util/List;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
