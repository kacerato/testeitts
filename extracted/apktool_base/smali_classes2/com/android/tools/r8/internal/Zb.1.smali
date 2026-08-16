.class public final Lcom/android/tools/r8/internal/Zb;
.super Lcom/android/tools/r8/internal/Yb;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Yb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/Reader;
    .locals 2

    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Yb;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
