.class public final Lcom/android/tools/r8/internal/Rh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/z30;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Rh;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/eL;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Rh;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/eL;-><init>(Ljava/lang/String;)V

    throw v0
.end method
