.class public final Lcom/android/tools/r8/internal/ee0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/hh0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/hh0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/ee0;->b:Lcom/android/tools/r8/internal/hh0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/ee0;->b:Lcom/android/tools/r8/internal/hh0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hh0;->a()Lcom/android/tools/r8/internal/bh0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/bh0;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' can not be processed. Skipping."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ee0;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
