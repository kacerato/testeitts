.class public Lhl/h;
.super LXi/c;
.source "SourceFile"


# instance fields
.field public final c:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LXi/c;-><init>(Z)V

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lhl/h;->c:[B

    return-void
.end method


# virtual methods
.method public d()[B
    .locals 1

    iget-object v0, p0, Lhl/h;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method
