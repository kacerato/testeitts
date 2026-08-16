.class public final Lcom/android/tools/r8/naming/y0;
.super Lcom/android/tools/r8/utils/StringDiagnostic;
.source "SourceFile"


# static fields
.field public static final synthetic f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/r8/position/Position;)V
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    return-void
.end method
