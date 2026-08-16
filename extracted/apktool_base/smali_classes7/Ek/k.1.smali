.class public LEk/k;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final c:I = 0x80

.field public static final d:I = 0x40


# instance fields
.field public final b:Loh/c;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    new-instance v0, Loh/r0;

    invoke-direct {v0, p1}, Loh/r0;-><init>(I)V

    invoke-direct {p0, v0}, LEk/k;-><init>(Loh/c;)V

    return-void
.end method

.method public constructor <init>(Loh/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LEk/k;->b:Loh/c;

    return-void
.end method

.method public static u(Ljava/lang/Object;)LEk/k;
    .locals 1

    instance-of v0, p0, LEk/k;

    if-eqz v0, :cond_0

    check-cast p0, LEk/k;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LEk/k;

    invoke-static {p0}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object p0

    invoke-direct {v0, p0}, LEk/k;-><init>(Loh/c;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, LEk/k;->b:Loh/c;

    return-object v0
.end method

.method public v()Loh/c;
    .locals 1

    iget-object v0, p0, LEk/k;->b:Loh/c;

    return-object v0
.end method
