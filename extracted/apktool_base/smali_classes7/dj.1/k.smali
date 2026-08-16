.class public Ldj/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhi/w;


# direct methods
.method public constructor <init>(Lhi/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldj/k;->a:Lhi/w;

    return-void
.end method


# virtual methods
.method public a()Lhi/w;
    .locals 1

    iget-object v0, p0, Ldj/k;->a:Lhi/w;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Ldj/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldj/k;->a:Lhi/w;

    check-cast p1, Ldj/k;

    iget-object p1, p1, Ldj/k;->a:Lhi/w;

    invoke-virtual {v0, p1}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ldj/k;->a:Lhi/w;

    invoke-virtual {v0}, Loh/v;->hashCode()I

    move-result v0

    return v0
.end method
