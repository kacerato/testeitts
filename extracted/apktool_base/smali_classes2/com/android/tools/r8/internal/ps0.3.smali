.class public final enum Lcom/android/tools/r8/internal/ps0;
.super Lcom/android/tools/r8/internal/ss0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "LAZILY_PARSED_NUMBER"

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/ss0;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Number;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/rR;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->s()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/rR;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
