.class public LNg/f$j$a;
.super LGg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LNg/f$j;->f(ZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:LNg/h;

.field public final synthetic d:LNg/f$j;


# direct methods
.method public varargs constructor <init>(LNg/f$j;Ljava/lang/String;[Ljava/lang/Object;LNg/h;)V
    .locals 0

    iput-object p1, p0, LNg/f$j$a;->d:LNg/f$j;

    iput-object p4, p0, LNg/f$j$a;->c:LNg/h;

    invoke-direct {p0, p2, p3}, LGg/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public m()V
    .locals 4

    :try_start_0
    iget-object v0, p0, LNg/f$j$a;->d:LNg/f$j;

    iget-object v0, v0, LNg/f$j;->d:LNg/f;

    iget-object v0, v0, LNg/f;->c:LNg/f$h;

    iget-object v1, p0, LNg/f$j$a;->c:LNg/h;

    invoke-virtual {v0, v1}, LNg/f$h;->f(LNg/h;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, LPg/f;->k()LPg/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http2Connection.Listener failure for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LNg/f$j$a;->d:LNg/f$j;

    iget-object v3, v3, LNg/f$j;->d:LNg/f;

    iget-object v3, v3, LNg/f;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2, v0}, LPg/f;->r(ILjava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v0, p0, LNg/f$j$a;->c:LNg/h;

    sget-object v1, LNg/a;->PROTOCOL_ERROR:LNg/a;

    invoke-virtual {v0, v1}, LNg/h;->f(LNg/a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method
