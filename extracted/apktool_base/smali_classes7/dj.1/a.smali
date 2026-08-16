.class public Ldj/a;
.super Ldj/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lzh/h;

    sget-object v1, Lzh/m;->f:Lzh/m;

    invoke-direct {v0, v1}, Lzh/h;-><init>(Lzh/m;)V

    invoke-direct {p0, v0}, Ldj/g;-><init>(Lzh/h;)V

    return-void
.end method


# virtual methods
.method public i(Ldj/k;)Ldj/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSException;
        }
    .end annotation

    new-instance v0, Lzh/k;

    invoke-virtual {p1}, Ldj/k;->a()Lhi/w;

    move-result-object p1

    invoke-direct {v0, p1}, Lzh/k;-><init>(Lhi/w;)V

    invoke-virtual {p0, v0}, Ldj/g;->b(Lzh/k;)Ldj/f;

    move-result-object p1

    return-object p1
.end method
