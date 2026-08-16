.class public Lii/h;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# static fields
.field public static final c:I = 0x0

.field public static final d:I = 0x1


# instance fields
.field public b:Loh/g;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknow PredefinedBiometricType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Loh/s;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, Lii/h;->b:Loh/g;

    return-void
.end method

.method public constructor <init>(Loh/x;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lii/h;->b:Loh/g;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Lii/h;
    .locals 1

    if-eqz p0, :cond_3

    instance-of v0, p0, Lii/h;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/s;

    if-eqz v0, :cond_1

    invoke-static {p0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p0

    invoke-virtual {p0}, Loh/s;->O()I

    move-result p0

    new-instance v0, Lii/h;

    invoke-direct {v0, p0}, Lii/h;-><init>(I)V

    return-object v0

    :cond_1
    instance-of v0, p0, Loh/x;

    if-eqz v0, :cond_2

    invoke-static {p0}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object p0

    new-instance v0, Lii/h;

    invoke-direct {v0, p0}, Lii/h;-><init>(Loh/x;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown object in getInstance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    check-cast p0, Lii/h;

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lii/h;->b:Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public u()Loh/x;
    .locals 1

    iget-object v0, p0, Lii/h;->b:Loh/g;

    check-cast v0, Loh/x;

    return-object v0
.end method

.method public x()I
    .locals 1

    iget-object v0, p0, Lii/h;->b:Loh/g;

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Lii/h;->b:Loh/g;

    instance-of v0, v0, Loh/s;

    return v0
.end method
