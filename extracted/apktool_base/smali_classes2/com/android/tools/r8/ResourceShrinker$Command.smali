.class public final Lcom/android/tools/r8/ResourceShrinker$Command;
.super Lcom/android/tools/r8/BaseCommand;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/ResourceShrinker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Command"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/utils/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCommand;-><init>(Lcom/android/tools/r8/utils/i;)V

    return-void
.end method


# virtual methods
.method public b()Lcom/android/tools/r8/internal/nJ;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/nJ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/nJ;-><init>()V

    return-object v0
.end method
