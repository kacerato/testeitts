.class public Lcom/android/tools/r8/dex/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:Lcom/android/tools/r8/internal/Ib;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/tools/r8/dex/t;->a:[B

    sget-object v0, Lcom/android/tools/r8/internal/Ib;->g:Lcom/android/tools/r8/internal/Ib;

    sput-object v0, Lcom/android/tools/r8/dex/t;->b:Lcom/android/tools/r8/internal/Ib;

    return-void

    nop

    :array_0
    .array-data 1
        0x64t
        0x65t
        0x78t
        0xat
    .end array-data
.end method
