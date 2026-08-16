.class public LYd/A0;
.super LYd/Z;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field public static final f:J = -0x2348186ae0b7b9b1L


# direct methods
.method public constructor <init>(Lbe/e;)V
    .locals 0

    invoke-direct {p0, p1}, LYd/Z;-><init>(Lbe/e;)V

    return-void
.end method

.method private b()Ljava/lang/Object;
    .locals 2

    new-instance v0, LYd/Z;

    iget-object v1, p0, LYd/Z;->d:Lbe/e;

    invoke-direct {v0, v1}, LYd/Z;-><init>(Lbe/e;)V

    return-object v0
.end method


# virtual methods
.method public subList(II)Lbe/e;
    .locals 2

    new-instance v0, LYd/A0;

    iget-object v1, p0, LYd/Z;->d:Lbe/e;

    invoke-interface {v1, p1, p2}, Lbe/e;->subList(II)Lbe/e;

    move-result-object p1

    invoke-direct {v0, p1}, LYd/A0;-><init>(Lbe/e;)V

    return-object v0
.end method
