.class public Lhi/x;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0xc8


# instance fields
.field public b:I

.field public c:Loh/J;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iput p1, p0, Lhi/x;->b:I

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    new-instance p1, Loh/M0;

    invoke-direct {p1, p2}, Loh/M0;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Lhi/x;->c:Loh/J;

    goto :goto_1

    :cond_1
    new-instance p1, Loh/P0;

    invoke-direct {p1, p2}, Loh/P0;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p1, Loh/M0;

    invoke-direct {p1, p2}, Loh/M0;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance p1, Loh/q0;

    invoke-direct {p1, p2}, Loh/q0;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance p1, Loh/z0;

    invoke-direct {p1, p2}, Loh/z0;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lhi/x;->b:I

    new-instance v0, Loh/M0;

    invoke-direct {v0, p1}, Loh/M0;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lhi/x;->c:Loh/J;

    return-void
.end method

.method public constructor <init>(Loh/J;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/x;->c:Loh/J;

    instance-of v0, p1, Loh/Q;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lhi/x;->b:I

    goto :goto_1

    :cond_0
    instance-of v0, p1, Loh/b;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Loh/q;

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    instance-of p1, p1, Loh/X;

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    goto :goto_0

    :goto_1
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown STRING type in DisplayText"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u(Ljava/lang/Object;)Lhi/x;
    .locals 3

    instance-of v0, p0, Loh/J;

    if-eqz v0, :cond_0

    new-instance v0, Lhi/x;

    check-cast p0, Loh/J;

    invoke-direct {v0, p0}, Lhi/x;-><init>(Loh/J;)V

    return-object v0

    :cond_0
    if-eqz p0, :cond_2

    instance-of v0, p0, Lhi/x;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

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

    :cond_2
    :goto_0
    check-cast p0, Lhi/x;

    return-object p0
.end method

.method public static v(Loh/M;Z)Lhi/x;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Loh/M;->O()Loh/v;

    move-result-object p0

    invoke-static {p0}, Lhi/x;->u(Ljava/lang/Object;)Lhi/x;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "choice item must be explicitly tagged"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lhi/x;->c:Loh/J;

    invoke-interface {v0}, Loh/J;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lhi/x;->c:Loh/J;

    check-cast v0, Loh/B;

    return-object v0
.end method
