.class public Lfi/b;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;
.implements Loh/J;


# instance fields
.field public b:Loh/J;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/M0;

    invoke-direct {v0, p1}, Loh/M0;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lfi/b;->b:Loh/J;

    return-void
.end method

.method public constructor <init>(Loh/C;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lfi/b;->b:Loh/J;

    return-void
.end method

.method public constructor <init>(Loh/K;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lfi/b;->b:Loh/J;

    return-void
.end method

.method public constructor <init>(Loh/Q;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lfi/b;->b:Loh/J;

    return-void
.end method

.method public constructor <init>(Loh/S;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lfi/b;->b:Loh/J;

    return-void
.end method

.method public constructor <init>(Loh/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lfi/b;->b:Loh/J;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lfi/b;
    .locals 3

    if-eqz p0, :cond_6

    instance-of v0, p0, Lfi/b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/K;

    if-eqz v0, :cond_1

    new-instance v0, Lfi/b;

    check-cast p0, Loh/K;

    invoke-direct {v0, p0}, Lfi/b;-><init>(Loh/K;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Loh/C;

    if-eqz v0, :cond_2

    new-instance v0, Lfi/b;

    check-cast p0, Loh/C;

    invoke-direct {v0, p0}, Lfi/b;-><init>(Loh/C;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Loh/S;

    if-eqz v0, :cond_3

    new-instance v0, Lfi/b;

    check-cast p0, Loh/S;

    invoke-direct {v0, p0}, Lfi/b;-><init>(Loh/S;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Loh/Q;

    if-eqz v0, :cond_4

    new-instance v0, Lfi/b;

    check-cast p0, Loh/Q;

    invoke-direct {v0, p0}, Lfi/b;-><init>(Loh/Q;)V

    return-object v0

    :cond_4
    instance-of v0, p0, Loh/b;

    if-eqz v0, :cond_5

    new-instance v0, Lfi/b;

    check-cast p0, Loh/b;

    invoke-direct {v0, p0}, Lfi/b;-><init>(Loh/b;)V

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

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

    :cond_6
    :goto_0
    check-cast p0, Lfi/b;

    return-object p0
.end method

.method public static v(Loh/M;Z)Lfi/b;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Loh/M;->O()Loh/v;

    move-result-object p0

    invoke-static {p0}, Lfi/b;->u(Ljava/lang/Object;)Lfi/b;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "choice item must be explicitly tagged"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfi/b;->b:Loh/J;

    invoke-interface {v0}, Loh/J;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lfi/b;->b:Loh/J;

    check-cast v0, Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfi/b;->b:Loh/J;

    invoke-interface {v0}, Loh/J;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
