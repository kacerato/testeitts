.class public LTk/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/F;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTk/f;->c([C)LQk/F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LXh/s;

.field public final synthetic b:[C

.field public final synthetic c:LTk/f;


# direct methods
.method public constructor <init>(LTk/f;LXh/s;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LTk/f$a;->c:LTk/f;

    iput-object p2, p0, LTk/f$a;->a:LXh/s;

    iput-object p3, p0, LTk/f$a;->b:[C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 3

    new-instance v0, Lhi/b;

    iget-object v1, p0, LTk/f$a;->c:LTk/f;

    invoke-static {v1}, LTk/f;->a(LTk/f;)Loh/x;

    move-result-object v1

    iget-object v2, p0, LTk/f$a;->a:LXh/s;

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    return-object v0
.end method

.method public d(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2

    new-instance v0, LQi/b;

    iget-object v1, p0, LTk/f$a;->c:LTk/f;

    invoke-static {v1}, LTk/f;->b(LTk/f;)LBi/h;

    move-result-object v1

    invoke-direct {v0, p1, v1}, LQi/b;-><init>(Ljava/io/OutputStream;LBi/h;)V

    return-object v0
.end method

.method public getKey()LQk/r;
    .locals 4

    new-instance v0, LQk/r;

    new-instance v1, Lhi/b;

    iget-object v2, p0, LTk/f$a;->c:LTk/f;

    invoke-static {v2}, LTk/f;->a(LTk/f;)Loh/x;

    move-result-object v2

    iget-object v3, p0, LTk/f$a;->a:LXh/s;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    iget-object v2, p0, LTk/f$a;->b:[C

    invoke-static {v2}, LBi/L;->a([C)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, LQk/r;-><init>(Lhi/b;[B)V

    return-object v0
.end method
