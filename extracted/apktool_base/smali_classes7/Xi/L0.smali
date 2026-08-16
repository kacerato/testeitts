.class public LXi/L0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/k;


# instance fields
.field public final b:[B

.field public final c:LXi/o0;


# direct methods
.method public constructor <init>(LXi/o0;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LXi/L0;->c:LXi/o0;

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LXi/L0;->b:[B

    return-void
.end method


# virtual methods
.method public a()LXi/o0;
    .locals 1

    iget-object v0, p0, LXi/L0;->c:LXi/o0;

    return-object v0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, LXi/L0;->b:[B

    return-object v0
.end method
