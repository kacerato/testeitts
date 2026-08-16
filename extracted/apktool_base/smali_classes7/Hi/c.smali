.class public LHi/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/n;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/Object;

.field public final d:LBi/o;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sget-object v1, LBi/o;->ANY:LBi/o;

    invoke-direct {p0, p1, p2, v0, v1}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    .line 2
    sget-object v0, LBi/o;->ANY:LBi/o;

    invoke-direct {p0, p1, p2, p3, v0}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LHi/c;->a:Ljava/lang/String;

    iput p2, p0, LHi/c;->b:I

    iput-object p3, p0, LHi/c;->c:Ljava/lang/Object;

    instance-of p1, p3, LBi/o;

    if-nez p1, :cond_0

    iput-object p4, p0, LHi/c;->d:LBi/o;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "params should not be CryptoServicePurpose"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()LBi/o;
    .locals 1

    iget-object v0, p0, LHi/c;->d:LBi/o;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LHi/c;->b:I

    return v0
.end method

.method public getParams()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LHi/c;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LHi/c;->a:Ljava/lang/String;

    return-object v0
.end method
