.class public LTk/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTk/e$a;->a(Lhi/b;)LQk/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lhi/b;

.field public final synthetic b:LWi/e;

.field public final synthetic c:LTk/e$a;


# direct methods
.method public constructor <init>(LTk/e$a;Lhi/b;LWi/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LTk/e$a$a;->c:LTk/e$a;

    iput-object p2, p0, LTk/e$a$a;->a:Lhi/b;

    iput-object p3, p0, LTk/e$a$a;->b:LWi/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, LTk/e$a$a;->a:Lhi/b;

    return-object v0
.end method

.method public b()LQk/r;
    .locals 3

    new-instance v0, LQk/r;

    iget-object v1, p0, LTk/e$a$a;->a:Lhi/b;

    iget-object v2, p0, LTk/e$a$a;->c:LTk/e$a;

    iget-object v2, v2, LTk/e$a;->a:[C

    invoke-static {v2}, LBi/L;->a([C)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, LQk/r;-><init>(Lhi/b;[B)V

    return-object v0
.end method

.method public d(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    new-instance v0, LQi/a;

    iget-object v1, p0, LTk/e$a$a;->b:LWi/e;

    invoke-direct {v0, p1, v1}, LQi/a;-><init>(Ljava/io/InputStream;LBi/h;)V

    return-object v0
.end method
