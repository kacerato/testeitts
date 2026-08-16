.class public Luh/Q;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# instance fields
.field public b:Loh/g;


# direct methods
.method public constructor <init>(Loh/B;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Luh/Q;->b:Loh/g;

    return-void
.end method

.method public constructor <init>(Luh/B;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/K0;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, p1}, Loh/K0;-><init>(ZILoh/g;)V

    iput-object v0, p0, Luh/Q;->b:Loh/g;

    return-void
.end method

.method public constructor <init>(Luh/E;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/K0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Loh/K0;-><init>(ZILoh/g;)V

    iput-object v0, p0, Luh/Q;->b:Loh/g;

    return-void
.end method

.method public constructor <init>(Luh/F;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Luh/Q;->b:Loh/g;

    return-void
.end method

.method public constructor <init>(Luh/L;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/K0;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, p1}, Loh/K0;-><init>(ZILoh/g;)V

    iput-object v0, p0, Luh/Q;->b:Loh/g;

    return-void
.end method

.method public constructor <init>(Luh/N;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/K0;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, p1}, Loh/K0;-><init>(ZILoh/g;)V

    iput-object v0, p0, Luh/Q;->b:Loh/g;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Luh/Q;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Luh/Q;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/E;

    if-eqz v0, :cond_1

    new-instance v0, Luh/Q;

    check-cast p0, Loh/E;

    invoke-direct {v0, p0}, Luh/Q;-><init>(Loh/B;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Loh/M;

    if-eqz v0, :cond_2

    new-instance v0, Luh/Q;

    check-cast p0, Loh/M;

    invoke-direct {v0, p0}, Luh/Q;-><init>(Loh/B;)V

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
    check-cast p0, Luh/Q;

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Luh/Q;->b:Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public u()Loh/g;
    .locals 4

    iget-object v0, p0, Luh/Q;->b:Loh/g;

    instance-of v1, v0, Loh/M;

    if-eqz v1, :cond_4

    check-cast v0, Loh/M;

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-static {v0, v3}, Luh/L;->v(Loh/M;Z)Luh/L;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v0, v3}, Luh/N;->w(Loh/M;Z)Luh/N;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0, v0}, Luh/Q;->w(Loh/M;)Luh/B;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {v0, v3}, Luh/E;->v(Loh/M;Z)Luh/E;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-static {v0}, Luh/F;->v(Ljava/lang/Object;)Luh/F;

    move-result-object v0

    return-object v0
.end method

.method public final w(Loh/M;)Luh/B;
    .locals 1

    invoke-virtual {p1}, Loh/M;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Luh/B;->w(Loh/M;Z)Luh/B;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()Loh/s;
    .locals 4

    iget-object v0, p0, Luh/Q;->b:Loh/g;

    instance-of v1, v0, Loh/M;

    if-eqz v1, :cond_4

    check-cast v0, Loh/M;

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v0, v3}, Luh/N;->w(Loh/M;Z)Luh/N;

    move-result-object v0

    invoke-virtual {v0}, Luh/N;->z()Loh/s;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0, v0}, Luh/Q;->w(Loh/M;)Luh/B;

    move-result-object v0

    invoke-virtual {v0}, Luh/B;->z()Loh/s;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {v0, v3}, Luh/E;->v(Loh/M;Z)Luh/E;

    move-result-object v0

    invoke-virtual {v0}, Luh/E;->B()Loh/s;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-static {v0}, Luh/F;->v(Ljava/lang/Object;)Luh/F;

    move-result-object v0

    invoke-virtual {v0}, Luh/F;->z()Loh/s;

    move-result-object v0

    return-object v0
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Luh/Q;->b:Loh/g;

    instance-of v0, v0, Loh/M;

    return v0
.end method
