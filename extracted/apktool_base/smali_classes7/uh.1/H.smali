.class public Luh/H;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# instance fields
.field public b:Loh/g;


# direct methods
.method public constructor <init>(Lhi/g0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/K0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Loh/K0;-><init>(ZILoh/g;)V

    iput-object v0, p0, Luh/H;->b:Loh/g;

    return-void
.end method

.method public constructor <init>(Loh/B;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Luh/H;->b:Loh/g;

    return-void
.end method

.method public constructor <init>(Loh/y;)V
    .locals 1

    .line 2
    new-instance v0, Lhi/g0;

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lhi/g0;-><init>([B)V

    invoke-direct {p0, v0}, Luh/H;-><init>(Lhi/g0;)V

    return-void
.end method

.method public constructor <init>(Luh/J;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/K0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Loh/K0;-><init>(ZILoh/g;)V

    iput-object v0, p0, Luh/H;->b:Loh/g;

    return-void
.end method

.method public constructor <init>(Luh/z;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Luh/H;->b:Loh/g;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Luh/H;
    .locals 3

    if-eqz p0, :cond_5

    instance-of v0, p0, Luh/H;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Luh/z;

    if-eqz v0, :cond_1

    new-instance v0, Luh/H;

    check-cast p0, Luh/z;

    invoke-direct {v0, p0}, Luh/H;-><init>(Luh/z;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Loh/E;

    if-eqz v0, :cond_2

    new-instance v0, Luh/H;

    invoke-static {p0}, Luh/z;->u(Ljava/lang/Object;)Luh/z;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/H;-><init>(Luh/z;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Loh/M;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Loh/M;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Loh/M;->p(I)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance p0, Luh/H;

    invoke-static {v0, v1}, Lhi/g0;->w(Loh/M;Z)Lhi/g0;

    move-result-object v0

    invoke-direct {p0, v0}, Luh/H;-><init>(Lhi/g0;)V

    return-object p0

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Loh/M;->p(I)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance p0, Luh/H;

    invoke-static {v0, v1}, Luh/J;->w(Loh/M;Z)Luh/J;

    move-result-object v0

    invoke-direct {p0, v0}, Luh/H;-><init>(Luh/J;)V

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid OriginatorIdentifierOrKey: "

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

    :cond_5
    :goto_0
    check-cast p0, Luh/H;

    return-object p0
.end method

.method public static w(Loh/M;Z)Luh/H;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Loh/M;->O()Loh/v;

    move-result-object p0

    invoke-static {p0}, Luh/H;->v(Ljava/lang/Object;)Luh/H;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t implicitly tag OriginatorIdentifierOrKey"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Luh/H;->b:Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public u()Loh/g;
    .locals 1

    iget-object v0, p0, Luh/H;->b:Loh/g;

    return-object v0
.end method

.method public x()Luh/z;
    .locals 2

    iget-object v0, p0, Luh/H;->b:Loh/g;

    instance-of v1, v0, Luh/z;

    if-eqz v1, :cond_0

    check-cast v0, Luh/z;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public y()Luh/J;
    .locals 2

    iget-object v0, p0, Luh/H;->b:Loh/g;

    instance-of v1, v0, Loh/M;

    if-eqz v1, :cond_0

    check-cast v0, Loh/M;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Loh/M;->p(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Luh/J;->w(Loh/M;Z)Luh/J;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public z()Lhi/g0;
    .locals 3

    iget-object v0, p0, Luh/H;->b:Loh/g;

    instance-of v1, v0, Loh/M;

    if-eqz v1, :cond_0

    check-cast v0, Loh/M;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Loh/M;->p(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lhi/g0;->w(Loh/M;Z)Lhi/g0;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
