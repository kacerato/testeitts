.class public LYd/w0;
.super LYd/g;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field public static final f:J = -0x2348186ae0b7b9b1L


# direct methods
.method public constructor <init>(Lbe/a;)V
    .locals 0

    invoke-direct {p0, p1}, LYd/g;-><init>(Lbe/a;)V

    return-void
.end method

.method private b()Ljava/lang/Object;
    .locals 2

    new-instance v0, LYd/g;

    iget-object v1, p0, LYd/g;->d:Lbe/a;

    invoke-direct {v0, v1}, LYd/g;-><init>(Lbe/a;)V

    return-object v0
.end method


# virtual methods
.method public subList(II)Lbe/a;
    .locals 2

    new-instance v0, LYd/w0;

    iget-object v1, p0, LYd/g;->d:Lbe/a;

    invoke-interface {v1, p1, p2}, Lbe/a;->subList(II)Lbe/a;

    move-result-object p1

    invoke-direct {v0, p1}, LYd/w0;-><init>(Lbe/a;)V

    return-object v0
.end method
