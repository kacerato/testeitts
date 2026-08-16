.class public final Lcom/android/tools/r8/internal/eg0;
.super Lcom/android/tools/r8/internal/ZQ;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ny;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/ig0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/ig0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/eg0;->b:Lcom/android/tools/r8/internal/ig0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/ZQ;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/eg0;->b:Lcom/android/tools/r8/internal/ig0;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/ig0;->a(Lcom/android/tools/r8/internal/ig0;Ljava/lang/String;)Lcom/android/tools/r8/internal/nl0;

    move-result-object p1

    return-object p1
.end method
