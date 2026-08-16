.class public Lgc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lgc/b;->a:I

    iput v0, p0, Lgc/b;->b:I

    iput v0, p0, Lgc/b;->c:I

    return-void
.end method
