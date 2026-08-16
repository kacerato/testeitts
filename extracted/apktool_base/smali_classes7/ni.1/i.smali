.class public Lni/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lth/T;


# direct methods
.method public constructor <init>(Lth/T;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lni/i;->a:Lth/T;

    return-void
.end method


# virtual methods
.method public a()Lfi/d;
    .locals 1

    iget-object v0, p0, Lni/i;->a:Lth/T;

    invoke-virtual {v0}, Lth/T;->u()Lwh/g;

    move-result-object v0

    invoke-virtual {v0}, Lwh/g;->x()Lfi/d;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lni/i;->a:Lth/T;

    invoke-virtual {v0}, Lth/T;->u()Lwh/g;

    move-result-object v0

    invoke-virtual {v0}, Lwh/g;->A()Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public c()Lfi/d;
    .locals 1

    iget-object v0, p0, Lni/i;->a:Lth/T;

    invoke-virtual {v0}, Lth/T;->u()Lwh/g;

    move-result-object v0

    invoke-virtual {v0}, Lwh/g;->C()Lfi/d;

    move-result-object v0

    return-object v0
.end method

.method public d()Lth/T;
    .locals 1

    iget-object v0, p0, Lni/i;->a:Lth/T;

    return-object v0
.end method
