.class public Lhi/e;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# instance fields
.field public b:Loh/g;

.field public c:Loh/B;


# direct methods
.method public constructor <init>(Lhi/F;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/e;->b:Loh/g;

    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    iput-object p1, p0, Lhi/e;->c:Loh/B;

    return-void
.end method

.method public constructor <init>(Lhi/s0;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/e;->b:Loh/g;

    new-instance v0, Loh/K0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Loh/K0;-><init>(ZILoh/g;)V

    iput-object v0, p0, Lhi/e;->c:Loh/B;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lhi/e;
    .locals 3

    if-eqz p0, :cond_5

    instance-of v0, p0, Lhi/e;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lhi/s0;

    if-eqz v0, :cond_1

    new-instance v0, Lhi/e;

    invoke-static {p0}, Lhi/s0;->v(Ljava/lang/Object;)Lhi/s0;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/e;-><init>(Lhi/s0;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lhi/F;

    if-eqz v0, :cond_2

    new-instance v0, Lhi/e;

    check-cast p0, Lhi/F;

    invoke-direct {v0, p0}, Lhi/e;-><init>(Lhi/F;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Loh/M;

    if-eqz v0, :cond_3

    new-instance v0, Lhi/e;

    check-cast p0, Loh/M;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lhi/s0;->w(Loh/M;Z)Lhi/s0;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/e;-><init>(Lhi/s0;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Loh/E;

    if-eqz v0, :cond_4

    new-instance v0, Lhi/e;

    invoke-static {p0}, Lhi/F;->w(Ljava/lang/Object;)Lhi/F;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/e;-><init>(Lhi/F;)V

    return-object v0

    :cond_4
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

    :cond_5
    :goto_0
    check-cast p0, Lhi/e;

    return-object p0
.end method

.method public static v(Loh/M;Z)Lhi/e;
    .locals 0

    invoke-virtual {p0}, Loh/M;->O()Loh/v;

    move-result-object p0

    invoke-static {p0}, Lhi/e;->u(Ljava/lang/Object;)Lhi/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lhi/e;->c:Loh/B;

    return-object v0
.end method

.method public x()Loh/g;
    .locals 1

    iget-object v0, p0, Lhi/e;->b:Loh/g;

    return-object v0
.end method
