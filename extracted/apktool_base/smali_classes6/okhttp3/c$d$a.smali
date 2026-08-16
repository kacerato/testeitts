.class public Lokhttp3/c$d$a;
.super LTg/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/c$d;-><init>(LIg/d$f;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:LIg/d$f;

.field public final synthetic d:Lokhttp3/c$d;


# direct methods
.method public constructor <init>(Lokhttp3/c$d;LTg/y;LIg/d$f;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/c$d$a;->d:Lokhttp3/c$d;

    iput-object p3, p0, Lokhttp3/c$d$a;->c:LIg/d$f;

    invoke-direct {p0, p2}, LTg/i;-><init>(LTg/y;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/c$d$a;->c:LIg/d$f;

    invoke-virtual {v0}, LIg/d$f;->close()V

    invoke-super {p0}, LTg/i;->close()V

    return-void
.end method
