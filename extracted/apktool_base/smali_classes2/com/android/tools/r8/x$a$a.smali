.class public Lcom/android/tools/r8/x$a$a;
.super Lcom/android/tools/r8/BaseCommand$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/x$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/BaseCommand$Builder<",
        "Lcom/android/tools/r8/x$a;",
        "Lcom/android/tools/r8/x$a$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/utils/i;->b()Lcom/android/tools/r8/utils/i$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;-><init>(Lcom/android/tools/r8/utils/i$a;)V

    return-void
.end method


# virtual methods
.method public final c()Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 0

    return-object p0
.end method

.method public final makeCommand()Lcom/android/tools/r8/BaseCommand;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintHelp()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/x$a;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintHelp()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/x$a;-><init>(Z)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/x$a;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/utils/i$a;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/x$a;-><init>(Lcom/android/tools/r8/utils/i;)V

    return-object v0
.end method
