.class public LVh/h;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3

.field public static final g:I = 0x5

.field public static final h:I = 0x6


# instance fields
.field public b:Loh/j;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    new-instance v0, Loh/j;

    invoke-direct {v0, p1}, Loh/j;-><init>(I)V

    invoke-direct {p0, v0}, LVh/h;-><init>(Loh/j;)V

    return-void
.end method

.method public constructor <init>(Loh/j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LVh/h;->b:Loh/j;

    return-void
.end method

.method public static u(Ljava/lang/Object;)LVh/h;
    .locals 1

    instance-of v0, p0, LVh/h;

    if-eqz v0, :cond_0

    check-cast p0, LVh/h;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LVh/h;

    invoke-static {p0}, Loh/j;->F(Ljava/lang/Object;)Loh/j;

    move-result-object p0

    invoke-direct {v0, p0}, LVh/h;-><init>(Loh/j;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, LVh/h;->b:Loh/j;

    return-object v0
.end method

.method public v()I
    .locals 1

    iget-object v0, p0, LVh/h;->b:Loh/j;

    invoke-virtual {v0}, Loh/j;->L()I

    move-result v0

    return v0
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LVh/h;->b:Loh/j;

    invoke-virtual {v0}, Loh/j;->H()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
