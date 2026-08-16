.class public final Lcom/android/tools/r8/internal/q80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/ProguardMapProducer;


# instance fields
.field public final a:Lcom/android/tools/r8/naming/b;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/naming/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/q80;->a:Lcom/android/tools/r8/naming/b;

    return-void
.end method


# virtual methods
.method public final get()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "Should never get on ProguardMapProducerInternal"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method
