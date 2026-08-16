.class public Ldm/e;
.super Ldm/f;
.source "SourceFile"


# instance fields
.field public final b:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ldm/f;-><init>()V

    iput-object p1, p0, Ldm/e;->b:[B

    return-void
.end method


# virtual methods
.method public b(LQk/p;[B)[B
    .locals 1

    iget-object v0, p0, Ldm/e;->b:[B

    invoke-static {p1, v0}, Ldm/q;->h(LQk/p;[B)[B

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-static {p1, p2, v0}, Ldm/q;->k(LQk/p;[B[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method
