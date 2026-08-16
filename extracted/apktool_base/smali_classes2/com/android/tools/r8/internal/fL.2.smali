.class public final Lcom/android/tools/r8/internal/fL;
.super Lcom/android/tools/r8/internal/dL;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/fL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/fL;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/fL;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/fL;->b:Lcom/android/tools/r8/internal/fL;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/dL;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/android/tools/r8/internal/fL;

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const-class v0, Lcom/android/tools/r8/internal/fL;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
