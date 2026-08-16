.class public Lth/e;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# instance fields
.field public final b:Lhi/z;

.field public final c:Lhi/F;


# direct methods
.method public constructor <init>(Lhi/z;Lhi/F;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-nez p2, :cond_1

    move v0, v1

    :cond_1
    if-eq v2, v0, :cond_2

    iput-object p1, p0, Lth/e;->b:Lhi/z;

    iput-object p2, p0, Lth/e;->c:Lhi/F;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "either dpn or issuer must be set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Loh/M;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/M;->p(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1, v2}, Lhi/z;->w(Loh/M;Z)Lhi/z;

    move-result-object p1

    iput-object p1, p0, Lth/e;->b:Lhi/z;

    iput-object v1, p0, Lth/e;->c:Lhi/F;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Loh/M;->p(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lth/e;->b:Lhi/z;

    invoke-static {p1, v2}, Lhi/F;->x(Loh/M;Z)Lhi/F;

    move-result-object p1

    iput-object p1, p0, Lth/e;->c:Lhi/F;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Loh/V;->y(Loh/M;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static v(Ljava/lang/Object;)Lth/e;
    .locals 1

    instance-of v0, p0, Lth/e;

    if-eqz v0, :cond_0

    check-cast p0, Lth/e;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/e;

    invoke-static {p0}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/e;-><init>(Loh/M;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    iget-object v0, p0, Lth/e;->b:Lhi/z;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v2, Loh/K0;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v2

    :cond_0
    new-instance v0, Loh/K0;

    iget-object v2, p0, Lth/e;->c:Lhi/F;

    invoke-direct {v0, v1, v1, v2}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v0
.end method

.method public u()Lhi/z;
    .locals 1

    iget-object v0, p0, Lth/e;->b:Lhi/z;

    return-object v0
.end method

.method public x()Lhi/F;
    .locals 1

    iget-object v0, p0, Lth/e;->c:Lhi/F;

    return-object v0
.end method
