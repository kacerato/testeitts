.class public Lokhttp3/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIg/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lokhttp3/c;


# direct methods
.method public constructor <init>(Lokhttp3/c;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/c$a;->a:Lokhttp3/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LIg/c;)V
    .locals 1

    iget-object v0, p0, Lokhttp3/c$a;->a:Lokhttp3/c;

    invoke-virtual {v0, p1}, Lokhttp3/c;->s(LIg/c;)V

    return-void
.end method

.method public b(Lokhttp3/C;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/c$a;->a:Lokhttp3/c;

    invoke-virtual {v0, p1}, Lokhttp3/c;->o(Lokhttp3/C;)V

    return-void
.end method

.method public c(Lokhttp3/C;)Lokhttp3/E;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/c$a;->a:Lokhttp3/c;

    invoke-virtual {v0, p1}, Lokhttp3/c;->f(Lokhttp3/C;)Lokhttp3/E;

    move-result-object p1

    return-object p1
.end method

.method public d(Lokhttp3/E;Lokhttp3/E;)V
    .locals 1

    iget-object v0, p0, Lokhttp3/c$a;->a:Lokhttp3/c;

    invoke-virtual {v0, p1, p2}, Lokhttp3/c;->t(Lokhttp3/E;Lokhttp3/E;)V

    return-void
.end method

.method public e(Lokhttp3/E;)LIg/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/c$a;->a:Lokhttp3/c;

    invoke-virtual {v0, p1}, Lokhttp3/c;->m(Lokhttp3/E;)LIg/b;

    move-result-object p1

    return-object p1
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lokhttp3/c$a;->a:Lokhttp3/c;

    invoke-virtual {v0}, Lokhttp3/c;->r()V

    return-void
.end method
