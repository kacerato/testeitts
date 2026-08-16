.class public final LA0/a$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LA0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final a:[I

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:[I

.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field public static final h:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const v0, 0x7f030227

    const v1, 0x7f030228

    const v2, 0x7f0300cb

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, LA0/a$f;->a:[I

    const v0, 0x7f0300fa

    const v1, 0x7f0303bc

    const v2, 0x7f030090

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, LA0/a$f;->e:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
