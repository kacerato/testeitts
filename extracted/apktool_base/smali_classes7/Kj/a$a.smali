.class public LKj/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbk/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:LTj/a;


# direct methods
.method public constructor <init>(LTj/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKj/a$a;->a:LTj/a;

    return-void
.end method


# virtual methods
.method public a(Lhi/h0;)Ljava/security/PublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lhi/h0;->z()Loh/c;

    move-result-object p1

    invoke-virtual {p1}, Loh/c;->F()[B

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/PublicKey;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object v2

    iget-object v3, p0, LKj/a$a;->a:LTj/a;

    invoke-virtual {v2}, Lhi/h0;->u()Lhi/b;

    move-result-object v4

    invoke-virtual {v4}, Lhi/b;->u()Loh/x;

    move-result-object v4

    invoke-interface {v3, v4}, LTj/a;->e(Loh/x;)Lbk/c;

    move-result-object v3

    invoke-interface {v3, v2}, Lbk/c;->a(Lhi/h0;)Ljava/security/PublicKey;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, LHj/e;

    invoke-direct {p1, v0}, LHj/e;-><init>([Ljava/security/PublicKey;)V

    return-object p1
.end method

.method public b(LXh/v;)Ljava/security/PrivateKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LXh/v;->E()Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/PrivateKey;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object v2

    iget-object v3, p0, LKj/a$a;->a:LTj/a;

    invoke-virtual {v2}, LXh/v;->y()Lhi/b;

    move-result-object v4

    invoke-virtual {v4}, Lhi/b;->u()Loh/x;

    move-result-object v4

    invoke-interface {v3, v4}, LTj/a;->e(Loh/x;)Lbk/c;

    move-result-object v3

    invoke-interface {v3, v2}, Lbk/c;->b(LXh/v;)Ljava/security/PrivateKey;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, LHj/d;

    invoke-direct {p1, v0}, LHj/d;-><init>([Ljava/security/PrivateKey;)V

    return-object p1
.end method
