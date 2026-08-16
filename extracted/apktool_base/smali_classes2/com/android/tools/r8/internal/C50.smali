.class public final Lcom/android/tools/r8/internal/C50;
.super Lcom/android/tools/r8/internal/I50;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/I50;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/C50;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/C50;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "class"

    return-object v0
.end method
