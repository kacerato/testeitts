.class public Lai/b;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final c:Loh/x;

.field public static final d:Loh/x;

.field public static final e:Loh/x;

.field public static final f:Loh/x;

.field public static final g:Loh/x;

.field public static final h:Loh/x;

.field public static final i:Loh/x;

.field public static final j:Loh/x;

.field public static final k:Loh/x;

.field public static final l:Loh/x;

.field public static final m:Loh/x;


# instance fields
.field public b:Loh/E;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, LXh/t;->t2:Loh/x;

    sput-object v0, Lai/b;->c:Loh/x;

    sget-object v0, LXh/t;->u2:Loh/x;

    sput-object v0, Lai/b;->d:Loh/x;

    sget-object v0, LXh/t;->w2:Loh/x;

    sput-object v0, Lai/b;->e:Loh/x;

    sget-object v0, LSh/d;->Q:Loh/x;

    sput-object v0, Lai/b;->f:Loh/x;

    sget-object v0, LSh/d;->H:Loh/x;

    sput-object v0, Lai/b;->g:Loh/x;

    sget-object v0, LSh/d;->y:Loh/x;

    sput-object v0, Lai/b;->h:Loh/x;

    new-instance v0, Loh/x;

    const-string v1, "1.3.6.1.4.1.188.7.1.1.2"

    invoke-direct {v0, v1}, Loh/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lai/b;->i:Loh/x;

    new-instance v0, Loh/x;

    const-string v1, "1.2.840.113533.7.66.10"

    invoke-direct {v0, v1}, Loh/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lai/b;->j:Loh/x;

    new-instance v0, Loh/x;

    const-string v1, "1.3.14.3.2.7"

    invoke-direct {v0, v1}, Loh/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lai/b;->k:Loh/x;

    sget-object v0, LXh/t;->n1:Loh/x;

    sput-object v0, Lai/b;->l:Loh/x;

    sget-object v0, LXh/t;->o1:Loh/x;

    sput-object v0, Lai/b;->m:Loh/x;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 0

    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lai/b;->b:Loh/E;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Lai/b;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Lai/b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/E;

    if-eqz v0, :cond_1

    new-instance v0, Lai/b;

    check-cast p0, Loh/E;

    invoke-direct {v0, p0}, Lai/b;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Luh/a;

    if-eqz v0, :cond_2

    new-instance v0, Lai/b;

    check-cast p0, Luh/a;

    invoke-virtual {p0}, Luh/a;->v()Loh/G;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Loh/G;->H(I)Loh/g;

    move-result-object p0

    check-cast p0, Loh/E;

    invoke-direct {v0, p0}, Lai/b;-><init>(Loh/E;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Lai/b;

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lai/b;->b:Loh/E;

    return-object v0
.end method

.method public u(Loh/x;)Ljava/util/Vector;
    .locals 4

    iget-object v0, p0, Lai/b;->b:Loh/E;

    invoke-virtual {v0}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    if-nez p1, :cond_0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lai/d;->v(Ljava/lang/Object;)Lai/d;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lai/d;->v(Ljava/lang/Object;)Lai/d;

    move-result-object v2

    invoke-virtual {v2}, Lai/d;->u()Loh/x;

    move-result-object v3

    invoke-virtual {p1, v3}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-object v1
.end method
