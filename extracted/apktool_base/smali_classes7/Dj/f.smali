.class public LDj/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LDj/c;

.field public final b:[B


# direct methods
.method public constructor <init>(LDj/c;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDj/f;->a:LDj/c;

    iput-object p2, p0, LDj/f;->b:[B

    return-void
.end method


# virtual methods
.method public a([B)LEk/A;
    .locals 3

    :try_start_0
    invoke-static {}, LEk/w;->u()LEk/w$a;

    move-result-object v0

    new-instance v1, LFk/x;

    iget-object v2, p0, LDj/f;->b:[B

    invoke-direct {v1, v2}, LFk/x;-><init>([B)V

    invoke-virtual {v0, v1}, LEk/w$a;->c(LFk/x;)LEk/w$a;

    move-result-object v0

    iget-object v1, p0, LDj/f;->a:LDj/c;

    invoke-interface {v1, p1}, LDj/c;->a([B)LEk/j;

    move-result-object p1

    invoke-virtual {v0, p1}, LEk/w$a;->b(LEk/j;)LEk/w$a;

    move-result-object p1

    invoke-virtual {p1}, LEk/w$a;->a()LEk/w;

    move-result-object p1

    invoke-static {p1}, LEk/A;->u(LEk/w;)LEk/A;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
