.class public final Lcom/android/tools/r8/internal/io0;
.super Lcom/android/tools/r8/internal/Yn0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yn0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "([^\\d\\s\\[\\];:()<>][^\\s\\[\\];:()<>]*\\.)*[^\\d\\s\\[\\];:()<>][^\\s\\[\\];:()<>]*"

    return-object v0
.end method

.method public final b()Lcom/android/tools/r8/internal/Rn0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Rn0;->c:Lcom/android/tools/r8/internal/Rn0;

    return-object v0
.end method
