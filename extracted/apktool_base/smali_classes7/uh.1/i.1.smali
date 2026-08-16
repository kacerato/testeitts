.class public Luh/i;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final e:I = 0x1

.field public static final f:I = 0x2


# instance fields
.field public final b:Lhi/b;

.field public final c:Lhi/b;

.field public final d:Lhi/b;


# direct methods
.method public constructor <init>(Lhi/b;ILhi/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    iput-object p1, p0, Luh/i;->b:Lhi/b;

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    iput-object p3, p0, Luh/i;->c:Lhi/b;

    iput-object v0, p0, Luh/i;->d:Lhi/b;

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    iput-object v0, p0, Luh/i;->c:Lhi/b;

    iput-object p3, p0, Luh/i;->d:Lhi/b;

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "AlgorithmIdentifiers cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Loh/E;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v2

    iput-object v2, p0, Luh/i;->b:Lhi/b;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object p1

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v2, :cond_0

    invoke-static {p1, v0}, Lhi/b;->w(Loh/M;Z)Lhi/b;

    move-result-object p1

    iput-object p1, p0, Luh/i;->c:Lhi/b;

    iput-object v4, p0, Luh/i;->d:Lhi/b;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Loh/M;->g()I

    move-result v2

    if-ne v2, v1, :cond_1

    iput-object v4, p0, Luh/i;->c:Lhi/b;

    invoke-static {p1, v0}, Lhi/b;->w(Loh/M;Z)Lhi/b;

    move-result-object p1

    iput-object p1, p0, Luh/i;->d:Lhi/b;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tag found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/M;->g()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sequence wrong size: One of signatureAlgorithm or macAlgorithm must be present"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static v(Ljava/lang/Object;)Luh/i;
    .locals 1

    instance-of v0, p0, Luh/i;

    if-eqz v0, :cond_0

    check-cast p0, Luh/i;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/i;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/i;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Luh/i;->b:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/i;->c:Lhi/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Loh/K0;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Luh/i;->d:Lhi/b;

    if-eqz v1, :cond_1

    new-instance v3, Loh/K0;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/b;
    .locals 1

    iget-object v0, p0, Luh/i;->b:Lhi/b;

    return-object v0
.end method

.method public x()Lhi/b;
    .locals 1

    iget-object v0, p0, Luh/i;->d:Lhi/b;

    return-object v0
.end method

.method public y()Lhi/b;
    .locals 1

    iget-object v0, p0, Luh/i;->c:Lhi/b;

    return-object v0
.end method
