.class public Lwd/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:I = 0x10000


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x10000

    iput v0, p0, Lwd/e;->a:I

    iput v0, p0, Lwd/e;->b:I

    return-void
.end method
