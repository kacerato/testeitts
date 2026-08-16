.class public LAk/q;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x1


# instance fields
.field public final b:I

.field public final c:Loh/g;


# direct methods
.method public constructor <init>(ILoh/g;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, LAk/q;->b:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {p2}, LAk/t;->u(Ljava/lang/Object;)LAk/t;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LAk/q;->c:Loh/g;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid choice value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-static {p2}, LFk/x;->v(Ljava/lang/Object;)LFk/x;

    move-result-object p1

    goto :goto_0
.end method

.method public constructor <init>(Loh/M;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-direct {p0, v0, p1}, LAk/q;-><init>(ILoh/g;)V

    return-void
.end method

.method public static u(LFk/x;)LAk/q;
    .locals 2

    new-instance v0, LAk/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LAk/q;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static v(LAk/t;)LAk/q;
    .locals 2

    new-instance v0, LAk/q;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LAk/q;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static z(Ljava/lang/Object;)LAk/q;
    .locals 2

    instance-of v0, p0, LAk/q;

    if-eqz v0, :cond_0

    check-cast p0, LAk/q;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LAk/q;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object p0

    invoke-direct {v0, p0}, LAk/q;-><init>(Loh/M;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/K0;

    iget v1, p0, LAk/q;->b:I

    iget-object v2, p0, LAk/q;->c:Loh/g;

    invoke-direct {v0, v1, v2}, Loh/K0;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, LAk/q;->b:I

    return v0
.end method

.method public y()Loh/g;
    .locals 1

    iget-object v0, p0, LAk/q;->c:Loh/g;

    return-object v0
.end method
