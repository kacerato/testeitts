.class public final Lcom/android/tools/r8/internal/Zj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceStackTraceContext;


# instance fields
.field public final a:Lcom/android/tools/r8/references/ClassReference;

.field public final b:Ljava/util/OptionalInt;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/references/ClassReference;Ljava/util/OptionalInt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Zj0;->a:Lcom/android/tools/r8/references/ClassReference;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Zj0;->b:Ljava/util/OptionalInt;

    return-void
.end method
