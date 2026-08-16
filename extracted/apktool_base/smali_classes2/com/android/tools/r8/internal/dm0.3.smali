.class public final Lcom/android/tools/r8/internal/dm0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/dm0;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Xl0;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/dm0;

    sget-object v1, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/dm0;-><init>(Lcom/android/tools/r8/internal/Xl0;I)V

    sput-object v0, Lcom/android/tools/r8/internal/dm0;->c:Lcom/android/tools/r8/internal/dm0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Xl0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/dm0;->a:Lcom/android/tools/r8/internal/Xl0;

    iput p2, p0, Lcom/android/tools/r8/internal/dm0;->b:I

    return-void
.end method
