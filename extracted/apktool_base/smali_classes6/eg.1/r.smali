.class public final Leg/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x1d

.field public static final e:I = 0x1fffffff

.field public static final f:I = 0x1fffffff

.field public static final g:Lmg/T;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmg/T;

    const-string v1, "RESUME_TOKEN"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Leg/r;->g:Lmg/T;

    return-void
.end method

.method public static final a(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x1d

    add-int/2addr p0, p1

    return p0
.end method

.method public static final b(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x1d

    return p0
.end method

.method public static final c(I)I
    .locals 1

    const v0, 0x1fffffff

    and-int/2addr p0, v0

    return p0
.end method
