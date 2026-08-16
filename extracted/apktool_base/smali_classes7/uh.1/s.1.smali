.class public Luh/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Loh/x;

.field public b:Lhi/b;

.field public c:Loh/N;


# direct methods
.method public constructor <init>(Loh/F;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Loh/F;->readObject()Loh/g;

    move-result-object v0

    check-cast v0, Loh/x;

    iput-object v0, p0, Luh/s;->a:Loh/x;

    invoke-interface {p1}, Loh/F;->readObject()Loh/g;

    move-result-object v0

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Luh/s;->b:Lhi/b;

    invoke-interface {p1}, Loh/F;->readObject()Loh/g;

    move-result-object p1

    check-cast p1, Loh/N;

    iput-object p1, p0, Luh/s;->c:Loh/N;

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, Luh/s;->b:Lhi/b;

    return-object v0
.end method

.method public b()Loh/x;
    .locals 1

    iget-object v0, p0, Luh/s;->a:Loh/x;

    return-object v0
.end method

.method public c(I)Loh/g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Luh/s;->c:Loh/N;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, p1}, Loh/V;->B(Loh/N;IZI)Loh/g;

    move-result-object p1

    return-object p1
.end method
