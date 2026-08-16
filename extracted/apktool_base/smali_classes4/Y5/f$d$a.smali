.class public LY5/f$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY5/f$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:LY5/f$d;


# direct methods
.method public constructor <init>(LY5/f$d;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$page"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LY5/f$d$a;->c:LY5/f$d;

    iput-object p2, p0, LY5/f$d$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LY5/f$d$a;->c:LY5/f$d;

    iget-object v0, v0, LY5/f$d;->b:LY5/f;

    invoke-static {v0}, LY5/f;->F1(LY5/f;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, LY5/f$d$a;->c:LY5/f$d;

    iget-object v0, v0, LY5/f$d;->b:LY5/f;

    invoke-static {v0, v1}, LY5/f;->G1(LY5/f;Z)Z

    iget-object v0, p0, LY5/f$d$a;->c:LY5/f$d;

    iget-object v0, v0, LY5/f$d;->b:LY5/f;

    invoke-static {v0}, LY5/f;->H1(LY5/f;)LY5/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LH7/d;->m()V

    :cond_0
    iget-object v0, p0, LY5/f$d$a;->c:LY5/f$d;

    iget-object v0, v0, LY5/f$d;->b:LY5/f;

    iget-object v2, p0, LY5/f$d$a;->b:Ljava/util/List;

    invoke-static {v0, v2}, LY5/f;->s1(LY5/f;Ljava/util/List;)V

    iget-object v0, p0, LY5/f$d$a;->c:LY5/f$d;

    iget-object v0, v0, LY5/f$d;->b:LY5/f;

    invoke-static {v0, v1}, LY5/f;->A1(LY5/f;Z)Z

    iget-object v0, p0, LY5/f$d$a;->c:LY5/f$d;

    iget-object v0, v0, LY5/f$d;->b:LY5/f;

    invoke-static {v0, v1}, LY5/f;->u1(LY5/f;Z)Z

    return-void
.end method
