.class public Lk2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lk2/c;->a:I

    iput p2, p0, Lk2/c;->b:I

    iput-boolean p3, p0, Lk2/c;->c:Z

    return-void
.end method

.method public static a(II)Lk2/c;
    .locals 2

    new-instance v0, Lk2/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lk2/c;-><init>(IIZ)V

    return-object v0
.end method

.method public static b(II)Lk2/c;
    .locals 2

    new-instance v0, Lk2/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lk2/c;-><init>(IIZ)V

    return-object v0
.end method
