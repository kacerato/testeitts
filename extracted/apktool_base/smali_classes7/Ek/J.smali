.class public LEk/J;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# static fields
.field public static final d:I


# instance fields
.field public final b:I

.field public final c:Loh/g;


# direct methods
.method public constructor <init>(ILoh/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, LEk/J;->b:I

    iput-object p2, p0, LEk/J;->c:Loh/g;

    return-void
.end method

.method public constructor <init>(Loh/M;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    iput v0, p0, LEk/J;->b:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, LEk/a;->w(Ljava/lang/Object;)LEk/a;

    move-result-object p1

    iput-object p1, p0, LEk/J;->c:Loh/g;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid choice value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u(LEk/a;)LEk/J;
    .locals 2

    new-instance v0, LEk/J;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LEk/J;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static w(Ljava/lang/Object;)LEk/J;
    .locals 2

    instance-of v0, p0, LEk/J;

    if-eqz v0, :cond_0

    check-cast p0, LEk/J;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LEk/J;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object p0

    invoke-direct {v0, p0}, LEk/J;-><init>(Loh/M;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/K0;

    iget v1, p0, LEk/J;->b:I

    iget-object v2, p0, LEk/J;->c:Loh/g;

    invoke-direct {v0, v1, v2}, Loh/K0;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, LEk/J;->b:I

    return v0
.end method

.method public x()Loh/g;
    .locals 1

    iget-object v0, p0, LEk/J;->c:Loh/g;

    return-object v0
.end method
