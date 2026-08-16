.class public final Lcom/android/tools/r8/internal/UZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Tl0;


# static fields
.field public static final a:Lcom/android/tools/r8/internal/UZ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/UZ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/UZ;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/UZ;->a:Lcom/android/tools/r8/internal/UZ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/Supplier;)V
    .locals 1

    const-string v0, "f"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final close()V
    .locals 0

    return-void
.end method
