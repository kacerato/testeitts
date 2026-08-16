.class public final Lcom/android/tools/r8/synthesis/D;
.super Lcom/android/tools/r8/synthesis/C;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/synthesis/C;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/Collection;)V
    .locals 0

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Unexpected attempt to add globals to non-desugaring build."

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method
