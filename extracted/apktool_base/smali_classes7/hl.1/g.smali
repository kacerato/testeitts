.class public Lhl/g;
.super LXi/c;
.source "SourceFile"


# instance fields
.field public final c:[S


# direct methods
.method public constructor <init>([S)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LXi/c;-><init>(Z)V

    invoke-static {p1}, Lorg/bouncycastle/util/a;->w([S)[S

    move-result-object p1

    iput-object p1, p0, Lhl/g;->c:[S

    return-void
.end method


# virtual methods
.method public d()[S
    .locals 1

    iget-object v0, p0, Lhl/g;->c:[S

    invoke-static {v0}, Lorg/bouncycastle/util/a;->w([S)[S

    move-result-object v0

    return-object v0
.end method
