.class public Lhl/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lhl/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LBi/k;)[B
    .locals 2

    check-cast p1, Lhl/h;

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget-object v1, p0, Lhl/c;->a:Lhl/g;

    iget-object v1, v1, Lhl/g;->c:[S

    iget-object p1, p1, Lhl/h;->c:[B

    invoke-static {v0, v1, p1}, Lhl/k;->h([B[S[B)V

    return-object v0
.end method

.method public b(LBi/k;)V
    .locals 0

    check-cast p1, Lhl/g;

    iput-object p1, p0, Lhl/c;->a:Lhl/g;

    return-void
.end method
