.class public LYd/B0;
.super LYd/k0;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field public static final f:J = -0x2348186ae0b7b9b1L


# direct methods
.method public constructor <init>(Lbe/h;)V
    .locals 0

    invoke-direct {p0, p1}, LYd/k0;-><init>(Lbe/h;)V

    return-void
.end method

.method private b()Ljava/lang/Object;
    .locals 2

    new-instance v0, LYd/k0;

    iget-object v1, p0, LYd/k0;->d:Lbe/h;

    invoke-direct {v0, v1}, LYd/k0;-><init>(Lbe/h;)V

    return-object v0
.end method


# virtual methods
.method public subList(II)Lbe/h;
    .locals 2

    new-instance v0, LYd/B0;

    iget-object v1, p0, LYd/k0;->d:Lbe/h;

    invoke-interface {v1, p1, p2}, Lbe/h;->subList(II)Lbe/h;

    move-result-object p1

    invoke-direct {v0, p1}, LYd/B0;-><init>(Lbe/h;)V

    return-object v0
.end method
