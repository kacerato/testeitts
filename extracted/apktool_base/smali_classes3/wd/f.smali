.class public Lwd/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:I = 0x10000


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x10000

    iput v0, p0, Lwd/f;->a:I

    iput v0, p0, Lwd/f;->b:I

    iput v0, p0, Lwd/f;->c:I

    iput v0, p0, Lwd/f;->d:I

    iput v0, p0, Lwd/f;->e:I

    iput v0, p0, Lwd/f;->f:I

    iput v0, p0, Lwd/f;->g:I

    iput v0, p0, Lwd/f;->h:I

    iput v0, p0, Lwd/f;->i:I

    return-void
.end method
