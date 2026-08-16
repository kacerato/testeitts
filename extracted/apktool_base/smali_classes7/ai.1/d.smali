.class public Lai/d;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final d:Loh/x;

.field public static final e:Loh/x;

.field public static final f:Loh/x;

.field public static final g:Loh/x;

.field public static final h:Loh/x;

.field public static final i:Loh/x;

.field public static final j:Loh/x;

.field public static final k:Loh/x;

.field public static final l:Loh/x;


# instance fields
.field public b:Loh/x;

.field public c:Loh/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, LXh/t;->t2:Loh/x;

    sput-object v0, Lai/d;->d:Loh/x;

    sget-object v0, LXh/t;->u2:Loh/x;

    sput-object v0, Lai/d;->e:Loh/x;

    sget-object v0, LXh/t;->w2:Loh/x;

    sput-object v0, Lai/d;->f:Loh/x;

    new-instance v0, Loh/x;

    const-string v1, "1.3.14.3.2.7"

    invoke-direct {v0, v1}, Loh/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lai/d;->g:Loh/x;

    sget-object v0, LXh/t;->n1:Loh/x;

    sput-object v0, Lai/d;->h:Loh/x;

    sget-object v0, LXh/t;->o1:Loh/x;

    sput-object v0, Lai/d;->i:Loh/x;

    sget-object v0, LSh/d;->y:Loh/x;

    sput-object v0, Lai/d;->j:Loh/x;

    sget-object v0, LSh/d;->H:Loh/x;

    sput-object v0, Lai/d;->k:Loh/x;

    sget-object v0, LSh/d;->Q:Loh/x;

    sput-object v0, Lai/d;->l:Loh/x;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/x;

    iput-object v0, p0, Lai/d;->b:Loh/x;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/B;

    iput-object p1, p0, Lai/d;->c:Loh/g;

    :cond_0
    return-void
.end method

.method public constructor <init>(Loh/x;Loh/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lai/d;->b:Loh/x;

    iput-object p2, p0, Lai/d;->c:Loh/g;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Lai/d;
    .locals 1

    if-eqz p0, :cond_2

    instance-of v0, p0, Lai/d;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/E;

    if-eqz v0, :cond_1

    new-instance v0, Lai/d;

    check-cast p0, Loh/E;

    invoke-direct {v0, p0}, Lai/d;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid SMIMECapability"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    check-cast p0, Lai/d;

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lai/d;->b:Loh/x;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lai/d;->c:Loh/g;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/x;
    .locals 1

    iget-object v0, p0, Lai/d;->b:Loh/x;

    return-object v0
.end method

.method public x()Loh/g;
    .locals 1

    iget-object v0, p0, Lai/d;->c:Loh/g;

    return-object v0
.end method
