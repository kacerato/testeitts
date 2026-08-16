.class public abstract Lorg/bouncycastle/cms/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/G0;


# instance fields
.field public a:Loh/x;

.field public b:Loh/x;

.field public c:Lhi/h0;


# direct methods
.method public constructor <init>(Loh/x;Lhi/h0;Loh/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/cms/n0;->c:Lhi/h0;

    iput-object p1, p0, Lorg/bouncycastle/cms/n0;->a:Loh/x;

    iput-object p3, p0, Lorg/bouncycastle/cms/n0;->b:Loh/x;

    return-void
.end method


# virtual methods
.method public a(LQk/r;)Luh/Q;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Luh/H;

    iget-object v1, p0, Lorg/bouncycastle/cms/n0;->c:Lhi/h0;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/cms/n0;->b(Lhi/h0;)Luh/J;

    move-result-object v1

    invoke-direct {v0, v1}, Luh/H;-><init>(Luh/J;)V

    iget-object v1, p0, Lorg/bouncycastle/cms/n0;->b:Loh/x;

    invoke-virtual {v1}, Loh/x;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/cms/X;->y(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/cms/n0;->b:Loh/x;

    sget-object v2, LXh/t;->J2:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/cms/n0;->a:Loh/x;

    invoke-static {v1}, Lorg/bouncycastle/cms/X;->B(Loh/x;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lhi/b;

    iget-object v2, p0, Lorg/bouncycastle/cms/n0;->b:Loh/x;

    new-instance v3, Lyh/i;

    sget-object v4, Lyh/a;->h:Loh/x;

    invoke-direct {v3, v4}, Lyh/i;-><init>(Loh/x;)V

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lhi/b;

    iget-object v2, p0, Lorg/bouncycastle/cms/n0;->b:Loh/x;

    invoke-direct {v1, v2}, Lhi/b;-><init>(Loh/x;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v1, Lhi/b;

    iget-object v2, p0, Lorg/bouncycastle/cms/n0;->b:Loh/x;

    sget-object v3, Loh/A0;->c:Loh/A0;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    :goto_1
    new-instance v2, Lhi/b;

    iget-object v3, p0, Lorg/bouncycastle/cms/n0;->a:Loh/x;

    invoke-direct {v2, v3, v1}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-virtual {p0, v2, v1, p1}, Lorg/bouncycastle/cms/n0;->c(Lhi/b;Lhi/b;LQk/r;)Loh/E;

    move-result-object p1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/cms/n0;->d(Lhi/b;)[B

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v3, Luh/Q;

    new-instance v4, Luh/E;

    new-instance v5, Loh/C0;

    invoke-direct {v5, v1}, Loh/C0;-><init>([B)V

    invoke-direct {v4, v0, v5, v2, p1}, Luh/E;-><init>(Luh/H;Loh/y;Lhi/b;Loh/E;)V

    invoke-direct {v3, v4}, Luh/Q;-><init>(Luh/E;)V

    return-object v3

    :cond_3
    new-instance v1, Luh/Q;

    new-instance v3, Luh/E;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v2, p1}, Luh/E;-><init>(Luh/H;Loh/y;Lhi/b;Loh/E;)V

    invoke-direct {v1, v3}, Luh/Q;-><init>(Luh/E;)V

    return-object v1
.end method

.method public b(Lhi/h0;)Luh/J;
    .locals 2

    new-instance v0, Luh/J;

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object v1

    invoke-virtual {p1}, Lhi/h0;->z()Loh/c;

    move-result-object p1

    invoke-virtual {p1}, Loh/c;->F()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Luh/J;-><init>(Lhi/b;[B)V

    return-object v0
.end method

.method public abstract c(Lhi/b;Lhi/b;LQk/r;)Loh/E;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation
.end method

.method public abstract d(Lhi/b;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation
.end method
