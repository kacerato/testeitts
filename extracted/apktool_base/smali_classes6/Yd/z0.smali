.class public LYd/z0;
.super LYd/N;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field public static final f:J = -0x2348186ae0b7b9b1L


# direct methods
.method public constructor <init>(Lbe/d;)V
    .locals 0

    invoke-direct {p0, p1}, LYd/N;-><init>(Lbe/d;)V

    return-void
.end method

.method private b()Ljava/lang/Object;
    .locals 2

    new-instance v0, LYd/N;

    iget-object v1, p0, LYd/N;->d:Lbe/d;

    invoke-direct {v0, v1}, LYd/N;-><init>(Lbe/d;)V

    return-object v0
.end method


# virtual methods
.method public subList(II)Lbe/d;
    .locals 2

    new-instance v0, LYd/z0;

    iget-object v1, p0, LYd/N;->d:Lbe/d;

    invoke-interface {v1, p1, p2}, Lbe/d;->subList(II)Lbe/d;

    move-result-object p1

    invoke-direct {v0, p1}, LYd/z0;-><init>(Lbe/d;)V

    return-object v0
.end method
