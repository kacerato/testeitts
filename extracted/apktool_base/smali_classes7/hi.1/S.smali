.class public Lhi/S;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field public static final h:I = 0x2


# instance fields
.field public b:Loh/j;

.field public c:Loh/x;

.field public d:Lhi/b;

.field public e:Loh/c;


# direct methods
.method public constructor <init>(ILoh/x;Lhi/b;[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/j;

    invoke-direct {v0, p1}, Loh/j;-><init>(I)V

    iput-object v0, p0, Lhi/S;->b:Loh/j;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lhi/S;->c:Loh/x;

    :cond_0
    iput-object p3, p0, Lhi/S;->d:Lhi/b;

    new-instance p1, Loh/r0;

    invoke-direct {p1, p4}, Loh/r0;-><init>([B)V

    iput-object p1, p0, Lhi/S;->e:Loh/c;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/j;->F(Ljava/lang/Object;)Loh/j;

    move-result-object v2

    iput-object v2, p0, Lhi/S;->b:Loh/j;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v1

    iput-object v1, p0, Lhi/S;->c:Loh/x;

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v1

    iput-object v1, p0, Lhi/S;->d:Lhi/b;

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object p1

    iput-object p1, p0, Lhi/S;->e:Loh/c;

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

.method public static w(Ljava/lang/Object;)Lhi/S;
    .locals 1

    instance-of v0, p0, Lhi/S;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/S;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/S;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/S;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Loh/M;Z)Lhi/S;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lhi/S;->w(Ljava/lang/Object;)Lhi/S;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lhi/S;->b:Loh/j;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/S;->c:Loh/x;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lhi/S;->d:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/S;->e:Loh/c;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/b;
    .locals 1

    iget-object v0, p0, Lhi/S;->d:Lhi/b;

    return-object v0
.end method

.method public v()Loh/j;
    .locals 1

    iget-object v0, p0, Lhi/S;->b:Loh/j;

    return-object v0
.end method

.method public y()Loh/c;
    .locals 1

    iget-object v0, p0, Lhi/S;->e:Loh/c;

    return-object v0
.end method

.method public z()Loh/x;
    .locals 1

    iget-object v0, p0, Lhi/S;->c:Loh/x;

    return-object v0
.end method
