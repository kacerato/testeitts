.class public Lh/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:I

.field public static final b:I = 0x106000b

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I = 0x4

.field public static final g:F = 12.0f

.field public static final h:F = 64.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lg/b$d;->A:I

    sput v0, Lh/a$a;->a:I

    sget v0, Lg/b$d;->Q:I

    sput v0, Lh/a$a;->c:I

    sget v0, Lg/b$d;->P:I

    sput v0, Lh/a$a;->d:I

    sget v0, Lg/b$d;->R:I

    sput v0, Lh/a$a;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
