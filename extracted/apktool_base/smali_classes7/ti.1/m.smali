.class public Lti/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lti/d;


# instance fields
.field public b:LVh/m;


# direct methods
.method public constructor <init>(LVh/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lti/m;->b:LVh/m;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LVh/m;

    new-instance v1, Loh/n;

    invoke-direct {v1, p1}, Loh/n;-><init>(Ljava/util/Date;)V

    invoke-direct {v0, v1}, LVh/m;-><init>(Loh/n;)V

    iput-object v0, p0, Lti/m;->b:LVh/m;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;I)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LVh/m;

    new-instance v1, Loh/n;

    invoke-direct {v1, p1}, Loh/n;-><init>(Ljava/util/Date;)V

    invoke-static {p2}, Lhi/o;->w(I)Lhi/o;

    move-result-object p1

    invoke-direct {v0, v1, p1}, LVh/m;-><init>(Loh/n;Lhi/o;)V

    iput-object v0, p0, Lti/m;->b:LVh/m;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lti/m;->b:LVh/m;

    invoke-virtual {v0}, LVh/m;->x()Lhi/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/m;->b:LVh/m;

    invoke-virtual {v0}, LVh/m;->x()Lhi/o;

    move-result-object v0

    invoke-virtual {v0}, Lhi/o;->v()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to get a reason where none is available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lti/m;->b:LVh/m;

    invoke-virtual {v0}, LVh/m;->y()Loh/n;

    move-result-object v0

    invoke-static {v0}, Lti/i;->a(Loh/n;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lti/m;->b:LVh/m;

    invoke-virtual {v0}, LVh/m;->x()Lhi/o;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
