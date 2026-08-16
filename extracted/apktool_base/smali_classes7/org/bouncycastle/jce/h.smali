.class public Lorg/bouncycastle/jce/h;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final c:I = 0x80

.field public static final d:I = 0x40

.field public static final e:I = 0x20

.field public static final f:I = 0x10

.field public static final g:I = 0x8

.field public static final h:I = 0x4

.field public static final i:I = 0x2

.field public static final j:I = 0x1

.field public static final k:I = 0x8000


# instance fields
.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, Lorg/bouncycastle/jce/h;->b:I

    return-void
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Lhi/N;

    iget v1, p0, Lorg/bouncycastle/jce/h;->b:I

    invoke-direct {v0, v1}, Lhi/N;-><init>(I)V

    invoke-virtual {v0}, Lhi/N;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method
