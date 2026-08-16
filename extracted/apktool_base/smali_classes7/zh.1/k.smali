.class public Lzh/k;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# instance fields
.field public b:Loh/y;

.field public c:Lhi/w;

.field public d:Loh/E;


# direct methods
.method public constructor <init>(Lhi/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lzh/k;->c:Lhi/w;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lzh/k;->d:Loh/E;

    return-void
.end method

.method public constructor <init>(Loh/y;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lzh/k;->b:Loh/y;

    return-void
.end method

.method public constructor <init>(Lzh/n;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/G0;

    invoke-direct {v0, p1}, Loh/G0;-><init>(Loh/g;)V

    iput-object v0, p0, Lzh/k;->d:Loh/E;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 5
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/C0;

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, Lzh/k;->b:Loh/y;

    return-void
.end method

.method public constructor <init>([Lzh/n;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/G0;

    invoke-direct {v0, p1}, Loh/G0;-><init>([Loh/g;)V

    iput-object v0, p0, Lzh/k;->d:Loh/E;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Lzh/k;
    .locals 3

    instance-of v0, p0, Lzh/k;

    if-eqz v0, :cond_0

    check-cast p0, Lzh/k;

    return-object p0

    :cond_0
    instance-of v0, p0, Loh/y;

    if-eqz v0, :cond_1

    new-instance v0, Lzh/k;

    check-cast p0, Loh/y;

    invoke-direct {v0, p0}, Lzh/k;-><init>(Loh/y;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Loh/E;

    if-eqz v0, :cond_2

    new-instance v0, Lzh/k;

    invoke-static {p0}, Lhi/w;->w(Ljava/lang/Object;)Lhi/w;

    move-result-object p0

    invoke-direct {v0, p0}, Lzh/k;-><init>(Lhi/w;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Loh/M;

    if-eqz v0, :cond_3

    new-instance v0, Lzh/k;

    check-cast p0, Loh/M;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lzh/k;-><init>(Loh/E;)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown object submitted to getInstance: "

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
.end method

.method public static w(Loh/M;Z)Lzh/k;
    .locals 0

    invoke-virtual {p0}, Loh/M;->O()Loh/v;

    move-result-object p0

    invoke-static {p0}, Lzh/k;->v(Ljava/lang/Object;)Lzh/k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 3

    iget-object v0, p0, Lzh/k;->b:Loh/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Loh/B;->r()Loh/B;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lzh/k;->c:Lhi/w;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lhi/w;->r()Loh/B;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Loh/K0;

    iget-object v1, p0, Lzh/k;->d:Loh/E;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lzh/k;->b:Loh/y;

    const-string v1, "}\n"

    const-string v2, "Data {\n"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzh/k;->b:Loh/y;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lzh/k;->c:Lhi/w;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzh/k;->c:Lhi/w;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzh/k;->d:Loh/E;

    goto :goto_0
.end method

.method public u()[Lzh/n;
    .locals 4

    iget-object v0, p0, Lzh/k;->d:Loh/E;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [Lzh/n;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_1

    iget-object v3, p0, Lzh/k;->d:Loh/E;

    invoke-virtual {v3, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lzh/n;->y(Ljava/lang/Object;)Lzh/n;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public x()Loh/y;
    .locals 1

    iget-object v0, p0, Lzh/k;->b:Loh/y;

    return-object v0
.end method

.method public y()Lhi/w;
    .locals 1

    iget-object v0, p0, Lzh/k;->c:Lhi/w;

    return-object v0
.end method
