.class public final Lcom/android/tools/r8/internal/Rv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/ProgramConsumer;

.field public final b:Lcom/android/tools/r8/AndroidResourceConsumer;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/ProgramConsumer;Lcom/android/tools/r8/AndroidResourceConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Rv;->a:Lcom/android/tools/r8/ProgramConsumer;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Rv;->b:Lcom/android/tools/r8/AndroidResourceConsumer;

    return-void
.end method
