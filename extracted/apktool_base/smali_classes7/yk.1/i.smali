.class public Lyk/i;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final d:Lyk/i;


# instance fields
.field public final b:Z

.field public final c:Loh/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyk/i;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyk/i;-><init>(ZLoh/g;)V

    sput-object v0, Lyk/i;->d:Lyk/i;

    return-void
.end method

.method public constructor <init>(ZLoh/g;)V
    .locals 0

    invoke-direct {p0}, Loh/v;-><init>()V

    iput-boolean p1, p0, Lyk/i;->b:Z

    iput-object p2, p0, Lyk/i;->c:Loh/g;

    return-void
.end method

.method public static synthetic u(Lyk/i;)Loh/g;
    .locals 0

    iget-object p0, p0, Lyk/i;->c:Loh/g;

    return-object p0
.end method

.method public static w(Ljava/lang/Object;)Lyk/i;
    .locals 2

    instance-of v0, p0, Lyk/i;

    if-eqz v0, :cond_0

    check-cast p0, Lyk/i;

    return-object p0

    :cond_0
    instance-of v0, p0, Loh/g;

    if-eqz v0, :cond_1

    new-instance v0, Lyk/i;

    const/4 v1, 0x1

    check-cast p0, Loh/g;

    invoke-direct {v0, v1, p0}, Lyk/i;-><init>(ZLoh/g;)V

    return-object v0

    :cond_1
    sget-object p0, Lyk/i;->d:Lyk/i;

    return-object p0
.end method

.method public static y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object p1

    iget-boolean v0, p1, Lyk/i;->b:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1, p0}, Lyk/i;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lyk/i;

    iget-boolean v2, p0, Lyk/i;->b:Z

    iget-boolean v3, p1, Lyk/i;->b:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lyk/i;->c:Loh/g;

    iget-object p1, p1, Lyk/i;->c:Loh/g;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Loh/v;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lyk/i;->b:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lyk/i;->c:Loh/g;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public r()Loh/B;
    .locals 1

    iget-boolean v0, p0, Lyk/i;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Loh/a;->b:Loh/a;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lyk/i;->v()Loh/g;

    move-result-object v0

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lyk/i;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OPTIONAL("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyk/i;->c:Loh/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ABSENT"

    return-object v0
.end method

.method public v()Loh/g;
    .locals 1

    iget-boolean v0, p0, Lyk/i;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lyk/i;->d:Lyk/i;

    return-object v0

    :cond_0
    iget-object v0, p0, Lyk/i;->c:Loh/g;

    return-object v0
.end method

.method public x(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lyk/i;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyk/i;->c:Loh/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyk/i;->c:Loh/g;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lyk/i$a;

    invoke-direct {v0, p0, p1}, Lyk/i$a;-><init>(Lyk/i;Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Lyk/i;->b:Z

    return v0
.end method
