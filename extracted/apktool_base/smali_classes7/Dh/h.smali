.class public LDh/h;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/E;

.field public c:Loh/E;


# direct methods
.method public constructor <init>(LDh/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/G0;

    invoke-direct {v0, p1}, Loh/G0;-><init>(Loh/g;)V

    iput-object v0, p0, LDh/h;->b:Loh/E;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    iput-object v0, p0, LDh/h;->b:Loh/E;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    iput-object p1, p0, LDh/h;->c:Loh/E;

    :cond_0
    return-void

    :cond_1
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

.method public constructor <init>([LDh/d;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/G0;

    invoke-direct {v0, p1}, Loh/G0;-><init>([Loh/g;)V

    iput-object v0, p0, LDh/h;->b:Loh/E;

    return-void
.end method

.method public constructor <init>([LDh/d;[Lhi/W;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/G0;

    invoke-direct {v0, p1}, Loh/G0;-><init>([Loh/g;)V

    iput-object v0, p0, LDh/h;->b:Loh/E;

    if-eqz p2, :cond_0

    new-instance p1, Loh/G0;

    invoke-direct {p1, p2}, Loh/G0;-><init>([Loh/g;)V

    iput-object p1, p0, LDh/h;->c:Loh/E;

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Object;)LDh/h;
    .locals 1

    if-eqz p0, :cond_2

    instance-of v0, p0, LDh/h;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/E;

    if-eqz v0, :cond_1

    new-instance v0, LDh/h;

    check-cast p0, Loh/E;

    invoke-direct {v0, p0}, LDh/h;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_0
    check-cast p0, LDh/h;

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LDh/h;->b:Loh/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LDh/h;->c:Loh/E;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()[LDh/d;
    .locals 3

    iget-object v0, p0, LDh/h;->b:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [LDh/d;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, LDh/h;->b:Loh/E;

    invoke-virtual {v2}, Loh/E;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, LDh/h;->b:Loh/E;

    invoke-virtual {v2, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, LDh/d;->w(Ljava/lang/Object;)LDh/d;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public x()[Lhi/W;
    .locals 3

    iget-object v0, p0, LDh/h;->c:Loh/E;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [Lhi/W;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, LDh/h;->c:Loh/E;

    invoke-virtual {v2}, Loh/E;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v2, p0, LDh/h;->c:Loh/E;

    invoke-virtual {v2, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lhi/W;->u(Ljava/lang/Object;)Lhi/W;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
