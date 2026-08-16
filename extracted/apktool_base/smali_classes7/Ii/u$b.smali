.class public LIi/u$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIi/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LIi/u$b$a;
    }
.end annotation


# instance fields
.field public b:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(LIi/u$b;[B)[B
    .locals 0

    iput-object p1, p0, LIi/u$b;->b:[B

    return-object p1
.end method


# virtual methods
.method public b()[B
    .locals 1

    iget-object v0, p0, LIi/u$b;->b:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method
