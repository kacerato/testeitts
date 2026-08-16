.class public Luh/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Loh/x;

.field public b:Loh/N;


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

    iput-object v0, p0, Luh/p;->a:Loh/x;

    invoke-interface {p1}, Loh/F;->readObject()Loh/g;

    move-result-object p1

    check-cast p1, Loh/N;

    iput-object p1, p0, Luh/p;->b:Loh/N;

    return-void
.end method


# virtual methods
.method public a(I)Loh/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Luh/p;->b:Loh/N;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Loh/V;->F(Loh/N;I)Loh/g;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Loh/x;
    .locals 1

    iget-object v0, p0, Luh/p;->a:Loh/x;

    return-object v0
.end method
