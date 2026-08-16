.class public Lth/G;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final n:Lhi/E;

.field public static final o:I = 0x1

.field public static final p:I = 0x2

.field public static final q:I = 0x3


# instance fields
.field public final b:Loh/s;

.field public final c:Lhi/E;

.field public final d:Lhi/E;

.field public e:Loh/n;

.field public f:Lhi/b;

.field public g:Loh/y;

.field public h:Loh/y;

.field public i:Loh/y;

.field public j:Loh/y;

.field public k:Loh/y;

.field public l:Lth/F;

.field public m:Loh/E;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhi/E;

    new-instance v1, Loh/G0;

    invoke-direct {v1}, Loh/G0;-><init>()V

    invoke-static {v1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lhi/E;-><init>(Lfi/d;)V

    sput-object v0, Lth/G;->n:Lhi/E;

    return-void
.end method

.method public constructor <init>(ILhi/E;Lhi/E;)V
    .locals 3

    .line 1
    new-instance v0, Loh/s;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    invoke-direct {p0, v0, p2, p3}, Lth/G;-><init>(Loh/s;Lhi/E;Lhi/E;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Lth/G;->b:Loh/s;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object v0

    iput-object v0, p0, Lth/G;->c:Lhi/E;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object v0

    iput-object v0, p0, Lth/G;->d:Lhi/E;

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/M;

    invoke-virtual {v0}, Loh/M;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {v0, v2}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v0

    iput-object v0, p0, Lth/G;->m:Loh/E;

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v2}, Lth/F;->v(Loh/M;Z)Lth/F;

    move-result-object v0

    iput-object v0, p0, Lth/G;->l:Lth/F;

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v2}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object v0

    iput-object v0, p0, Lth/G;->k:Loh/y;

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v2}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object v0

    iput-object v0, p0, Lth/G;->j:Loh/y;

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v2}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object v0

    iput-object v0, p0, Lth/G;->i:Loh/y;

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v2}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object v0

    iput-object v0, p0, Lth/G;->h:Loh/y;

    goto :goto_0

    :pswitch_6
    invoke-static {v0, v2}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object v0

    iput-object v0, p0, Lth/G;->g:Loh/y;

    goto :goto_0

    :pswitch_7
    invoke-static {v0, v2}, Lhi/b;->w(Loh/M;Z)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lth/G;->f:Lhi/b;

    goto :goto_0

    :pswitch_8
    invoke-static {v0, v2}, Loh/n;->K(Loh/M;Z)Loh/n;

    move-result-object v0

    iput-object v0, p0, Lth/G;->e:Loh/n;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Loh/V;->y(Loh/M;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public constructor <init>(Loh/s;Lhi/E;Lhi/E;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lth/G;->b:Loh/s;

    iput-object p2, p0, Lth/G;->c:Lhi/E;

    iput-object p3, p0, Lth/G;->d:Lhi/E;

    return-void
.end method

.method private u(Loh/h;ILoh/g;)V
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Loh/K0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {p1, v0}, Loh/h;->a(Loh/g;)V

    :cond_0
    return-void
.end method

.method public static y(Ljava/lang/Object;)Lth/G;
    .locals 1

    instance-of v0, p0, Lth/G;

    if-eqz v0, :cond_0

    check-cast p0, Lth/G;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/G;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/G;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Lhi/b;
    .locals 1

    iget-object v0, p0, Lth/G;->f:Lhi/b;

    return-object v0
.end method

.method public B()Loh/s;
    .locals 1

    iget-object v0, p0, Lth/G;->b:Loh/s;

    return-object v0
.end method

.method public C()Loh/y;
    .locals 1

    iget-object v0, p0, Lth/G;->h:Loh/y;

    return-object v0
.end method

.method public D()Loh/y;
    .locals 1

    iget-object v0, p0, Lth/G;->k:Loh/y;

    return-object v0
.end method

.method public E()Lhi/E;
    .locals 1

    iget-object v0, p0, Lth/G;->d:Lhi/E;

    return-object v0
.end method

.method public F()Lhi/E;
    .locals 1

    iget-object v0, p0, Lth/G;->c:Lhi/E;

    return-object v0
.end method

.method public G()Loh/y;
    .locals 1

    iget-object v0, p0, Lth/G;->g:Loh/y;

    return-object v0
.end method

.method public H()Loh/y;
    .locals 1

    iget-object v0, p0, Lth/G;->j:Loh/y;

    return-object v0
.end method

.method public I()Loh/y;
    .locals 1

    iget-object v0, p0, Lth/G;->i:Loh/y;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/h;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lth/G;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/G;->c:Lhi/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/G;->d:Lhi/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lth/G;->e:Loh/n;

    invoke-direct {p0, v0, v1, v2}, Lth/G;->u(Loh/h;ILoh/g;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lth/G;->f:Lhi/b;

    invoke-direct {p0, v0, v1, v2}, Lth/G;->u(Loh/h;ILoh/g;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lth/G;->g:Loh/y;

    invoke-direct {p0, v0, v1, v2}, Lth/G;->u(Loh/h;ILoh/g;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lth/G;->h:Loh/y;

    invoke-direct {p0, v0, v1, v2}, Lth/G;->u(Loh/h;ILoh/g;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lth/G;->i:Loh/y;

    invoke-direct {p0, v0, v1, v2}, Lth/G;->u(Loh/h;ILoh/g;)V

    const/4 v1, 0x5

    iget-object v2, p0, Lth/G;->j:Loh/y;

    invoke-direct {p0, v0, v1, v2}, Lth/G;->u(Loh/h;ILoh/g;)V

    const/4 v1, 0x6

    iget-object v2, p0, Lth/G;->k:Loh/y;

    invoke-direct {p0, v0, v1, v2}, Lth/G;->u(Loh/h;ILoh/g;)V

    const/4 v1, 0x7

    iget-object v2, p0, Lth/G;->l:Lth/F;

    invoke-direct {p0, v0, v1, v2}, Lth/G;->u(Loh/h;ILoh/g;)V

    const/16 v1, 0x8

    iget-object v2, p0, Lth/G;->m:Loh/E;

    invoke-direct {p0, v0, v1, v2}, Lth/G;->u(Loh/h;ILoh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Lth/F;
    .locals 1

    iget-object v0, p0, Lth/G;->l:Lth/F;

    return-object v0
.end method

.method public x()[Lth/t;
    .locals 4

    iget-object v0, p0, Lth/G;->m:Loh/E;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [Lth/t;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lth/G;->m:Loh/E;

    invoke-virtual {v3, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lth/t;->w(Ljava/lang/Object;)Lth/t;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public z()Loh/n;
    .locals 1

    iget-object v0, p0, Lth/G;->e:Loh/n;

    return-object v0
.end method
