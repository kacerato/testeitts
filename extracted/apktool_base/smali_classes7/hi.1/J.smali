.class public Lhi/J;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3


# instance fields
.field public b:Lhi/F;

.field public c:Ljava/util/Vector;

.field public d:I


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 5

    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lhi/J;->b:Lhi/F;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lhi/J;->c:Ljava/util/Vector;

    const/4 v0, -0x1

    iput v0, p0, Lhi/J;->d:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v1, v1, Loh/M;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/M;

    invoke-static {v1, v0}, Lhi/F;->x(Loh/M;Z)Lhi/F;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lhi/J;->b:Lhi/F;

    move v0, v3

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/F;->w(Ljava/lang/Object;)Lhi/F;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v1, v1, Loh/E;

    if-eqz v1, :cond_8

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/E;

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/B;

    instance-of v1, v0, Loh/x;

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_3

    :cond_2
    instance-of v1, v0, Loh/Q;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    goto :goto_3

    :cond_3
    instance-of v1, v0, Loh/C0;

    if-eqz v1, :cond_6

    move v1, v3

    :goto_3
    iget v4, p0, Lhi/J;->d:I

    if-gez v4, :cond_4

    iput v1, p0, Lhi/J;->d:I

    :cond_4
    iget v4, p0, Lhi/J;->d:I

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lhi/J;->c:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Mix of value types in IetfAttrSyntax"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad value type encoding IetfAttrSyntax"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-IetfAttrSyntax encoding"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u(Ljava/lang/Object;)Lhi/J;
    .locals 1

    instance-of v0, p0, Lhi/J;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/J;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/J;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/J;-><init>(Loh/E;)V

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

    iget-object v1, p0, Lhi/J;->b:Lhi/F;

    if-eqz v1, :cond_0

    new-instance v2, Loh/K0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Loh/K0;-><init>(ILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/h;

    iget-object v2, p0, Lhi/J;->c:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v1, v2}, Loh/h;-><init>(I)V

    iget-object v2, p0, Lhi/J;->c:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loh/g;

    invoke-virtual {v1, v3}, Loh/h;->a(Loh/g;)V

    goto :goto_0

    :cond_1
    new-instance v2, Loh/G0;

    invoke-direct {v2, v1}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Lhi/F;
    .locals 1

    iget-object v0, p0, Lhi/J;->b:Lhi/F;

    return-object v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lhi/J;->d:I

    return v0
.end method

.method public y()[Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lhi/J;->x()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lhi/J;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Loh/y;

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Lhi/J;->c:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loh/y;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lhi/J;->x()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lhi/J;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Loh/x;

    :goto_1
    if-eq v2, v0, :cond_2

    iget-object v3, p0, Lhi/J;->c:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loh/x;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    iget-object v0, p0, Lhi/J;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Loh/Q;

    :goto_2
    if-eq v2, v0, :cond_4

    iget-object v3, p0, Lhi/J;->c:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loh/Q;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object v1
.end method
