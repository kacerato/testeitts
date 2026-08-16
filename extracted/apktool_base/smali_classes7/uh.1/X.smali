.class public Luh/X;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# instance fields
.field public b:Loh/g;


# direct methods
.method public constructor <init>(Loh/B;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Luh/X;->b:Loh/g;

    return-void
.end method

.method public constructor <init>(Loh/y;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/K0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Loh/K0;-><init>(ZILoh/g;)V

    iput-object v0, p0, Luh/X;->b:Loh/g;

    return-void
.end method

.method public constructor <init>(Luh/z;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Luh/X;->b:Loh/g;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Luh/X;
    .locals 3

    if-eqz p0, :cond_4

    instance-of v0, p0, Luh/X;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Luh/z;

    if-eqz v0, :cond_1

    new-instance v0, Luh/X;

    check-cast p0, Luh/z;

    invoke-direct {v0, p0}, Luh/X;-><init>(Luh/z;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Loh/y;

    if-eqz v0, :cond_2

    new-instance v0, Luh/X;

    check-cast p0, Loh/y;

    invoke-direct {v0, p0}, Luh/X;-><init>(Loh/y;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Loh/B;

    if-eqz v0, :cond_3

    new-instance v0, Luh/X;

    check-cast p0, Loh/B;

    invoke-direct {v0, p0}, Luh/X;-><init>(Loh/B;)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal object in SignerIdentifier: "

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

    :cond_4
    :goto_0
    check-cast p0, Luh/X;

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Luh/X;->b:Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public u()Loh/g;
    .locals 2

    iget-object v0, p0, Luh/X;->b:Loh/g;

    instance-of v1, v0, Loh/M;

    if-eqz v1, :cond_0

    check-cast v0, Loh/M;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public x()Z
    .locals 1

    iget-object v0, p0, Luh/X;->b:Loh/g;

    instance-of v0, v0, Loh/M;

    return v0
.end method
