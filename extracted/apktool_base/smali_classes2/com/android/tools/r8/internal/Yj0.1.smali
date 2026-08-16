.class public final Lcom/android/tools/r8/internal/Yj0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/android/tools/r8/references/ClassReference;

.field public final b:Ljava/util/OptionalInt;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Yj0;->b:Ljava/util/OptionalInt;

    return-void
.end method
