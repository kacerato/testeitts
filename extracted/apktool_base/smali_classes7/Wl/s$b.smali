.class public LWl/s$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LWl/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:LWl/e;

.field public b:[I


# direct methods
.method public constructor <init>(LWl/e;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWl/s$b;->a:LWl/e;

    iput-object p2, p0, LWl/s$b;->b:[I

    return-void
.end method


# virtual methods
.method public a()LWl/e;
    .locals 1

    iget-object v0, p0, LWl/s$b;->a:LWl/e;

    return-object v0
.end method

.method public b()[I
    .locals 1

    iget-object v0, p0, LWl/s$b;->b:[I

    return-object v0
.end method
