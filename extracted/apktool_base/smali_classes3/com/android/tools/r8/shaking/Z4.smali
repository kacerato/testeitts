.class public final Lcom/android/tools/r8/shaking/Z4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/PrintStream;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/shaking/Z4;->b:I

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Z4;->a:Ljava/io/PrintStream;

    return-void
.end method
