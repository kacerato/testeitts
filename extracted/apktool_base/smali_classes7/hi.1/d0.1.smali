.class public Lhi/d0;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lhi/F;

.field public c:Lhi/E;


# direct methods
.method public constructor <init>(Lhi/E;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lhi/d0;-><init>(Lhi/F;Lhi/E;)V

    return-void
.end method

.method public constructor <init>(Lhi/F;Lhi/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lhi/E;->g()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lhi/E;->x()Loh/g;

    move-result-object v0

    check-cast v0, Loh/J;

    invoke-interface {v0}, Loh/J;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lhi/d0;->b:Lhi/F;

    iput-object p2, p0, Lhi/d0;->c:Lhi/E;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "the role name MUST be non empty and MUST use the URI option of GeneralName"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 3
    new-instance v0, Lhi/E;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Lhi/E;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lhi/d0;-><init>(Lhi/E;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 5

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v3

    invoke-virtual {v3}, Loh/M;->g()I

    move-result v4

    if-eqz v4, :cond_1

    if-ne v4, v1, :cond_0

    invoke-static {v3, v1}, Lhi/E;->w(Loh/M;Z)Lhi/E;

    move-result-object v3

    iput-object v3, p0, Lhi/d0;->c:Lhi/E;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown tag in RoleSyntax"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v3, v0}, Lhi/F;->x(Loh/M;Z)Lhi/F;

    move-result-object v3

    iput-object v3, p0, Lhi/d0;->b:Lhi/F;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static u(Ljava/lang/Object;)Lhi/d0;
    .locals 1

    instance-of v0, p0, Lhi/d0;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/d0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/d0;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/d0;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lhi/d0;->b:Lhi/F;

    if-eqz v1, :cond_0

    new-instance v2, Loh/K0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/K0;

    iget-object v2, p0, Lhi/d0;->c:Lhi/E;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v3, v2}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lhi/d0;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - Auth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lhi/d0;->b:Lhi/F;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lhi/F;->y()[Lhi/E;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lhi/d0;->x()[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    :goto_1
    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Lhi/F;
    .locals 1

    iget-object v0, p0, Lhi/d0;->b:Lhi/F;

    return-object v0
.end method

.method public x()[Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lhi/d0;->b:Lhi/F;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lhi/F;->y()[Lhi/E;

    move-result-object v0

    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lhi/E;->x()Loh/g;

    move-result-object v3

    instance-of v4, v3, Loh/J;

    if-eqz v4, :cond_1

    check-cast v3, Loh/J;

    invoke-interface {v3}, Loh/J;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public y()Lhi/E;
    .locals 1

    iget-object v0, p0, Lhi/d0;->c:Lhi/E;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lhi/d0;->c:Lhi/E;

    invoke-virtual {v0}, Lhi/E;->x()Loh/g;

    move-result-object v0

    check-cast v0, Loh/J;

    invoke-interface {v0}, Loh/J;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
