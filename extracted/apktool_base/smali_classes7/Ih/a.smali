.class public LIh/a;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/s;

.field public c:[Lhi/q;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, LIh/a;->b:Loh/s;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v1

    iput-object v1, p0, LIh/a;->b:Loh/s;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/G;->F(Ljava/lang/Object;)Loh/G;

    move-result-object p1

    invoke-virtual {p1}, Loh/G;->size()I

    move-result v1

    new-array v1, v1, [Lhi/q;

    iput-object v1, p0, LIh/a;->c:[Lhi/q;

    :goto_0
    iget-object v1, p0, LIh/a;->c:[Lhi/q;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Loh/G;->H(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lhi/q;->v(Ljava/lang/Object;)Lhi/q;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null or empty sequence passed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Lhi/q;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, LIh/a;->b:Loh/s;

    invoke-virtual {p0, p1}, LIh/a;->u([Lhi/q;)[Lhi/q;

    move-result-object p1

    iput-object p1, p0, LIh/a;->c:[Lhi/q;

    return-void
.end method

.method public static w(Ljava/lang/Object;)LIh/a;
    .locals 1

    instance-of v0, p0, LIh/a;

    if-eqz v0, :cond_0

    check-cast p0, LIh/a;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LIh/a;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LIh/a;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LIh/a;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/I0;

    iget-object v2, p0, LIh/a;->c:[Lhi/q;

    invoke-direct {v1, v2}, Loh/I0;-><init>([Loh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public final u([Lhi/q;)[Lhi/q;
    .locals 4

    array-length v0, p1

    new-array v1, v0, [Lhi/q;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    aget-object v3, p1, v2

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public v()[Lhi/q;
    .locals 1

    iget-object v0, p0, LIh/a;->c:[Lhi/q;

    invoke-virtual {p0, v0}, LIh/a;->u([Lhi/q;)[Lhi/q;

    move-result-object v0

    return-object v0
.end method

.method public x()I
    .locals 1

    iget-object v0, p0, LIh/a;->b:Loh/s;

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    return v0
.end method
