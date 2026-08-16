.class public Luh/D;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# instance fields
.field public b:Luh/z;

.field public c:Luh/S;


# direct methods
.method public constructor <init>(Luh/S;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Luh/D;->b:Luh/z;

    iput-object p1, p0, Luh/D;->c:Luh/S;

    return-void
.end method

.method public constructor <init>(Luh/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Luh/D;->b:Luh/z;

    const/4 p1, 0x0

    iput-object p1, p0, Luh/D;->c:Luh/S;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Luh/D;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Luh/D;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/E;

    if-eqz v0, :cond_1

    new-instance v0, Luh/D;

    invoke-static {p0}, Luh/z;->u(Ljava/lang/Object;)Luh/z;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/D;-><init>(Luh/z;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Loh/M;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Loh/M;

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v1

    if-nez v1, :cond_2

    new-instance p0, Luh/D;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Luh/S;->w(Loh/M;Z)Luh/S;

    move-result-object v0

    invoke-direct {p0, v0}, Luh/D;-><init>(Luh/S;)V

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid KeyAgreeRecipientIdentifier: "

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
    check-cast p0, Luh/D;

    return-object p0
.end method

.method public static v(Loh/M;Z)Luh/D;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Luh/D;->u(Ljava/lang/Object;)Luh/D;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 3

    iget-object v0, p0, Luh/D;->b:Luh/z;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Luh/z;->r()Loh/B;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Loh/K0;

    iget-object v1, p0, Luh/D;->c:Luh/S;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v0
.end method

.method public x()Luh/z;
    .locals 1

    iget-object v0, p0, Luh/D;->b:Luh/z;

    return-object v0
.end method

.method public y()Luh/S;
    .locals 1

    iget-object v0, p0, Luh/D;->c:Luh/S;

    return-object v0
.end method
