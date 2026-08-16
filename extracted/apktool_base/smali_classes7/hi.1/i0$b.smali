.class public Lhi/i0$b;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhi/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public b:Loh/E;

.field public c:Lhi/C;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iput-object p1, p0, Lhi/i0$b;->b:Loh/E;

    return-void

    :cond_0
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

.method public static v(Ljava/lang/Object;)Lhi/i0$b;
    .locals 1

    instance-of v0, p0, Lhi/i0$b;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/i0$b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/i0$b;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/i0$b;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lhi/i0$b;->b:Loh/E;

    return-object v0
.end method

.method public u()Lhi/C;
    .locals 2

    iget-object v0, p0, Lhi/i0$b;->c:Lhi/C;

    if-nez v0, :cond_0

    iget-object v0, p0, Lhi/i0$b;->b:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lhi/i0$b;->b:Loh/E;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/C;->C(Ljava/lang/Object;)Lhi/C;

    move-result-object v0

    iput-object v0, p0, Lhi/i0$b;->c:Lhi/C;

    :cond_0
    iget-object v0, p0, Lhi/i0$b;->c:Lhi/C;

    return-object v0
.end method

.method public x()Lhi/o0;
    .locals 2

    iget-object v0, p0, Lhi/i0$b;->b:Loh/E;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/o0;->v(Ljava/lang/Object;)Lhi/o0;

    move-result-object v0

    return-object v0
.end method

.method public y()Loh/s;
    .locals 2

    iget-object v0, p0, Lhi/i0$b;->b:Loh/E;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    return-object v0
.end method

.method public z()Z
    .locals 2

    iget-object v0, p0, Lhi/i0$b;->b:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
