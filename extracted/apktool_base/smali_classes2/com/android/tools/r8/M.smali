.class public final Lcom/android/tools/r8/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ClassFileConsumer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/android/tools/r8/ByteDataView;Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Unexpected attempt to write a non-global artifact"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    return-void
.end method
