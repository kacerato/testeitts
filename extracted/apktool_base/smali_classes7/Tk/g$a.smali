.class public LTk/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/A;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTk/g;->b(Loh/x;LBi/D;LXh/s;[C)LQk/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Loh/x;

.field public final synthetic b:LXh/s;

.field public final synthetic c:LSi/k;

.field public final synthetic d:[C


# direct methods
.method public constructor <init>(Loh/x;LXh/s;LSi/k;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LTk/g$a;->a:Loh/x;

    iput-object p2, p0, LTk/g$a;->b:LXh/s;

    iput-object p3, p0, LTk/g$a;->c:LSi/k;

    iput-object p4, p0, LTk/g$a;->d:[C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 3

    new-instance v0, Lhi/b;

    iget-object v1, p0, LTk/g$a;->a:Loh/x;

    iget-object v2, p0, LTk/g$a;->b:LXh/s;

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    return-object v0
.end method

.method public e()[B
    .locals 3

    iget-object v0, p0, LTk/g$a;->c:LSi/k;

    invoke-virtual {v0}, LSi/k;->d()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, LTk/g$a;->c:LSi/k;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, LSi/k;->c([BI)I

    return-object v0
.end method

.method public getKey()LQk/r;
    .locals 3

    new-instance v0, LQk/r;

    invoke-virtual {p0}, LTk/g$a;->a()Lhi/b;

    move-result-object v1

    iget-object v2, p0, LTk/g$a;->d:[C

    invoke-static {v2}, LBi/L;->a([C)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, LQk/r;-><init>(Lhi/b;[B)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    new-instance v0, LQi/f;

    iget-object v1, p0, LTk/g$a;->c:LSi/k;

    invoke-direct {v0, v1}, LQi/f;-><init>(LBi/I;)V

    return-object v0
.end method
