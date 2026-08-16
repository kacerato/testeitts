.class public Lwh/g;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/E;

.field public c:Loh/s;

.field public d:Loh/s;

.field public e:Lhi/b;

.field public f:Lfi/d;

.field public g:Lwh/n;

.field public h:Lfi/d;

.field public i:Lhi/h0;

.field public j:Loh/c;

.field public k:Loh/c;

.field public l:Lhi/C;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 4

    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lwh/g;->b:Loh/E;

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/M;

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {v0, v3}, Lhi/C;->D(Loh/M;Z)Lhi/C;

    move-result-object v0

    iput-object v0, p0, Lwh/g;->l:Lhi/C;

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v3}, Loh/c;->I(Loh/M;Z)Loh/c;

    move-result-object v0

    iput-object v0, p0, Lwh/g;->k:Loh/c;

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v3}, Loh/c;->I(Loh/M;Z)Loh/c;

    move-result-object v0

    iput-object v0, p0, Lwh/g;->j:Loh/c;

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v3}, Lhi/h0;->x(Loh/M;Z)Lhi/h0;

    move-result-object v0

    iput-object v0, p0, Lwh/g;->i:Lhi/h0;

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v2}, Lfi/d;->y(Loh/M;Z)Lfi/d;

    move-result-object v0

    iput-object v0, p0, Lwh/g;->h:Lfi/d;

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v3}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v0

    invoke-static {v0}, Lwh/n;->u(Ljava/lang/Object;)Lwh/n;

    move-result-object v0

    iput-object v0, p0, Lwh/g;->g:Lwh/n;

    goto :goto_0

    :pswitch_6
    invoke-static {v0, v2}, Lfi/d;->y(Loh/M;Z)Lfi/d;

    move-result-object v0

    iput-object v0, p0, Lwh/g;->f:Lfi/d;

    goto :goto_0

    :pswitch_7
    invoke-static {v0, v3}, Lhi/b;->w(Loh/M;Z)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lwh/g;->e:Lhi/b;

    goto :goto_0

    :pswitch_8
    invoke-static {v0, v3}, Loh/s;->G(Loh/M;Z)Loh/s;

    move-result-object v0

    iput-object v0, p0, Lwh/g;->d:Loh/s;

    goto :goto_0

    :pswitch_9
    invoke-static {v0, v3}, Loh/s;->G(Loh/M;Z)Loh/s;

    move-result-object v0

    iput-object v0, p0, Lwh/g;->c:Loh/s;

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static v(Ljava/lang/Object;)Lwh/g;
    .locals 1

    instance-of v0, p0, Lwh/g;

    if-eqz v0, :cond_0

    check-cast p0, Lwh/g;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lwh/g;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lwh/g;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Loh/s;
    .locals 1

    iget-object v0, p0, Lwh/g;->d:Loh/s;

    return-object v0
.end method

.method public B()Lhi/b;
    .locals 1

    iget-object v0, p0, Lwh/g;->e:Lhi/b;

    return-object v0
.end method

.method public C()Lfi/d;
    .locals 1

    iget-object v0, p0, Lwh/g;->h:Lfi/d;

    return-object v0
.end method

.method public D()Loh/c;
    .locals 1

    iget-object v0, p0, Lwh/g;->k:Loh/c;

    return-object v0
.end method

.method public E()Lwh/n;
    .locals 1

    iget-object v0, p0, Lwh/g;->g:Lwh/n;

    return-object v0
.end method

.method public F()I
    .locals 1

    iget-object v0, p0, Lwh/g;->c:Loh/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lwh/g;->b:Loh/E;

    return-object v0
.end method

.method public u()Lhi/C;
    .locals 1

    iget-object v0, p0, Lwh/g;->l:Lhi/C;

    return-object v0
.end method

.method public x()Lfi/d;
    .locals 1

    iget-object v0, p0, Lwh/g;->f:Lfi/d;

    return-object v0
.end method

.method public y()Loh/c;
    .locals 1

    iget-object v0, p0, Lwh/g;->j:Loh/c;

    return-object v0
.end method

.method public z()Lhi/h0;
    .locals 1

    iget-object v0, p0, Lwh/g;->i:Lhi/h0;

    return-object v0
.end method
