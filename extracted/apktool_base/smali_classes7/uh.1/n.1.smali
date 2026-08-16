.class public Luh/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Loh/s;

.field public b:Lhi/b;

.field public c:Luh/p;


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

    check-cast v0, Loh/s;

    iput-object v0, p0, Luh/n;->a:Loh/s;

    invoke-interface {p1}, Loh/F;->readObject()Loh/g;

    move-result-object v0

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Luh/n;->b:Lhi/b;

    new-instance v0, Luh/p;

    invoke-interface {p1}, Loh/F;->readObject()Loh/g;

    move-result-object p1

    check-cast p1, Loh/F;

    invoke-direct {v0, p1}, Luh/p;-><init>(Loh/F;)V

    iput-object v0, p0, Luh/n;->c:Luh/p;

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, Luh/n;->b:Lhi/b;

    return-object v0
.end method

.method public b()Luh/p;
    .locals 1

    iget-object v0, p0, Luh/n;->c:Luh/p;

    return-object v0
.end method

.method public c()Loh/s;
    .locals 1

    iget-object v0, p0, Luh/n;->a:Loh/s;

    return-object v0
.end method
